/*--------------------------------------------------------
Default teams. If you make a team above the citizen team, people will spawn with that team!
--------------------------------------------------------*/
TEAM_CITIZEN = AddExtraTeam("Citizen", {
        color = Color(20, 150, 20, 255),
        model = {
                "models/player/Group01/Female_01.mdl",
                "models/player/Group01/Female_02.mdl",
                "models/player/Group01/Female_03.mdl",
                "models/player/Group01/Female_04.mdl",
                "models/player/Group01/Female_06.mdl",
                "models/player/group01/male_01.mdl",
                "models/player/Group01/Male_02.mdl",
                "models/player/Group01/male_03.mdl",
                "models/player/Group01/Male_04.mdl",
                "models/player/Group01/Male_05.mdl",
                "models/player/Group01/Male_06.mdl",
                "models/player/Group01/Male_07.mdl",
                "models/player/Group01/Male_08.mdl",
                "models/player/Group01/Male_09.mdl"
        },
        description = [[
        
        Donator Job: No
        
        The Citizen is the most basic level of society you can hold
        besides being a hobo.
        You have no specific role in city life.]],
        weapons = {},
        command = "citizen",
        max = 0,
        salary = 0,
        admin = 0,
        vote = false,
        hasLicense = false
})
 
TEAM_POLICE = AddExtraTeam("Civil Protection", {
        color = Color(25, 25, 170, 255),
        model = "models/player/police.mdl",
        description = [[
        
        Donator Job: No
        Government Job: Yes
        
        The protector of every citizen that lives in the city .
        You have the power to arrest criminals and protect innocents.
        Hit them with your arrest baton to put them in jail
        Bash them with a stunstick and they might learn better than to disobey
        the law.
        The Battering Ram can break down the door of a criminal with a warrant
        for his/her arrest.
        The Battering Ram can also unfreeze frozen props(if enabled).
        Type /wanted <name> to alert the public to this criminal
        OR go to tab and warrant someone by clicking the warrant button]],
        weapons = {"arrest_stick", "unarrest_stick", "weapon_real_cs_glock18", "stunstick", "door_ram", "weaponchecker"},
        command = "cp",
        max = 6,
        salary = 65,
        admin = 0,
        vote = true,
        hasLicense = true,
        help = LANGUAGE.cophelp
})
 
TEAM_CGANG = AddExtraTeam("Crips Gangster", {
        color = Color(255, 153, 0, 255),
        model = {
                "models/player/Group03/Female_01.mdl",
                "models/player/Group03/Female_02.mdl",
                "models/player/Group03/Female_03.mdl",
                "models/player/Group03/Female_04.mdl",
                "models/player/Group03/Female_06.mdl",
                "models/player/group03/male_01.mdl",
                "models/player/Group03/Male_02.mdl",
                "models/player/Group03/male_03.mdl",
                "models/player/Group03/Male_04.mdl",
                "models/player/Group03/Male_05.mdl",
                "models/player/Group03/Male_06.mdl",
                "models/player/Group03/Male_07.mdl",
                "models/player/Group03/Male_08.mdl",
                "models/player/Group03/Male_09.mdl"},
        description = [[
        
        Donator Job: No
        
        The lowest person of crime.
        A Crips gangster generally works for the Crip Leader who runs the Crips gang.
        The Crip leader sets your agenda and you follow it or you might be punished.]],
        weapons = {},
        command = "cgangster",
        max = 5,
        salary = 20,
        admin = 0,
        vote = false,
        hasLicense = false
})
 
TEAM_CLEADER = AddExtraTeam("Crips Leader", {
        color = Color(255, 102, 0, 255),
        model = "models/player/t_guerilla",
        description = [[
        
        Donator Job: No
        
        The Mobboss is the boss of the criminals in the city.
        With his power he coordinates the gangsters and forms an efficent crime
        organization.
        He has the ability to break into houses by using a lockpick.
        The Mobboss also can unarrest you.]],
        weapons = {"lockpick", "unarrest_stick", "weapon_real_cs_five-seven"},
        command = "cleader",
        max = 1,
        salary = 60,
        admin = 0,
        vote = true,
        hasLicense = false,
        help = LANGUAGE.bosshelp
})
 
