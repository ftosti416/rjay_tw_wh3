local wh_main_agents = {
    ---BRETONNIA------------------------------------------------------------------------------------------
    ------LEGENDARY LORDS
    {["faction"] = "wh_main_brt_bretonnia", ["subtype"] = "wh_main_brt_louen_leoncouer", ["name"] = "", ["lastname"] = "", ["type"] = "general",  ["region"] = "wh3_main_combi_region_couronne"},
    {["faction"] = "wh_main_brt_bordeleaux", ["subtype"] = "wh_dlc07_brt_alberic", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_temple_of_tlencan"},
    {["faction"] = "wh_main_brt_carcassonne", ["subtype"] = "wh_dlc07_brt_fay_enchantress", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_castle_carcassonne"},
    {["faction"] = "wh2_dlc14_brt_chevaliers_de_lyonesse", ["subtype"] = "wh2_dlc14_brt_repanse", ["name"] = "", ["lastname"] = "", ["type"] = "general", ["region"] = "wh3_main_combi_region_copher"},
    ------UNIQUE HEROES
    {["faction"] = "wh2_dlc14_brt_chevaliers_de_lyonesse", ["subtype"] = "wh2_dlc14_brt_henri_le_massif", ["name"] = "names_name_1774059156", ["type"] = "champion", ["region"] = "wh3_main_combi_region_copher"}, --SAME AS REPANSE
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
    --BEL-KEC ----- NOT INCLUDED SINCE IS NOT REALLY A UNIQUE AGENT_SUBTYPE (HEF_PRINCESS SUBTYPE)  
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
    {["faction"] = "wh2_dlc13_emp_the_huntmarshals_expedition", ["subtype"] = "wh2_dlc13_emp_hunter_rodrik_l_anguille", ["name"] = "", ["lastname"] = "", ["type"] = "champion", ["region"] = "wh3_main_combi_region_temple_of_kara"}, --SAME AS MARKUS WULFHART
    {["faction"] = "wh2_dlc13_emp_the_huntmarshals_expedition", ["subtype"] = "wh2_dlc13_emp_hunter_doctor_hertwig_van_hal", ["name"] = "", ["lastname"] = "", ["type"] = "spy", ["region"] = "wh3_main_combi_region_temple_of_kara"}, --SAME AS MARKUS WULFHART
    {["faction"] = "wh2_dlc13_emp_the_huntmarshals_expedition", ["subtype"] = "wh2_dlc13_emp_hunter_kalara_of_wydrioth", ["name"] = "", ["lastname"] = "", ["type"] = "spy", ["region"] = "wh3_main_combi_region_temple_of_kara"}, --SAME AS MARKUS WULFHART
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

return wh_main_agents;