﻿--[[
Name: Babble-Boss-2.2
Revision: $Rev: 17545 $
Author(s): ckknight (ckknight@gmail.com)
Website: http://ckknight.wowinterface.com/
Documentation: http://wiki.wowace.com/index.php/Babble-Boss-2.2
SVN: http://svn.wowace.com/root/trunk/Babble-2.2/Babble-Boss-2.2
Description: A library to provide localizations for bosses.
Dependencies: AceLibrary, AceLocale-2.2
]]

if (GetLocale()=="frFR") then

local MAJOR_VERSION = "DPSBabble-Boss-2.3"
local MINOR_VERSION = tonumber(string.sub("$Revision: 17546 $", 12, -3))

if not AceLibrary then error(MAJOR_VERSION .. " requires AceLibrary") end

if not AceLibrary:HasInstance("AceLocale-2.3") then error(MAJOR_VERSION .. " requires AceLocale-2.3") end

local _, x = AceLibrary("AceLocale-2.3"):GetLibraryVersion()
MINOR_VERSION = MINOR_VERSION * 100000 + x

if not AceLibrary:IsNewVersion(MAJOR_VERSION, MINOR_VERSION) then return end

local BabbleBoss = AceLibrary("AceLocale-2.3"):new(MAJOR_VERSION)

-- uncomment below for debug information
-- BabbleBoss:EnableDebugging()

