---ONLY LOAD IF CAMPAIGN
if __game_mode ~= __lib_type_campaign then
    return
end
---TODO:FIXME: CREATE CUSTOM NAMES SINCE ONLY CULTURE NAMES WILL SHOW UP
local wh_agents = {
    ---BRETONNIA------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh_main_brt_bretonnia", ["subtype"] = "wh_main_brt_louen_leoncouer", ["name"] = "", ["lastname"] = "", ["type"] = "general",  ["region"] = "wh3_main_combi_region_couronne"},
    {["faction"] = "wh_main_brt_bordeleaux", ["subtype"] = "wh_dlc07_brt_alberic", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_temple_of_tlencan"},
    {["faction"] = "wh_main_brt_carcassonne", ["subtype"] = "wh_dlc07_brt_fay_enchantress", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_castle_carcassonne"},
    {["faction"] = "wh2_dlc14_brt_chevaliers_de_lyonesse", ["subtype"] = "wh2_dlc14_brt_repanse", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_copher"},
    ------UNIQUE HEROES
    --{["faction"] = "wh2_dlc14_brt_chevaliers_de_lyonesse", ["subtype"] = "wh2_dlc14_brt_henri_le_massif", ["name"] = "names_name_1774059156", ["type"] = "champion", ["region"] = "wh3_main_combi_region_copher"}, --SAME AS REPANSE -- NOT WORKING
    ------------------------------------------------------------------------------------------

    ---GRAND CATHAY------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh3_main_cth_the_northern_provinces", ["subtype"] = "wh3_main_cth_miao_ying", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_nan_gau"},
    {["faction"] = "wh3_main_cth_the_western_provinces", ["subtype"] = "wh3_main_cth_zhao_ming", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_qiang"},
    ------------------------------------------------------------------------------------------
    
    ---HIGH ELVES------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh2_main_hef_order_of_loremasters", ["subtype"] = "wh2_main_hef_teclis", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_fortress_of_dawn"},
    {["faction"] = "wh2_main_hef_eataine", ["subtype"] = "wh2_main_hef_tyrion", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_lothern"},
    {["faction"] = "wh2_main_hef_avelorn", ["subtype"] = "wh2_dlc10_hef_alarielle", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_gaean_vale"},
    {["faction"] = "wh2_main_hef_nagarythe", ["subtype"] = "wh2_dlc10_hef_alith_anar", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_the_monoliths"},
    {["faction"] = "wh2_main_hef_yvresse", ["subtype"] = "wh2_dlc15_hef_eltharion", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_tor_yvresse"},
    {["faction"] = "wh2_dlc15_hef_imrik", ["subtype"] = "wh2_dlc15_hef_imrik", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_the_fortress_of_vorag"},
    ------UNIQUE LORDS
    {["faction"] = "wh2_main_hef_eataine", ["subtype"] = "wh2_main_hef_prince_alastar", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_lothern"}, --SAME AS TYRION
    --BEL-KEC
    ------------------------------------------------------------------------------------------

    ---KISLEV------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh3_main_ksl_the_great_orthodoxy", ["subtype"] = "wh3_main_ksl_kostaltyn", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_praag"},
    {["faction"] = "wh3_main_ksl_the_ice_court", ["subtype"] = "wh3_main_ksl_katarin", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_kislev"},
    {["faction"] = "wh3_main_ksl_ursun_revivalists", ["subtype"] = "wh3_main_ksl_boris", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_the_tower_of_torment"}, --REGIONLESS START [CLOSEST REGION]
    ------------------------------------------------------------------------------------------

    ---THE EMPIRE------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh_main_emp_empire", ["subtype"] = "wh_main_emp_karl_franz", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_altdorf"},
    {["faction"] = "wh2_dlc13_emp_golden_order", ["subtype"] = "wh_main_emp_balthasar_gelt", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_pfeildorf"},
    {["faction"] = "wh3_main_emp_cult_of_sigmar", ["subtype"] = "wh_dlc04_emp_volkmar", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_sudenburg"},
    {["faction"] = "wh2_dlc13_emp_the_huntmarshals_expedition", ["subtype"] = "wh2_dlc13_emp_cha_markus_wulfhart", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_temple_of_kara"},
    ------UNIQUE LORDS
    {["faction"] = "wh_main_emp_middenland", ["subtype"] = "wh_dlc03_emp_boris_todbringer", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_middenheim"},
    ------UNIQUE HEROES
    --{["faction"] = "wh2_dlc13_emp_the_huntmarshals_expedition", ["subtype"] = "wh2_dlc13_emp_hunter_jorek_grimm", ["name"] = "", ["lastname"] = "", ["type"] = "engineer", ["region"] = "wh3_main_combi_region_temple_of_kara"}, --SAME AS MARKUS WULFHART
    --{["faction"] = "wh2_dlc13_emp_the_huntmarshals_expedition", ["subtype"] = "wh2_dlc13_emp_hunter_rodrik_l_anguille", ["name"] = "", ["lastname"] = "", ["type"] = "champion", ["region"] = "wh3_main_combi_region_temple_of_kara"}, --SAME AS MARKUS WULFHART
    --{["faction"] = "wh2_dlc13_emp_the_huntmarshals_expedition", ["subtype"] = "wh2_dlc13_emp_hunter_doctor_hertwig_van_hal", ["name"] = "", ["lastname"] = "", ["type"] = "spy", ["region"] = "wh3_main_combi_region_temple_of_kara"}, --SAME AS MARKUS WULFHART
    --{["faction"] = "wh2_dlc13_emp_the_huntmarshals_expedition", ["subtype"] = "wh2_dlc13_emp_hunter_kalara_of_wydrioth", ["name"] = "", ["lastname"] = "", ["type"] = "spy", ["region"] = "wh3_main_combi_region_temple_of_kara"}, --SAME AS MARKUS WULFHART
    ------------------------------------------------------------------------------------------

    ---WOOD ELVES------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh_dlc05_wef_wood_elves", ["subtype"] = "wh_dlc05_wef_orion", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_kings_glade"},
    {["faction"] = "wh_dlc05_wef_argwylon", ["subtype"] = "wh_dlc05_wef_durthu", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_waterfall_palace"},
    {["faction"] = "wh2_dlc16_wef_sisters_of_twilight", ["subtype"] = "wh2_dlc16_wef_sisters_of_twilight", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_the_witchwood"},
    {["faction"] = "wh2_dlc16_wef_drycha", ["subtype"] = "wh2_dlc16_wef_drycha", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_gryphon_wood"},
    ------LEGENDARY HEROES
    --{["faction"] = "wh2_dlc16_wef_sisters_of_twilight", ["subtype"] = "wh2_dlc16_wef_ariel", ["name"] = "", ["lastname"] = "", ["type"] = "wizard", ["region"] = "wh3_main_combi_region_the_witchwood"}, --SAME AS SISTERS OF TWILIGHT
    --{["faction"] = "wh2_dlc16_wef_drycha", ["subtype"] = "wh2_dlc16_wef_coeddil", ["name"] = "", ["lastname"] = "", ["type"] = "champion", ["region"] = "wh3_main_combi_region_gryphon_wood"}, --SAME AS DRYCHA
    ------------------------------------------------------------------------------------------

}
-- COUNTING ONLY MAIN FACTION SINCE USUALLY THE ONLY ONE TO CONFEDERATE
-- MINOR FACTION WITH UNIQUE AGENTS ARE ALSO ADDED TO THE CULTURE TABLE
local culture = {
 ["brt"] = {"wh2_dlc14_brt_chevaliers_de_lyonesse", "wh_main_brt_carcassonne", "wh_main_brt_bordeleaux", "wh_main_brt_bretonnia"},
 ["cth"] = {"wh3_main_cth_the_northern_provinces", "wh3_main_cth_the_northern_provinces"},
 ["hef"] = {"wh2_main_hef_order_of_loremasters", "wh2_main_hef_eataine", "wh2_main_hef_avelorn", "wh2_main_hef_nagarythe","wh2_main_hef_yvresse", "wh2_dlc15_hef_imrik"},
 ["ksl"] = {"wh3_main_ksl_the_great_orthodoxy", "wh3_main_ksl_the_ice_court", "wh3_main_ksl_ursun_revivalists"},
 ["emp"] = {"wh_main_emp_empire","wh2_dlc13_emp_golden_order", "wh3_main_emp_cult_of_sigmar", "wh2_dlc13_emp_the_huntmarshals_expedition","wh_main_emp_middenland"},
 ["wef"] = {"wh_dlc05_wef_wood_elves", "wh_dlc05_wef_argwylon", "wh2_dlc16_wef_sisters_of_twilight", "wh2_dlc16_wef_drycha"}
}
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
