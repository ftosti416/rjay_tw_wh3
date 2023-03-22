---ONLY LOAD IF CAMPAIGN
if __game_mode ~= __lib_type_campaign then
    return
end
---TODO:FIXME: CREATE CUSTOM NAMES SINCE ONLY CULTURE NAMES WILL SHOW UP
local wh_agents = {
    ---BRETONNIA------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh_main_brt_bretonnia", ["subtype"] = "wh_main_brt_louen_leoncouer", ["name"] = "names_name_2147343915", ["lastname"] = "names_name_2147343917", ["type"] = "general",  ["region"] = "wh3_main_combi_region_couronne"},
    {["faction"] = "wh_main_brt_bordeleaux", ["subtype"] = "wh_dlc07_brt_alberic", ["name"] = "names_name_2147345888", ["lastname"] = "names_name_1529663917", ["type"] = "general", ["region"] = "wh3_main_combi_region_temple_of_tlencan"},
    {["faction"] = "wh_main_brt_carcassonne", ["subtype"] = "wh_dlc07_brt_fay_enchantress", ["name"] = "names_name_2147358931", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_castle_carcassonne"},
    {["faction"] = "wh2_dlc14_brt_chevaliers_de_lyonesse", ["subtype"] = "wh2_dlc14_brt_repanse", ["name"] = "names_name_202782467", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_copher"},
    ------UNIQUE HEROES
    --{["faction"] = "wh2_dlc14_brt_chevaliers_de_lyonesse", ["subtype"] = "wh2_dlc14_brt_henri_le_massif", ["name"] = "names_name_1774059156", ["type"] = "champion", ["region"] = "wh3_main_combi_region_copher"}, --SAME AS REPANSE -- NOT WORKING
    ------------------------------------------------------------------------------------------

    ---GRAND CATHAY------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh3_main_cth_the_northern_provinces", ["subtype"] = "wh3_main_cth_miao_ying", ["name"] = "names_name_1909115770", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_nan_gau"},
    {["faction"] = "wh3_main_cth_the_western_provinces", ["subtype"] = "wh3_main_cth_zhao_ming", ["name"] = "names_name_806936419", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_qiang"},
    ------------------------------------------------------------------------------------------
    
    ---HIGH ELVES------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh2_main_hef_order_of_loremasters", ["subtype"] = "wh2_main_hef_teclis", ["name"] = "names_name_2147359256", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_fortress_of_dawn"},
    {["faction"] = "wh2_main_hef_eataine", ["subtype"] = "wh2_main_hef_tyrion", ["name"] = "names_name_2147360906", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_lothern"},
    {["faction"] = "wh2_main_hef_avelorn", ["subtype"] = "wh2_dlc10_hef_alarielle", ["name"] = "names_name_898828143", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_gaean_vale"},
    {["faction"] = "wh2_main_hef_nagarythe", ["subtype"] = "wh2_dlc10_hef_alith_anar", ["name"] = "names_name_1829581114", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_the_monoliths"},
    {["faction"] = "wh2_main_hef_yvresse", ["subtype"] = "wh2_dlc15_hef_eltharion", ["name"] = "names_name_2022469392", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_tor_yvresse"},
    {["faction"] = "wh2_dlc15_hef_imrik", ["subtype"] = "wh2_dlc15_hef_imrik", ["name"] = "names_name_106604727", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_the_fortress_of_vorag"},
    ------UNIQUE LORDS
    {["faction"] = "wh2_main_hef_eataine", ["subtype"] = "wh2_main_hef_prince_alastar", ["name"] = "names_name_2147360555", ["lastname"] = "names_name_2147360560", ["type"] = "general", ["region"] = "wh3_main_combi_region_lothern"}, --SAME AS TYRION
    ------------------------------------------------------------------------------------------

    ---KISLEV------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh3_main_ksl_the_great_orthodoxy", ["subtype"] = "wh3_main_ksl_kostaltyn", ["name"] = "names_name_1314872093", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_praag"},
    {["faction"] = "wh3_main_ksl_the_ice_court", ["subtype"] = "wh3_main_ksl_katarin", ["name"] = "names_name_1506497736", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_kislev"},
    {["faction"] = "wh3_main_ksl_ursun_revivalists", ["subtype"] = "wh3_main_ksl_boris", ["name"] = "names_name_1061845961", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_the_tower_of_torment"} --REGIONLESS START [CLOSEST REGION]
    ------------------------------------------------------------------------------------------

}
local brt_main_factions = {
    "wh2_dlc14_brt_chevaliers_de_lyonesse", "wh_main_brt_carcassonne", "wh_main_brt_bordeleaux", "wh_main_brt_bretonnia"
}
local cth_main_factions = {
    "wh3_main_cth_the_northern_provinces", "wh3_main_cth_the_northern_provinces"
}
local hef_main_factions = {
    "wh2_main_hef_order_of_loremasters", "wh2_main_hef_eataine", "wh2_main_hef_avelorn", "wh2_main_hef_nagarythe",
    "wh2_main_hef_yvresse", "wh2_dlc15_hef_imrik"
}
local ksl_main_factions = {
    "wh3_main_ksl_the_great_orthodoxy", "wh3_main_ksl_the_ice_court", "wh3_main_ksl_ursun_revivalists"
}

controller = {
    processed = false,
}
function get_controlleer()
    return controller;
end

_G.get_controlleer = get_controlleer

function controller:init()
    self.processed = true
end

function controller:main()
    if cm:is_new_game() or not self.processed then
        controller:init_listeners();
    end
end

function controller:init_listeners()
    rjay_recruitment_listener();
    rjay_culture_eradicated_listener();
    self:init();
end

function rjay_recruitment_listener()
    core:add_listener("rjay_faction_controller", "FactionTurnStart", function(context)
        return context:faction():is_human()
    end, function(context)
        local player_faction = cm:model():world():faction_by_key(context:faction():name());
        for _, agent in pairs(wh_agents) do
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

function rjay_culture_eradicated_listener()
    core:add_listener("rjay_culture_controller", "FactionTurnStart", function(context)
        return context:faction():is_human()
    end, function(context)
        local player_faction = cm:model():world():faction_by_key(context:faction():name());
        check_culture_alive(brt_main_factions, player_faction);
        check_culture_alive(cth_main_factions, player_faction);
        check_culture_alive(hef_main_factions, player_faction);
        check_culture_alive(ksl_main_factions, player_faction);
    end, true)
end

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
            for _, agent in pairs(wh_agents) do
                if (agent["faction"] == faction_key) then
                    if (not cm:get_saved_value("rjay_" .. agent.subtype .. "_unlocked")) then
                        check_agent(player_faction, agent);
                    end
                end
            end
        end
    end
end

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
        else
            create_recruitment_dilemma(player_faction, agent);
        end
    end
end

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
    --CREATE LISTENER
    core:add_listener("rjay_" .. agent.subtype .. "_unlocked", "DilemmaChoiceMadeEvent", function(context)
        return context:dilemma() == "rjay_recruitment_dilemma_" .. agent.subtype;
    end, function(context)
        local choice = context:choice_key();
        if choice == "FIRST" then
            --ACCEPTED
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
