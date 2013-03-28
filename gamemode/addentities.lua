AddEntity("Drug lab", {
	ent = "drug_lab",
	model = "models/props_lab/crematorcase.mdl",
	price = 400,
	max = 3,
	cmd = "/buydruglab",
	allowed = {TEAM_BGANG, TEAM_BLEADER, TEAM_CLEADER, TEAM_CGANG}
})

AddEntity("Gun lab", {
	ent = "gunlab",
	model = "models/props_c17/TrapPropeller_Engine.mdl",
	price = 500,
	max = 1,
	cmd = "/buygunlab",
	allowed = {TEAM_GUN}
})

-- Gemstone Printers
 
AddEntity("Topaz Printer", {
        ent = "topaz_money_printer",
        model = "models/props_c17/consolebox01a.mdl",
        price = 1000,
        max = 2,
        cmd = "/buytopaz"
})
 
AddEntity("Amethyst Printer", {
        ent = "amethyst_money_printer",
        model = "models/props_c17/consolebox01a.mdl",
        price = 1500,
        max = 2,
        cmd = "/buyamethyst"
})
 
AddEntity("Emerald Printer", {
        ent = "emerald_money_printer",
        model = "models/props_c17/consolebox01a.mdl",
        price = 2500,
        max = 2,
        cmd = "/buyemerald"
})
 
AddEntity("Ruby Printer", {
        ent = "ruby_money_printer",
        model = "models/props_c17/consolebox01a.mdl",
        price = 5000,
        max = 2,
        cmd = "/buyruby",
        customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
})
 