TEAM_GUN = AddExtraTeam("Gun Dealer", {
        color = Color(255, 140, 0, 255),
        model = "models/player/monk.mdl",
        description = [[
        
        Donator Job: No
        
        A gun dealer is the only person who can sell guns to other
        people.
        However, make sure you aren't caught selling guns that are illegal to
        the public.
        /Buyshipment <name> to Buy a  weapon shipment
        /Buygunlab to Buy a gunlab that spawns P228 pistols]],
        weapons = {},
        command = "hgundealer",
        max = 3,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = true
})
 
TEAM_MEDIC = AddExtraTeam("Medic", {
        color = Color(47, 79, 79, 255),
        model = "models/player/kleiner.mdl",
        description = [[
        
        Donator Job: No
        
        With your medical knowledge,
        you heal players to proper
        health.
        Without a medic, people can not be healed.
        Left click with the Medical Kit to heal other players.
        Right click with the Medical Kit to heal yourself.]],
        weapons = {"med_kit"},
        command = "medic",
        max = 3,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false
})
 
TEAM_CHIEF = AddExtraTeam("Civil Protection Chief", {
        color = Color(20, 20, 255, 255),
        model = "models/player/combine_soldier_prisonguard.mdl",
        description = [[
        Donator Job: No
        
       Government Job: Yes
        
        The Chief is the leader of the Civil Protection unit.
        Coordinate the police forces to bring law to the city
        Hit them with arrest baton to put them in jail
        Bash them with a stunstick and they might learn better than to
        disobey the law.
        The Battering Ram can break down the door of a criminal with a
        warrant for his/her arrest.
        Type /wanted <name> to alert the public to this criminal
        Type /jailpos to set the Jail Position]],
        weapons = {"arrest_stick", "unarrest_stick", "weapon_real_cs_desert_eagle", "weapon_real_cs_pumpshotgun", "stunstick", "door_ram", "weaponchecker"},
        command = "chief",
        max = 1,
        salary = 85,
        admin = 0,
        vote = false,
        hasLicense = true,
        NeedToChangeFrom = TEAM_POLICE,
        help = LANGUAGE.cophelp
})

TEAM_MAYOR = AddExtraTeam("Mayor", {
        color = Color(150, 20, 20, 255),
        model = "models/player/breen.mdl",
        description = [[
        
        Donator Job: No
        Government Job: Yes
        
        The Mayor of the city creates laws to serve the greater 
        good of the people.
        If you are the mayor you may create and accept warrants.
        Type /wanted <name>  to warrant a player
        Type /jailpos to set the Jail Position
        Type /lockdown initiate a lockdown of the city.
        Everyone must be inside during a lockdown.
        The cops patrol the area
        /unlockdown to end a lockdown]],
        weapons = {unarrest_stick},
        command = "mayor",
        max = 1,
        salary = 130,
        admin = 0,
        vote = true,
        hasLicense = false,
        help = LANGUAGE.mayorhelp
})
 
TEAM_HOBO = AddExtraTeam("Hobo", {
        color = Color(80, 45, 0, 255),
        model = "models/player/corpse1.mdl",
        description = [[
        
        Donator Job: No
        
        The lowest member of society. All people see you laugh.
        You have no home.
        Beg for your food and money
        Sing for everyone who passes to get money
        Make your own wooden home somewhere in a corner or
        outside someone else's door.
		You cannot own doors.]],
        weapons = {"weapon_bugbait"},
        command = "hobo",
        max = 5,
        salary = 0,
        admin = 0,
        vote = false,
        hasLicense = false
})
 
//ADD CUSTOM TEAMS UNDER THIS LINE:
 
