---ONLY LOAD IF CAMPAIGN
if __game_mode ~= __lib_type_campaign then
    return
end

local wh_main_agents = require("script/rjay_libs/tables/rjay__rec_agents");
local culture = require("script/rjay_libs/tables/rjay__rec_culture");

controller = {
    processed = false,
}
function get_controlleer()
    return controller;
end

_G.get_controlleer = get_controlleer

--SETS LISTENERS AS PROCESSED
function controller:init()
    self.processed = true
end

--MAIN FUNCITION
function controller:main()
    --STARTS LISTENER ONLY IF NEW GAME OR NEVER PROCESSED
    if cm:is_new_game() or not self.processed then
        controller:init_listeners();
    end
end

function controller:init_listeners()
    --STARTS THE AGENTS CHECK TO SEE IF ALREADY UNLOCKED
    rjay_recruitment_listener();
    --STARTS THE CULTURE CHECK TO SEE IF CULTURE IS "DEAD" (FOR CONFEDERATED AGENTS)
    rjay_culture_eradicated_listener();
    self:init();
end

--GENERATES AGENT LISTENER
function rjay_recruitment_listener()
    core:add_listener("rjay_faction_controller", "FactionTurnStart", function(context)
        return context:faction():is_human()
    end, function(context)
        local player_faction = cm:model():world():faction_by_key(context:faction():name());
        for _, agent in pairs(wh_main_agents) do
            if not (agent.faction == player_faction:name()) and
                not cm:get_saved_value("rjay_" .. agent.subtype .. "_unlocked") then
                local faction = cm:model():world():faction_by_key(agent.faction);
                if faction:is_dead() and not faction:was_confederated() then
                    check_agent(player_faction, agent);
                end
            end
        end
    end, true);
end

--GENERATES CULTURE LISTENER
function rjay_culture_eradicated_listener()
    core:add_listener("rjay_culture_controller", "FactionTurnStart", function(context)
        return context:faction():is_human()
    end, function(context)
        local player_faction = cm:model():world():faction_by_key(context:faction():name());
        for index, table in ipairs(culture) do
            check_culture_alive(table, player_faction);
        end
    end, true)
end

--CHECKS IF CULTURE IS COMPLETLY "DEAD" (PLAYER DOES NOT COUNT) AND IF AGENT IS ALREADY UNLOCKED
---@param culture_table table
---@param player_faction FACTION_SCRIPT_INTERFACE
function check_culture_alive(culture_table, player_faction)
    local culture_dead = true;
    for i, value in ipairs(culture_table) do
        local faction = cm:model():world():faction_by_key(value);
        if (not faction:is_dead() and not faction:is_human()) then
            culture_dead = false;
        end
    end
    if (culture_dead) then
        for _, faction_key in ipairs(culture_table) do
            for _, agent in pairs(wh_main_agents) do
                if (agent["faction"] == faction_key) then
                    if (not cm:get_saved_value("rjay_" .. agent.subtype .. "_unlocked")) then
                        check_agent(player_faction, agent);
                    end
                end
            end
        end
    end
end


--CHECKS IF AGENT ALREADY ON PLAYER ROSTER. IF NOT AND PLAYER OWN AGENT REGION WILL CREATE A DILEMMA
---@param player_faction FACTION_SCRIPT_INTERFACE
---@param agent table
function check_agent(player_faction, agent)
    local char_found = false;
    local char_list = player_faction:character_list();
    for i = 1, char_list:num_items() - 1 do
        local current_char = char_list:item_at(i);
        if (current_char:character_subtype_key() == agent.subtype) then
            char_found = true;
        end
    end
    if not char_found then
        if (check_region(player_faction, agent)) then
            create_recruitment_dilemma(player_faction, agent);
        end
    end
end
--CHECKS PLAYER REGIONS TO SEE IF AGENT MAIN REGION IS OWNED BY PLAYER AND IF IS NOT UNDER SIEGE
---@param player_faction FACTION_SCRIPT_INTERFACE
---@param agent table
function check_region(player_faction, agent)
    local player_own = false;
    local region_list = player_faction:region_list();
    for i = 0, region_list:num_items() - 1 do
        local current_region = region_list:item_at(i);
        local under_siege = current_region:garrison_residence():is_under_siege();
        if (current_region:name() == agent.region) and not under_siege then
            player_own = true;
        end
    end
    return player_own;
end

--CREATES DILEMMA FOR AGENT RECRUITMENT
---@param player_faction FACTION_SCRIPT_INTERFACE
---@param agent table
function create_recruitment_dilemma(player_faction, agent)
    local dilemma_name = "rjay_recruitment_dilemma_" .. agent.subtype;
    local dilemma = cm:create_dilemma_builder(dilemma_name);
    --ACCEPT BUTTON
    local dilemma_first = cm:create_payload();
    dilemma_first:text_display("rjay_agent_unlock_accept");
    dilemma:add_choice_payload("FIRST", dilemma_first);
    --DECLINE BUTTON
    local dilemma_second = cm:create_payload();
    dilemma_second:text_display("rjay_agent_unlock_decline");
    dilemma:add_choice_payload("SECOND", dilemma_second);

    cm:launch_custom_dilemma_from_builder(dilemma, player_faction);
    --CREATES LISTENER
    core:add_listener("rjay_" .. agent.subtype .. "_unlocked", "DilemmaChoiceMadeEvent", function(context)
        return context:dilemma() == "rjay_recruitment_dilemma_" .. agent.subtype;
    end, function(context)
        local choice = context:choice_key();
        if choice == "FIRST" then
            --IF ACCEPTED ADD AGENT TO POOL
            cm:spawn_character_to_pool(player_faction:name(), agent.name, agent.lastname, "", "", 50, true, agent.type,
                agent.subtype, true, "");
        end
    end, false);

    cm:set_saved_value("rjay_" .. agent.subtype .. "_unlocked", true);
end

-- ******************************** CALLBACK FUNCTIONS ********************************

-- first tick callback is called as soon as game starts
cm:add_pre_first_tick_callback(function()
    controller:main();
end);
