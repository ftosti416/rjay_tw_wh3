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

   return culture;