local bosses = {
	-- Costum bosses
	["Firesworn"] = true,

	["Avalanchion"] = true,
	["The Windreaver"] = true,
	["Baron Charr"] = true,
	["Princess Tempestria"] = true,
	["Grethok the Controller"] = true,
	["Patchwerk"] = true,
	["Grobbulus"] = true,
	["Gluth"] = true,
	["Feugen"] = true,
	["Stalagg"] = true,
	["Thaddius"] = true,
	["Anub'Rekhan"] = true,
	["Grand Widow Faerlina"] = true,
	["Maexxna"] = true,
	["Instructor Razuvious"] = true,
	--["Deathknight Understudy"] = true,
	["Gothik the Harvester"] = true,
	["Highlord Mograine"] = true,
	["Thane Korth'azz"] = true,
	["Lady Blaumeux"] = true,
	["Sir Zeliek"] = true,
	["The Four Horsemen"] = true,
	["Noth the Plaguebringer"] = true,
	["Heigan the Unclean"] = true,
	["Loatheb"] = true,
	["Sapphiron"] = true,
	["Kel'Thuzad"] = true,
	["Lord Victor Nefarius"] = true,
	["Nefarian"] = true,
	["Vaelastrasz the Corrupt"] = true,
	["Razorgore the Untamed"] = true,
	["Broodlord Lashlayer"] = true,
	["Chromaggus"] = true,
	["Ebonroc"] = true,
	["Firemaw"] = true,
	["Flamegor"] = true,
	["Majordomo Executus"] = true,
	["Ragnaros"] = true,
	["Baron Geddon"] = true,
	["Golemagg the Incinerator"] = true,
	["Garr"] = true,
	["Sulfuron Harbinger"] = true,
	["Shazzrah"] = true,
	["Lucifron"] = true,
	["Gehennas"] = true,
	["Magmadar"] = true,
	["Onyxia"] = true,
	["Azuregos"] = true,
	["Lord Kazzak"] = true,
	["Ysondre"] = true,
	["Emeriss"] = true,
	["Taerar"] = true,
	["Lethon"] = true,
	["High Priestess Jeklik"] = true,
	["High Priest Venoxis"] = true,
	["High Priest Thekal"] = true,
	["High Priestess Arlokk"] = true,
	["High Priestess Mar'li"] = true,
	["Jin'do the Hexxer"] = true,
	["Bloodlord Mandokir"] = true,
	["Gahz'ranka"] = true,
	["Gri'lek"] = true,
	["Hazza'rah"] = true,
	["Renataki"] = true,
	["Wushoolay"] = true,
	["Hakkar"] = true,
	["Ayamiss the Hunter"] = true,
	["Buru the Gorger"] = true,
	["General Rajaxx"] = true,
	["Lieutenant General Andorov"] = true,
	["Moam"] = true,
	["Ossirian the Unscarred"] = true,
	["Lord Kri"] = true,
	["Princess Yauj"] = true,
	["Vem"] = true,
	["The Bug Family"] = true,
	["Eye of C'Thun"] = true,
	["C'Thun"] = true,
	["Fankriss the Unyielding"] = true,
	["Princess Huhuran"] = true,
	["Ouro"] = true,
	["Battleguard Sartura"] = true,
	["The Prophet Skeram"] = true,
	["Emperor Vek'lor"] = true,
	["Emperor Vek'nilash"] = true,
	["The Twin Emperors"] = true,
	["Viscidus"] = true,
	["Alzzin the Wildshaper"] = true,
	["Ambassador Flamelash"] = true,
	["Anger'rel"] = true,
	["Archivist Galford"] = true,
	["Atal'alarion"] = true,
	["Avatar of Hakkar"] = true,
	["Bael'Gar"] = true,
	["Balnazzar"] = true,
	["Baroness Anastari"] = true,
	["Baron Rivendare"] = true,
	["Cannon Master Willey"] = true,
	["Captain Kromcrush"] = true,
	["Celebras the Cursed"] = true,
	["Crystal Fang"] = true,
	["Darkmaster Gandling"] = true,
	["Doctor Theolen Krastinov"] = true,
	["Doom'rel"] = true,
	["Dope'rel"] = true,
	["Dreamscythe"] = true,
	["Emperor Dagran Thaurissan"] = true,
	["Fineous Darkvire"] = true,
	["Gasher"] = true,
	["General Angerforge"] = true,
	["General Drakkisath"] = true,
	["Gloom'rel"] = true,
	["Golem Lord Argelmach"] = true,
	["Goraluk Anvilcrack"] = true,
	["Guard Fengus"] = true,
	["Guard Mol'dar"] = true,
	["Guard Slip'kik"] = true,
	["Gyth"] = true,
	["Halycon"] = true,
	["Hate'rel"] = true,
	["Hazzas"] = true,
	["Hearthsinger Forresten"] = true,
	["High Interrogator Gerstahn"] = true,
	["Highlord Omokk"] = true,
	["Hukku"] = true,
	["Hurley Blackbreath"] = true,
	["Hydrospawn"] = true,
	["Illyanna Ravenoak"] = true,
	["Immol'thar"] = true,
	["Instructor Malicia"] = true,
	["Jammal'an the Prophet"] = true,
	["Jandice Barov"] = true,
	["King Gordok"] = true,
	["Kirtonos the Herald"] = true,
	["Lady Illucia Barov"] = true,
	["Landslide"] = true,
	["Lethtendris"] = true,
	["Lord Alexei Barov"] = true,
	["Lord Incendius"] = true,
	["Lord Vyletongue"] = true,
	["Lorekeeper Polkelt"] = true,
	["Loro"] = true,
	["Magister Kalendris"] = true,
	["Magistrate Barthilas"] = true,
	["Magmus"] = true,
	["Maleki the Pallid"] = true,
	["Marduk Blackpool"] = true,
	["Meshlok the Harvester"] = true,
	["Mijan"] = true,
	["Morphaz"] = true,
	["Mother Smolderweb"] = true,
	["Nerub'enkan"] = true,
	["Noxxion"] = true,
	["Ogom the Wretched"] = true,
	["Overlord Wyrmthalak"] = true,
	["Phalanx"] = true,
	["Plugger Spazzring"] = true,
	["Postmaster Malown"] = true,
	["Princess Moira Bronzebeard"] = true,
	["Princess Theradras"] = true,
	["Prince Tortheldrin"] = true,
	["Pusillin"] = true,
	["Pyroguard Emberseer"] = true,
	["Ramstein the Gorger"] = true,
	["Ras Frostwhisper"] = true,
	["Rattlegore"] = true,
	["Razorlash"] = true,
	["Warchief Rend Blackhand"] = true,
	["Ribbly Screwspigot"] = true,
	["Rotgrip"] = true,
	["Seeth'rel"] = true,
	["Shade of Eranikus"] = true,
	["Shadow Hunter Vosh'gajin"] = true,
	["Solakar Flamewreath"] = true,
	["Stomper Kreeg"] = true,
	["Tendris Warpwood"] = true,
	["The Beast"] = true,
	["The Ravenian"] = true,
	["Timmy the Cruel"] = true,
	["Tinkerer Gizlock"] = true,
	["Tsu'zee"] = true,
	["Vectus"] = true,
	["Vile'rel"] = true,
	["War Master Voone"] = true,
	["Weaver"] = true,
	["Zevrim Thornhoof"] = true,
	["Zolo"] = true,
	["Zul'Lor"] = true,
	
	-- From Mendeleev
	["Cho'Rush the Observer"] = true,
	["Lord Hel'nurath"] = true,
	["Pimgib"] = true,
	["Knot Thimblejack's Cache"] = true,
	["Cannonmaster Willey"] = true,
	["Emperor Dagran Thaurissian"] = true,
	["Archmage Arugal"] = true,
	["Archmage Arugal's Voidwalker"] = true,
	["Baron Silverlaine"] = true,
	["Commander Springvale"] = true,
	["Deathsworn Captain"] = true,
	["Fenrus the Devourer"] = true,
	["Odo the Blindwatcher"] = true,
	["Razorclaw the Butcher"] = true,
	["Wolf Master Nandos"] = true,
	["Rend Blackhand"] = true,
	["Kurinnaxx"] = true,

	-- OUTLANDS
	-- XXX: These are subject to change and may not be correct.
	-- Karazhan
	["Prince Malchazzar"] = true,
	["Attumen the Huntsman"] = true,
	["Dorathee"] = true,
	["Toto"] = true,
	["Tinhead"] = true,
	["Strawman"] = true,
	["Roar"] = true,
	["Crone"] = true,
	["Romulo"] = true,
	["Julianne"] = true,
	-- Caverns of Time
	["Lieutenant Drake"] = true,
	["Captain Skarloc"] = true,
	["The Epoch Hunter"] = true,
	["Archimonde"] = true,
	-- Hellfire Ramparts
	["Watchkeeper Gargolmar"] = true,
	["Vazruden"] = true,
	["Omor the Unscarred"] = true,
	-- The Blood Furnace
	["The Maker"] = true,
	["Broggok"] = true,
	["Keli'dan the Breaker"] = true,
	-- The Shattered Halls
	["Kargath Bladefist"] = true,
	["Grand Warlock Nethekurse"] = true,
	["Warbringer O'omrogg"] = true,
	-- Magtheridon's Lair
	["Magtheridon"] = true,
	-- The Slave Pens
	["Mennu the Betrayer"] = true,
	["Rokmar the Crackler"] = true,
	["Quagmirran"] = true,
	-- The Underbog
	["Hungarfen"] = true,
	["Ghaz'an"] = true,
	["Overseer Tidewrath"] = true,
	["Claw"] = true,
	["Swamplord Musel'ek"] = true,
	["The Black Stalker"] = true,
	-- The Steamvault
	-- Serpentshrine Cavern
	["Lady Vashj"] = true,
	-- Mana Tombs
	["Pandemonius"] = true,
	["Tavarok"] = true,
	["Nexus-Prince Shaffar"] = true,
	-- Auchenai Crypts
	["Shirrak the Dead Watcher"] = true,
	["Exarch Maladaar"] = true,
	-- Sethekk Halls
	["Talon King Ikiss"] = true,
	["Darkweaver Syth"] = true,
	-- Shadow Labyrinth
	-- The Mechanar
	-- The Botanica
	-- The Arcatraz
	-- Eye of the Storm
	["Prince Kael'thas Sunstrider"] = true,
	-- Gruul's Lair
	["Gruul"] = true,
	-- Black Temple
	["Illidan Stormrage"] = true,
	-- Ring of Blood
	["Brokentoe"] = true,
	["Murkblood Twin"] = true,
	["Murkblood Twins"] = true,
	["The Blue Brothers"] = true,
	["Rokdar the Sundered Lord"] = true,
	["Skra'gath"] = true,
	["Warmaul Champion"] = true,
	["Mogor"] = true,
}