TEAM_DTHEIF = AddExtraTeam("Master Theif", {
        color = Color(0, 0, 0, 255),
        model = "models/player/arctic.mdl",
        description = [[
        
        Donator Job: Yes
        
        A Master Theif is the leader of the thieves.  You can control what
        they do and set agenda's for them.  You can raid homes by typing
        /advert raid in chat.]],
        weapons = {"climb_swep2", "lockpick", "keypad_cracker"},
        command = "mastertheif",
        max = 1,
        salary = 15,
        admin = 0,
        vote = false,
        hasLicense = false,
        customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
        CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_SWAT = AddExtraTeam("SWAT", {
        color = Color(0, 0, 102, 255),
        model = "models/player/swat.mdl",
        description = [[
        
        Donator Job: No
        Government Job: Yes
        
        SWAT's are there to back-up CP's in raids and criminal
        activities.]],
        weapons = {"door_ram", "weaponchecker", "arrest_stick", "unarrest_stick", "stunstick", "weapon_real_cs_glock18", "weapon_real_cs_mp5a5"},
        command = "Swat",
        max = 3,
        salary = 65,
        admin = 0,
        vote = true,
        hasLicense = true,
})

TEAM_DSWAT = AddExtraTeam("Elite SWAT", {
        color = Color(0, 0, 102, 255),
        model = "models/player/riot.mdl",
        description = [[
        
        Donator Job: Yes
        Government Job: No
        
        Elite SWAT is the heavier armed version of SWAT, 
        protect the people and aid CP's.]],
        weapons = {"door_ram", "weaponchecker", "arrest_stick", "unarrest_stick", "stunstick", "weapon_real_cs_desert_eagle", "weapon_real_cs_m4a1"},
        command = "DSwat",
        max = 2,
        salary = 75,
        admin = 0,
        vote = false,
        hasLicense = true,
        customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
        CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_SECSERV = AddExtraTeam("Secret Service", {
        color = Color(153, 0, 0, 255),
        model = "models/player/urban.mdl",
        description = [[
        
        Donator Job: Yes
        Government Job: No
       
        Secret Service's devote their lives to strictly protecting the 
        mayor and will do anything to keep the mayor safe.  You 
        cannot help in raids with CP's and SWAT.  
        Abusing the taser will get you banned from the 
        Secret Service class and/or banned from the server.]],
        weapons = {"weaponchecker", "arrest_stick", "unarrest_stick", "stunstick", "weapon_real_cs_p90", "weapon_taser"},
        command = "secserv",
        max = 2,
        salary = 75,
        admin = 0,
        vote = false,
        hasLicense = true,
        customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
        CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_HIT = AddExtraTeam("Hitman", {
        color = Color(102, 102, 102, 255),
        model = {
                "models/player/Group01/Female_01.mdl",
                "models/player/Group01/Female_02.mdl",
                "models/player/Group01/Female_03.mdl",
                "models/player/Group01/Female_04.mdl",
                "models/player/Group01/Female_06.mdl",
                "models/player/group01/male_01.mdl",
                "models/player/Group01/Male_02.mdl",
                "models/player/Group01/male_03.mdl",
                "models/player/Group01/Male_04.mdl",
                "models/player/Group01/Male_05.mdl",
                "models/player/Group01/Male_06.mdl",
                "models/player/Group01/Male_07.mdl",
                "models/player/Group01/Male_08.mdl",
                "models/player/Group01/Male_09.mdl"
        },
        description = [[
        
        Donator Job: No
        
        As a hitman you are the server's assasin.
        Kill people and earn money off of it.
        You also have the same player model as a citizen so
        you can easily blend and reduce the chances of you getting
        caught.
        ]],
        weapons = {"weapon_real_cs_scout"},
        command = "hitman",
        max = 2,
        salary = 15,
        admin = 0,
        vote = true,
        hasLicense = false,
})

TEAM_RAPE = AddExtraTeam("Rapist", {
        color = Color(255, 153, 255, 255),
        model = "models/player/mossman.mdl",
        description = [[
        
        Donator Job: Yes
        
        Rape bitches, steal drugs, have fun.]],
        weapons = {"weapon_rape"},
        command = "rapist",
        max = 1,
        salary = 30,
        admin = 0,
        vote = false,
        hasLicense = false,
        customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
        CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_BANKER = AddExtraTeam("Banker", {
        color = Color(102, 204, 255, 255),
        model = "models/player/hostage/hostage_03.mdl",
        description = [[
        
        Donator Job: No
        
        A banker can store money printers legally.
        Make loans to people but be careful for people
        that try to raid you!]],
        weapons = {},
        command = "banker",
        max = 1,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
})

TEAM_BLEADER = AddExtraTeam("Bloods Gang Leader", {
        color = Color(255, 0, 0, 255),
        model = "models/player/leet.mdl",
        description = [[
        
        Donator Job: No
        
        You are the leader of the ruthless bloods gang.  Your job is to
        create an large enough gang which can overthrow the cops.
        You can raid with other gang members or do it alone.]],
        weapons = {"lockpick", "unarrest_stick", "weapon_real_cs_five-seven"},
        command = "bleader",
        max = 1,
        salary = 60,
        admin = 0,
        vote = true,
        hasLicense = false,
        help = LANGUAGE.bosshelp
})

TEAM_BGANG = AddExtraTeam("Blood Gangster", {
        color = Color(255, 0, 0, 255),
        model = "models/player/phoenix.mdl",
        description = [[
        
        Donator Job: No
        
        You are a gangster for the bloods.
        Do what your leader says.]],
        weapons = {},
        command = "bgangster",
        max = 5,
        salary = 20,
        admin = 0,
        vote = false,
        hasLicense = false,
})

TEAM_THEIF = AddExtraTeam("Theif", {
        color = Color(255, 255, 0, 255),
        model = "models/player/arctic.mdl",
        description = [[
        
        Donator Job: No
        
        As a theif you can raid people's homes by
        /advert raid before you do it.]],
        weapons = {"keypad_cracker", "lockpick"},
        command = "theif",
        max = 3,
        salary = 30,
        admin = 0,
        vote = false,
        hasLicense = false,
})

TEAM_GUARD = AddExtraTeam("Guard", {
        color = Color(204, 51, 204, 255),
        model = "models/player/barney.mdl",
        description = [[
        
        Donator Job: No
        
        As a guard you are paid to defend someone's
        property.
		You cannot guard anyone affiliated with the government.]],
        weapons = {"weapon_real_cs_five-seven", "stunstick"},
        command = "guard",
        max = 4,
        salary = 40,
        admin = 0,
        vote = true,
        hasLicense = true,
})
TEAM_DHIT = AddExtraTeam("Pro Hitman", {
        color = Color(102, 102, 102, 255),
        model = {
                "models/player/Group01/Female_01.mdl",
                "models/player/Group01/Female_02.mdl",
                "models/player/Group01/Female_03.mdl",
                "models/player/Group01/Female_04.mdl",
                "models/player/Group01/Female_06.mdl",
                "models/player/group01/male_01.mdl",
                "models/player/Group01/Male_02.mdl",
                "models/player/Group01/male_03.mdl",
                "models/player/Group01/Male_04.mdl",
                "models/player/Group01/Male_05.mdl",
                "models/player/Group01/Male_06.mdl",
                "models/player/Group01/Male_07.mdl",
                "models/player/Group01/Male_08.mdl",
                "models/player/Group01/Male_09.mdl"
        },
        description = [[
        
        Donator Job: Yes
        
        As a hitman you are the server's assasin.
        Kill people and earn money off of it.
        You also have the same player model as a citizen so
        you can easily blend and reduce the chances of you getting
        caught.
        ]],
        weapons = {"weapon_real_cs_scout", "weapon_real_cs_usp", "weapon_real_cs_knife"},
        command = "dhitman",
        max = 1,
        salary = 30,
        admin = 0,
        vote = false,
        hasLicense = false,
        customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
        CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_DRUG = AddExtraTeam("Drug Dealer", {
        color = Color(51, 51, 0, 255),
        model = "models/player/odessa.mdl",
        description = [[
        
        Donator Job: No
        
        Sell them drugs to the public.
        Avoid Police!]],
        weapons = {},
        command = "drug",
        max = 3,
        salary = 20,
        admin = 0,
        vote = false,
        hasLicense = false,
})

TEAM_BAR = AddExtraTeam("Bartender", {
        color = Color(51, 204, 153, 255),
        model = "models/player/alyx.mdl",
        description = [[
        
                 Donator Job: No
        
                 You're a bartender!  Make a bar and sell stuff!]],
        weapons = {},
        command = "bar",
        max = 3,
        salary = 20,
        admin = 0,
        vote = false,
        hasLicense = false,
})

TEAM_SSWAT = AddExtraTeam("SWAT Sniper", {
        color = Color(0, 0, 102, 255),
		model = "models/player/gasmask.mdl",
		description = [[
		
		Donator Job: Yes
		Government Job: Yes
		
		As a SWAT Sniper you overlook incidents from a distance.
		You are needed to cover police while they raid.]],
		weapons = {"weapon_real_cs_awp", "weapon_real_cs_usp", "arrest_stick", "unarrest_stick", "weaponchecker"},
		command = "sswat",
		max = 2,
		salary = 75,
		admin = 0,
		vote = false,
		hasLicense = true,
		customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
        CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_BOXER = AddExtraTeam("Boxer", {
        color = Color(102, 153, 102, 255),
		model = {
                "models/player/Group01/Female_01.mdl",
                "models/player/Group01/Female_02.mdl",
                "models/player/Group01/Female_03.mdl",
                "models/player/Group01/Female_04.mdl",
                "models/player/Group01/Female_06.mdl",
                "models/player/group01/male_01.mdl",
                "models/player/Group01/Male_02.mdl",
                "models/player/Group01/male_03.mdl",
                "models/player/Group01/Male_04.mdl",
                "models/player/Group01/Male_05.mdl",
                "models/player/Group01/Male_06.mdl",
                "models/player/Group01/Male_07.mdl",
                "models/player/Group01/Male_08.mdl",
                "models/player/Group01/Male_09.mdl"
        },
		description = [[
		
		Donator Job: No
		
		As a boxer people bet on you to win fights.
		Win fights to earn money.
		Listen to what the Ringleader says at all times.]],
		weapons = {"weapon_real_cs_knife"},
		command = "boxer",
		max = 4,
		salary = 15,
		admin = 0,
		vote = false,
		hasLicense = false,
})

TEAM_RING = AddExtraTeam("Ringleader", {
        color = Color(0, 153, 102, 255),
		model = "models/player/magnusson.mdl",
		description = [[
		
		Donator Job: No
		
		Create an arena for your boxers to fight in.
		Collect bets and pay the winning boxer
		any price you want.  If boxers dont
		listen to you they can be demoted.]],
		weapons = {},
		command = "ring",
		max = 1,
		salary = 50,
		admin = 0,
		vote = false,
		hasLicense = false,
})

TEAM_BLACK = AddExtraTeam("Black Market Dealer", {
        color = Color(102, 255, 153, 255),
		model = "models/player/eli.mdl",
		description = [[
		
		Donator Job: No
		
		Sell illegal items like lockpicks,
		keypad crackers, etc. to the pubic.
		Dont get caught by police.]],
		weapons = {},
		command = "black",
		max = 3,
		salary = 45,
		admin = 0,
		vote = false,
		hasLicense = false,
})

TEAM_DGUARD = AddExtraTeam("Guard [+]", {
        color = Color(204, 51, 204, 255),
        model = "models/player/barney.mdl",
        description = [[
        
                Donator Job: Yes
        
                As a guard you are paid to defend someone's
                property.
		You cannot guard anyone affiliated with the government.
		DO NOT ABUSE TASER.]],
        weapons = {"weapon_real_cs_desert_eagle", "stunstick", "weapon_taser"},
        command = "guard",
        max = 3,
        salary = 55,
        admin = 0,
        vote = false,
        hasLicense = true,
		customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
        CustomCheckFailMsg = "You need to be a donator to do that!"
})


TEAM_MSWAT = AddExtraTeam("SWAT Medic", {
        color = Color(0, 0, 102, 255),
		model = "models/player/swat.mdl",
		description = [[
		
		Donator Job: Yes
		Government Job: Yes
		
		Heal your fellow allies as they go into battle.]],
		weapons = {"weapon_real_cs_ump_45", "weapon_real_cs_usp", "arrest_stick", "unarrest_stick", "weaponchecker", "med_kit"},
		command = "mswat",
		max = 2,
		salary = 75,
		admin = 0,
		vote = false,
		hasLicense = true,
		customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
                CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_LAW = AddExtraTeam("Lawyer", {
        color = Color(204, 153, 102, 255),
		model = "models/player/gman_high.mdl",
		description = [[
		
		Donator Job: No
		
		Get paid to let people out of jail.]],
		weapons = {"unarrest_stick"},
		command = "law",
		max = 1,
		salary = 50,
		admin = 0,
		vote = false,
		hasLicense = false,
})

TEAM_DPOLICE = AddExtraTeam("Civil Protection [+]", {
        color = Color(25, 25, 170, 255),
		model = "models/player/police.mdl",
		description = [[
        
        Donator Job: Yes
        Government Job: Yes
        
        The protector of every citizen that lives in the city .
        You have the power to arrest criminals and protect innocents.
        Hit them with your arrest baton to put them in jail
        Bash them with a stunstick and they might learn better than to disobey
        the law.
        The Battering Ram can break down the door of a criminal with a warrant
        for his/her arrest.
        The Battering Ram can also unfreeze frozen props(if enabled).
        Type /wanted <name> to alert the public to this criminal
        OR go to tab and warrant someone by clicking the warrant button.]],
        weapons = {"arrest_stick", "unarrest_stick", "weapon_real_cs_p228", "stunstick", "door_ram", "weaponchecker", "weapon_real_cs_tmp", "keypad_cracker"},
		command = "dcp",
		max = 4,
		salary = 75,
		admin = 0,
		vote = false,
		hasLicense = true,
		customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
                CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_ECYBORG = AddExtraTeam("Evil Cyborg", {
        color = Color(51, 0, 51, 255),
		model = "models/player/soldier_stripped.mdl",
		description = [[
		
		Donator Job: Yes
		
		You had a glitch in your system which made you evil.
		You can act as a theif, hitman, gangster, or any raiding class.
		This does not allow you to RDM though.  If you abuse
		your job you will get banned from it and/or
		banned from the server.]],
		weapons = {"weapon_real_cs_galil"},
		command = "ecyborg",
		max = 3,
		salary = 60,
		admin = 0,
		vote = false,
		hasLicense = false,
		customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
                CustomCheckFailMsg = "You need to be a donator to do that!"
})

TEAM_GCYBORG = AddExtraTeam("Good Cyborg", {
        color = Color(204, 0, 255, 255),
		model = "models/player/soldier_stripped.mdl",
		description = [[
		
		Donator Job: Yes
		Government Job: Yes
		
		You were programmed correctly were created to
		protect the people of the town.
		As a cyborg you are essentially a member of
		the police force.  You can act as any member
		of the police force.  You can join in on
		police raids or help defend the PD.
		DO NOT ABUSE TASER.]],
		weapons = {"arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "weapon_real_cs_famas", "weapon_taser"},
		command = "gcyborg",
		max = 3,
		salary = 75,
		admin = 0,
		vote = false,
		hasLicense = true,
		customCheck = function(ply) return ply:GetUserGroup() == "Donator" or ply:IsAdmin() end,
                CustomCheckFailMsg = "You need to be a donator to do that!"
})
/*
--------------------------------------------------------
HOW TO MAKE A DOOR GROUP
--------------------------------------------------------
AddDoorGroup("NAME OF THE GROUP HERE, you see this when looking at a door", Team1, Team2, team3, team4, etc.)
 
WARNING: THE DOOR GROUPS HAVE TO BE UNDER THE TEAMS IN SHARED.LUA. IF THEY ARE NOT, IT MIGHT MUCK UP!
 
 
The default door groups, can also be used as examples:
*/
AddDoorGroup("Government", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR, TEAM_SECSERV, TEAM_DSWAT, TEAM_SWAT, TEAM_SSWAT, TEAM_MSWAT, TEAM_DPOLICE, TEAM_GCYBORG)
 
 
/*
--------------------------------------------------------
HOW TO MAKE AN AGENDA
--------------------------------------------------------
AddAgenda(Title of the agenda, Manager (who edits it), Listeners (the ones who just see and follow the agenda))
 
WARNING: THE AGENDAS HAVE TO BE UNDER THE TEAMS IN SHARED.LUA. IF THEY ARE NOT, IT MIGHT MUCK UP!
 
The default agenda's, can also be used as examples:
*/
AddAgenda("Crips agenda", TEAM_CLEADER, {TEAM_CGANG})
AddAgenda("Bloods agenda", TEAM_BLEADER, {TEAM_BGANG})
AddAgenda("Theives agenda", TEAM_DTHEIF, {TEAM_THEIF})

/*
---------------------------------------------------------------------------
HOW TO MAKE A GROUP CHAT
---------------------------------------------------------------------------
Pick one!
GAMEMODE:AddGroupChat(List of team variables separated by comma)
 
or
 
GAMEMODE:AddGroupChat(a function with ply as argument that returns whether a random player is in one chat group)
This one is for people who know how to script Lua.
 
*/
GM:AddGroupChat(function(ply) return ply:IsCP() end)
GM:AddGroupChat(TEAM_CLEADER, TEAM_CGANG)