AddEntity("Sapphire Printer", {
        ent = "sapphire_money_printer",
        model = "models/props_c17/consolebox01a.mdl",
        price = 7500,
        max = 2,
        cmd = "/buysapphire",
        customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
})
-- ADD CUSTOM SHIPMENTS HERE(next line):
-- CS:S Realistic Weps
AddCustomShipment("M249", "models/weapons/w_mach_m249para.mdl", "weapon_real_cs_m249", 6000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Galil", "models/weapons/w_rif_galil.mdl", "weapon_real_cs_galil", 4000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("AK47", "models/weapons/w_rif_ak47.mdl", "weapon_real_cs_ak47", 4000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("M4A1", "models/weapons/w_rif_m4a1.mdl", "weapon_real_cs_m4a1", 3900, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Famas", "models/weapons/w_rif_famas.mdl", "weapon_real_cs_famas", 3900, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("AWP", "models/weapons/w_snip_awp.mdl", "weapon_real_cs_awp", 5000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Scout", "models/weapons/w_snip_scout.mdl", "weapon_real_cs_scout", 4500, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("SteyrAug", "models/weapons/w_rif_aug.mdl", "weapon_real_cs_aug", 4000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("SG552", "models/weapons/w_rif_sg552.mdl", "weapon_real_cs_sg552", 4000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("G3SG1", "models/weapons/w_snip_g3sg1.mdl", "weapon_real_cs_g3sg1", 4000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("SG550", "models/weapons/w_snip_sg550.mdl", "weapon_real_cs_sg550", 4000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("UMP45", "models/weapons/w_smg_ump45.mdl", "weapon_real_cs_ump_45", 3600, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("P90", "models/weapons/w_smg_p90.mdl", "weapon_real_cs_p90", 3500, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("MP5", "models/weapons/w_smg_mp5.mdl", "weapon_real_cs_mp5a5", 3200, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Mac10", "models/weapons/w_smg_mac10.mdl", "weapon_real_cs_mac10", 3000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("AutoShotgun", "models/weapons/w_shot_xm1014.mdl", "weapon_real_cs_xm1014", 3000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Shotgun", "models/weapons/w_shot_m3super90.mdl", "weapon_real_cs_pumpshotgun", 2500, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Grenade", "models/weapons/w_eq_fraggrenade.mdl", "weapon_real_cs_grenade", 15000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Flash", "models/weapons/w_eq_flashbang_thrown.mdl", "weapon_real_cs_flash", 2000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Smoke", "models/weapons/w_eq_smokegrenade.mdl", "weapon_real_cs_smoke", 2000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("DualElites", "models/weapons/w_pist_elite_dropped.mdl", "weapon_real_cs_elites", 2300, 10, true, 250, false, {TEAM_GUN})
AddCustomShipment("Deagle", "models/weapons/w_pist_deagle.mdl", "weapon_real_cs_desert_eagle", 2300, 10, true, 250, false, {TEAM_GUN})
AddCustomShipment("USP", "models/weapons/w_pist_usp.mdl", "weapon_real_cs_usp", 2200, 10, true, 240, false, {TEAM_GUN})
AddCustomShipment("P228", "models/weapons/w_pist_p228.mdl", "weapon_real_cs_p228", 2100, 10, true, 220, false, {TEAM_GUN})
AddCustomShipment("Glock", "models/weapons/w_pist_glock18.mdl", "weapon_real_cs_glock18", 2000, 10, true, 210, false, {TEAM_GUN})
AddCustomShipment("FiveSeven", "models/weapons/w_pist_fiveseven.mdl", "weapon_real_cs_five-seven", 1900, 10, true, 200, false, {TEAM_GUN})

--Drugz
AddCustomShipment("Alcohol", "models/drug_mod/alcohol_can.mdl", "durgz_alcohol", 500, 5, false, 0, false, {TEAM_BAR})
AddCustomShipment("Asprin", "models/jaanus/aspbtl.mdl", "durgz_asprin", 500, 5, false, 0, false, {TEAM_MEDIC})
AddCustomShipment("Cigarette", "models/boxopencigshib.mdl", "durgz_cigarette", 500, 5, false, 0, false, {TEAM_BAR})
AddCustomShipment("Cocane", "models/cocn.mdl", "durgz_cocane", 500, 5, false, 0, false, {TEAM_DRUG})
AddCustomShipment("Heroin", "models/katharsmodels/syringe_out/syringe_out.mdl", "durgz_heroine", 500, 5, false, 0, false, {TEAM_DRUG})
AddCustomShipment("LSD", "models/smile/smile.mdl", "durgz_lsd", 500, 5, false, 0, false, {TEAM_DRUG})
AddCustomShipment("Mushrooms", "models/ipha/mushroom_small.mdl", "durgz_mushroom", 500, 5, false, 0, false, {TEAM_DRUG})
AddCustomShipment("Water", "models/drug_mod/the_bottle_of_water.mdl", "durgz_water", 500, 5, false, 0, false, {TEAM_BAR, TEAM_DRUG})
AddCustomShipment("Weed", "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl", "durgz_weed", 500, 5, false, 0, false, {TEAM_DRUG})

AddCustomShipment("Alcohol (SINGLE)", "models/drug_mod/alcohol_can.mdl", "durgz_alcohol", 100, 1, false, 0, false, {TEAM_BAR})
AddCustomShipment("Asprin (SINGLE)", "models/jaanus/aspbtl.mdl", "durgz_asprin", 100, 1, false, 0, false, {TEAM_MEDIC})
AddCustomShipment("Cigarette (SINGLE)", "models/boxopencigshib.mdl", "durgz_cigarette", 100, 1, false, 0, false, {TEAM_BAR})
AddCustomShipment("Cocane (SINGLE)", "models/cocn.mdl", "durgz_cocane", 100, 1, false, 0, false, {TEAM_DRUG})
AddCustomShipment("Heroin (SINGLE)", "models/katharsmodels/syringe_out/syringe_out.mdl", "durgz_heroine", 100, 1, false, 0, false, {TEAM_DRUG})
AddCustomShipment("LSD (SINGLE)", "models/smile/smile.mdl", "durgz_lsd", 100, 1, false, 0, false, {TEAM_DRUG})
AddCustomShipment("Mushrooms (SINGLE)", "models/ipha/mushroom_small.mdl", "durgz_mushroom", 100, 1, false, 0, false, {TEAM_DRUG})
AddCustomShipment("Water (SINGLE)", "models/drug_mod/the_bottle_of_water.mdl", "durgz_water", 100, 1, false, 0, false, {TEAM_BAR, TEAM_DRUG})
AddCustomShipment("Weed (SINGLE)", "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl", "durgz_weed", 100, 1, false, 0, false, {TEAM_DRUG})