BabbleBoss:RegisterTranslations("frFR", function()
	return {
		["Avalanchion"] = "Avalanchion",
		["The Windreaver"] = "Ouraganien",
		["Baron Charr"] = "Baron Charr",
		["Princess Tempestria"] = "Princesse Tempestria",
		["Grethok the Controller"] = "Grethok le Contr\195\180leur",
		["Patchwerk"] = "Le Recousu",
		["Grobbulus"] = "Grobbulus",
		["Gluth"] = "Gluth",
		["Feugen"] = "Feugen", -- CHECK
		["Stalagg"] = "Stalagg", -- CHECK
		["Thaddius"] = "Thaddius",
		["Anub'Rekhan"] = "Anub'Rekhan",
		["Grand Widow Faerlina"] = "Grande veuve Faerlina",
		["Maexxna"] = "Maexxna",
		["Instructor Razuvious"] = "Instructeur Razuvious",
		["Deathknight Understudy"] = "Doublure de chevalier de la mort", -- CHECK
		["Gothik the Harvester"] = "Gothik le Moissonneur",
		["Highlord Mograine"] = "Grand Seigneur Mograine", -- CHECK
		["Thane Korth'azz"] = "Thane Korth'azz", -- CHECK
		["Lady Blaumeux"] = "Dame Blaumeux", -- CHECK
		["Sir Zeliek"] = "Sir Zeliek ", -- CHECK
		["The Four Horsemen"] = "Les 4 Cavaliers",
		["Noth the Plaguebringer"] ="Noth le Porte-peste",
		["Heigan the Unclean"] = "Heigan l'Impur",
		["Loatheb"] = "Horreb",
		["Sapphiron"] = "Sapphiron",
		["Kel'Thuzad"] = "Kel'Thuzad",
		["Lord Victor Nefarius"] = "Seigneur Victor Nefarius",
		["Nefarian"] = "Nefarian",
		["Vaelastrasz the Corrupt"] = "Vaelastrasz le Corrompu",
		["Razorgore the Untamed"] = "Tranchetripe l'Indompt\195\169",
		["Broodlord Lashlayer"] = "Seigneur des couv\195\169es Lashlayer",
		["Chromaggus"] = "Chromaggus",
		["Ebonroc"] = "Roch\195\169b\195\168ne",
		["Firemaw"] = "Gueule-de-feu",
		["Flamegor"] = "Flamegor",
		["Majordomo Executus"] = "Chambellan Executus",
		["Ragnaros"] = "Ragnaros",
		["Baron Geddon"] = "Baron Geddon",
		["Golemagg the Incinerator"] = "Golemagg l'Incin\195\169rateur",
		["Garr"] = "Garr",
		["Sulfuron Harbinger"] = "Messager de Sulfuron",
		["Shazzrah"] = "Shazzrah",
		["Lucifron"] = "Lucifron",
		["Gehennas"] = "Gehennas",
		["Magmadar"] = "Magmadar",
		["Onyxia"] = "Onyxia",
		["Azuregos"] = "Azuregos",
		["Lord Kazzak"] = "Seigneur Kazzak",
		["Ysondre"] = "Ysondre",
		["Emeriss"] = "Emeriss",
		["Taerar"] = "Taerar",
		["Lethon"] = "L\195\169thon",
		["High Priestess Jeklik"] = "Grande pr\195\170tresse Jeklik",
		["High Priest Venoxis"] = "Grand pr\195\170tre Venoxis",
		["High Priest Thekal"] = "Grand pr\195\170tre Thekal",
		["High Priestess Arlokk"] = "Grande pr\195\170tresse Arlokk",
		["High Priestess Mar'li"] = "Grande pr\195\170tresse Mar'li",
		["Jin'do the Hexxer"] = "Jin'do le Mal\195\169ficieur",
		["Bloodlord Mandokir"] = "Seigneur sanglant Mandokir",
		["Gahz'ranka"] = "Gahz'ranka",
		["Gri'lek"] = "Gri'lek",
		["Hazza'rah"] = "Hazza'rah",
		["Renataki"] = "Renataki",
		["Wushoolay"] = "Wushoolay",
		["Hakkar"] = "Hakkar",
		["Ayamiss the Hunter"] = "Ayamiss le Chasseur",
		["Buru the Gorger"] = "Buru Grandgosier",
		["General Rajaxx"] = "G\195\169n\195\169ral Rajaxx",
		["Lieutenant General Andorov"] = "G\195\169n\195\169ral de division Andorov",
		["Moam"] = "Moam",
		["Anubisath Guardian"] = "Gardien Anubisath",
		["Ossirian the Unscarred"] = "Ossirian l'Intouch\195\169",
		["Lord Kri"] = "Seigneur Kri",
		["Princess Yauj"] = "Princesse Yauj",
		["Vem"] = "Vem",
		["The Bug Family"] = "La famille insecte",
		["Eye of C'Thun"] = "Oeil de C'Thun",
		["C'Thun"] = "C'Thun",
		["Anubisath Defender"] = "D\195\169fenseur Anubisath",
		["Fankriss the Unyielding"] = "Fankriss l'Inflexible",
		["Princess Huhuran"] = "Princesse Huhuran",
		["Ouro"] = "Ouro",
		["Battleguard Sartura"] = "Garde de guerre Sartura",
		["The Prophet Skeram"] = "Le Proph\195\168te Skeram",
		["Emperor Vek'lor"] = "Empereur Vek'lor",
		["Emperor Vek'nilash"] = "Empereur Vek'nilash",
		["The Twin Emperors"] = "Les Empereurs jumeaux",
		["Viscidus"] = "Viscidus",
		["Alzzin the Wildshaper"] = "Alzzin le Modeleur",
		["Ambassador Flamelash"] = "Ambassadeur Cinglefouet",
		["Anger'rel"] = "Col\195\169'rel",
		["Archivist Galford"] = "Archiviste Galford",
		["Atal'alarion"] = "Atal'alarion",
		["Avatar of Hakkar"] = "Avatar d'Hakkar",
		["Bael'Gar"] = "Bael'Gar",
		["Balnazzar"] = "Balnazzar",
		["Baroness Anastari"] = "Baronne Anastari",
		["Baron Rivendare"] = "Baron Rivendare",
		["Cannon Master Willey"] = "Ma\195\174tre canonnier Willey",
		["Captain Kromcrush"] = "Capitaine Kromcrush",
		["Celebras the Cursed"] = "Celebras le Maudit",
		["Crystal Fang"] = "Croc cristallin",
		["Darkmaster Gandling"] = "Sombre Ma\195\174tre Gandling",
		["Doctor Theolen Krastinov"] = "Docteur Theolen Krastinov",
		["Doom'rel"] = "Tragi'rel",
		["Dope'rel"] = "Demeu'rel",
		["Dreamscythe"] = "Fauche-r\195\170ve",
		["Emperor Dagran Thaurissan"] = "Empereur Dagran Thaurissan",
		["Fineous Darkvire"] = "Fineous Darkvire",
		["Gasher"] = "Gasher",
		["General Angerforge"] = "G\195\169n\195\169ral Angerforge",
		["General Drakkisath"] = "G\195\169n\195\169ral Drakkisath",
		["Gloom'rel"] = "Fun\195\169b'rel",
		["Golem Lord Argelmach"] = "Seigneur golem Argelmach",
		["Goraluk Anvilcrack"] = "Goraluk Anvilcrack",
		["Guard Fengus"] = "Garde Fengus",
		["Guard Mol'dar"] = "Garde Mol'dar",
		["Guard Slip'kik"] = "Garde Slip'kik",
		["Gyth"] = "Gyth",
		["Halycon"] = "Halycon",
		["Hate'rel"] = "Haine'rel",
		["Hazzas"] = "Hazzas",
		["Hearthsinger Forresten"] = "Hearthsinger Forresten",
		["High Interrogator Gerstahn"] = "Grand Interrogateur Gerstahn",
		["Highlord Omokk"] = "G\195\169n\195\169ralissime Omokk",
		["Hukku"] = "Hukku",
		["Hurley Blackbreath"] = "Hurley Blackbreath",
		["Hydrospawn"] = "Hydrog\195\169nos",
		["Illyanna Ravenoak"] = "Illyanna Ravenoak",
		["Immol'thar"] = "Immol'thar",
		["Instructor Malicia"] = "Instructeur Malicia",
		["Jammal'an the Prophet"] = "Jammal'an le proph\195\168te",
		["Jandice Barov"] = "Jandice Barov",
		["King Gordok"] = "Roi Gordok",
		["Kirtonos the Herald"] = "Kirtonos le H\195\169raut",
		["Lady Illucia Barov"] = "Dame Illucia Barov",
		["Landslide"] = "Glissement de terrain",
		["Lethtendris"] = "Lethtendris",
		["Lord Alexei Barov"] = "Seigneur Alexei Barov",
		["Lord Incendius"] = "Seigneur Incendius",
		["Lord Vyletongue"] = "Seigneur Vylelangue",
		["Lorekeeper Polkelt"] = "Gardien du savoir Polkelt",
		["Loro"] = "Loro",
		["Magister Kalendris"] = "Magist\195\168re Kalendris",
		["Magistrate Barthilas"] = "Magistrat Barthilas",
		["Magmus"] = "Magmus",
		["Maleki the Pallid"] = "Maleki le Blafard",
		["Marduk Blackpool"] = "Marduk Noir\195\169tang",
		["Meshlok the Harvester"] = "Meshlok le Moissonneur",
		["Mijan"] = "Mijan",
		["Morphaz"] = "Morphaz",
		["Mother Smolderweb"] = "Matriarche Couveuse",
		["Nerub'enkan"] = "Nerub'enkan",
		["Noxxion"] = "Noxxion",
		["Ogom the Wretched"] = "Ogom le Mis\195\169rable",
		["Overlord Wyrmthalak"] = "Seigneur Wyrmthalak",
		["Phalanx"] = "Phalange",
		["Plugger Spazzring"] = "Plugger Spazzring",
		["Postmaster Malown"] = "Postier Malown",
		["Princess Moira Bronzebeard"] = "Princesse Moira Bronzebeard",
		["Princess Theradras"] = "Princesse Theradras",
		["Prince Tortheldrin"] = "Prince Tortheldrin",
		["Pusillin"] = "Pusillin",
		["Pyroguard Emberseer"] = "Pyrogarde Proph\195\168te ardent",
		["Ramstein the Gorger"] = "Ramstein Grandgosier",
		["Ras Frostwhisper"] = "Ras Murmegivre",
		["Rattlegore"] = "Cliquettripes",
		["Razorlash"] = "Tranchefouet",
		["Warchief Rend Blackhand"] = "Chef de guerre Rend Blackhand",
		["Ribbly Screwspigot"] = "Ribbly Screwspigot",
		["Rotgrip"] = "Grippe-charogne",
		["Seeth'rel"] = "Fulmi'rel",
		["Shade of Eranikus"] = "Ombre d'Eranikus",
		["Shadow Hunter Vosh'gajin"] = "Chasseresse des ombres Vosh'gajin",
		["Solakar Flamewreath"] = "Solakar Voluteflamme",
		["Stomper Kreeg"] = "Kreeg le Marteleur",
		["Tendris Warpwood"] = "Tendris Crochebois",
		["The Beast"] = "La B\195\170te",
		["The Ravenian"] = "Le Voracien",
		["Timmy the Cruel"] = "Timmy le Cruel",
		["Tinkerer Gizlock"] = "Artisan Gizlock",
		["Tsu'zee"] = "Tsu'zee",
		["Vectus"] = "Vectus",
		["Vile'rel"] = "Ignobl'rel",
		["War Master Voone"] = "Ma\195\174tre de guerre Voone",
		["Weaver"] = "Tisserand",
		["Zevrim Thornhoof"] = "Zevrim Thornhoof",
		["Zolo"] = "Zolo",
		["Zul'Lor"] = "Zul'Lor",
		
		-- From Mendeleev
		["Cho'Rush the Observer"] = "Cho'Rush l'Observateur",
		["Lord Hel'nurath"] = "Seigneur Hel'nurath",
		["Pimgib"] = "Pimgib",
		["Knot Thimblejack's Cache"] = "R\195\169serve de Knot Thimblejack",
		["Archmage Arugal"] = "Archimage Arugal",
		["Archmage Arugal's Voidwalker"] = "Marcheur du Vide d'Arugal",
		["Baron Silverlaine"] = "Baron d'Argelaine",
		["Commander Springvale"] = "Commandant Springvale",
		["Deathsworn Captain"] = "Capitaine Ligemort",
		["Fenrus the Devourer"] = "Fenrus le D\195\169voreur",
		["Odo the Blindwatcher"] = "Odo l'Aveugle",
		["Razorclaw the Butcher"] = "Tranchegriffe le Boucher",
		["Wolf Master Nandos"] = "Ma\195\174tre-loup Nandos",
		["Kurinnaxx"] = "Kurinnaxx",

		-- OUTLANDS
		-- XXX: These are subject to change and may not be correct.
		-- Karazhan
--		["Prince Malchazzar"] = true,
--		["Attumen the Huntsman"] = true,
--		["Dorathee"] = true,
--		["Toto"] = true,
--		["Tinhead"] = true,
--		["Strawman"] = true,
--		["Roar"] = true,
--		["Crone"] = true,
--		["Romulo"] = true,
--		["Julianne"] = true,
		-- Caverns of Time
--		["Lieutenant Drake"] = true,
--		["Captain Skarloc"] = true,
--		["The Epoch Hunter"] = true,
--		["Archimonde"] = true,
		-- Hellfire Ramparts
--		["Watchkeeper Gargolmar"] = true,
--		["Vazruden"] = true,
--		["Omor the Unscarred"] = true,
		-- The Blood Furnace
--		["The Maker"] = true,
--		["Broggok"] = true,
--		["Keli'dan the Breaker"] = true,
		-- The Shattered Halls
--		["Kargath Bladefist"] = true,
--		["Grand Warlock Nethekurse"] = true,
--		["Warbringer O'omrogg"] = true,
		-- Magtheridon's Lair
--		["Magtheridon"] = true,
		-- The Slave Pens
--		["Mennu the Betrayer"] = true,
--		["Rokmar the Crackler"] = true,
--		["Quagmirran"] = true,
		-- The Underbog
--		["Hungarfen"] = true,
--		["Ghaz'an"] = true,
--		["Overseer Tidewrath"] = true,
--		["Claw"] = true,
--		["Swamplord Musel'ek"] = true,
--		["The Black Stalker"] = true,
		-- The Steamvault
		-- Serpentshrine Cavern
--		["Lady Vashj"] = true,
		-- Mana Tombs
--		["Pandemonius"] = true,
--		["Tavarok"] = true,
--		["Nexus-Prince Shaffar"] = true,
		-- Auchenai Crypts
--		["Shirrak the Dead Watcher"] = true,
--		["Exarch Maladaar"] = true
		-- Sethekk Halls
--		["Talon King Ikiss"] = true,
--		["Darkweaver Syth"] = true,
		-- Shadow Labyrinth
		-- The Mechanar
		-- The Botanica
		-- The Arcatraz
		-- Eye of the Storm
--		["Prince Kael'thas Sunstrider"] = true,
		-- Gruul's Lair
--		["Gruul"] = true,
		-- Black Temple
--		["Illidan Stormrage"] = true,
		-- Ring of Blood
--		["Brokentoe"] = true,
--		["Murkblood Twin"] = true,
--		["Murkblood Twins"] = true,
--		["The Blue Brothers"] = true,
--		["Rokdar the Sundered Lord"] = true,
--		["Skra'gath"] = true,
--		["Warmaul Champion"] = true,
--		["Mogor"] = true,
	}
end)

BabbleBoss:Debug()
BabbleBoss:SetStrictness(true)

function BabbleBoss:Contains(name)
	if bosses[name] or bosses[self:HasReverseTranslation(name) and self:GetReverseTranslation(name) or false] then
		return true
	end
	return false
end

AceLibrary:Register(BabbleBoss, MAJOR_VERSION, MINOR_VERSION)
BabbleBoss = nil

end