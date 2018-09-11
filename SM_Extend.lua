Printd("SM_extend.lua loaded OK!")
--IF YOU ARE COMBINING RAIDS WITH SOMEONE ELSE, MAKE SURE YOU CHOOSE A UNIQUE RAID NAME IN THIS VARIABLE
MB_RAID = "MULTIBOX_MyName1"
--------------------------------------------User edited values--------------------------------------
--Warlocks will soulstone rezzers during setup
MB_soulstone_rezzers=true
--Automatically delete stuff from TheList. Starts out blank and won't delete shit.
MB_autodelete=true
--Automatically buy reagents, food, and ammo if you have a vendor open and hit CTRL-1
MB_buystacks=true
--Automatically turn by following raidleader if you get message "Target is behind you"
MB_autoturn=false
--When mage gets clearcast, this automatically fires Arcane Missles in an attempt to keep up dps while saving more mana
MB_clearcastAM=false
MB_default_warlock_pet="Imp"
--Shammys will chain heal locks hellfire when lower than this.
MB_hellfire_threshold=.85
--All available healers jump on a tank when he is below this threshold
MB_healtank_threshold=.5
--All available healers jump on a raid memeber when he is below this threshold
MB_savechump_threshold=.33
--A healer will only heal himself when he is below this threshold
MB_healself_threshold=.3
--ANYONE who will be tanking for you goes in this list, so tanks don't taunt off other tanks.
MB_tanklist={"Cachorro","Cachorrob","Cachorroa","Cachorra","Raigore","Dwarftoss","Vandalus","Tankforhire","Farquad","Rohnin","Zena","Confusion","Furyswipes","Cuppycake","Eversmile","Komal","Mootalia","Theothertank","Estbro","Enticer","Killdozerr","Hoyabembe","Skankia","Titanator","Clubseals","Chuckspears","Wiglet"}
--ONLY YOUR HEALERS go in this list. Not guest healers. DO NOT PUT DPS SPEC TOONS HERE. THEY WILL NOT HEAL.
MB_healer_list= {"Zangadoo","Blackbeastxd","Darkspiritxd","Darkspiriton","Kuhmilch","Darkspiritqt","Darkspirittw","Zangadoxd","Feelinghordy","Steezmachine","Lavaza","Pastordave","Grtizngravy","Spiritcooker","Indulgence","Jackeebrown","Wukfah","Bigolebih","Chinesium","Barie","Aderetia","Karris","Orinoco","Punchingbear","Cashme","Refill","Shamanquatro","Bubbling","Shamancinco","Avindra","Zumwalt","Shamansiete","Shamanocho","Holybabe","Bubblefail","Bubblescum","Bubblebootie","Bubblyboo","Healuraz","Octopus","Gayforpay","Whereistotem","Negativeaura","Aintitashamy","Spankit","Consecration","Lightbomb","Twin","Surger","Di","Steezmachine","Chuntaro","Huntmilfs","Dirtyshirley","Bubblenator","Bubblydoom" }
--This is a list of all your toons and any other toon you want to auto-invite to raid, even if they are not yours.
MB_toonlist = { "Zangadoo","Poisonmugger","Blackbeastxd","Jablanic","Darkspiritxd","Tornshriek","Cachorra","Darkspiriton","Schranzerone","Schranzertwo","Epockone","Poisonone","Darkspirittw","Schranzerthr","Epocktwo","Nympheone","Darkspiritqt","Kuhmilch","Zangadoxd","Zangadoone","Zangadotwo","Epockthree","Schranzerf","Kuhschubser","Epockxd","Schranzerqt","Cachorroa","Cachorrob","Bugxd","Epocka","Epockb","Epockc","Epockd","Schranzera","Trollhunterx","Buuhaa","Nymphe","Cachorro","Epock","Schranzerr","Cashme","Ovendodger","Steezmachine","Trifling","Clubseals","Chuckspears","Indulgences","Holymufdiver","Avadevine","Wiglet","Huntmilfs","Chuntaro","Pygmage","Absharam","Trashly","JizzGrizz","Dirtyshirley","Wastrel","Scissorin","Bijikurdista","Friendlyfire","Lavaza","Troho","Harpzor","Mylika,","Phenostrix","Pastordave","Tintizzy","Grtizngravy","Occlusion","Spiritcooker","Hoyabembe","Bigolebih","Wukfah","Jackeebrown,","Bearspray","Indulgence","Killdozerr","Chinesium","Forestfire","Lesbaru","Heatedheavy","Moldylockz","Enticer","Aderetia","Theothertank","Typher","Valatorin","Cleargy","Sunkiss","Sneakyk","Karris","Horock","Tankforhire","Justforwater","Aimshoted","Imyourdaddo","Sendmebtc","Estbro","Titanator","Botinator","Feelinghordy","Hotwand","Buy", "Mootalia","Healuraz", "Kilimanjaro", "Jyssyj", "Skankia", "Furyswipes", "Cuppycake", "Shamanuno", "Brutalia", "Refill", "Bubbling", "Shamanquatro", "Olympic", "Yellowstone", "Everglades", "Flameshocked", "Brutalio", "Punchingbear", "Shamancinco", "Brutalic", "Icefloes", "Zillazee", "Komal", "Avindra", "Shamantres", "Brutalium", "Brutaliar", "Monterey", "Shamanocho", "Shamanseis", "Shamansiete", "Zumwalt", "Silza", "Merazza", "Jenjja", "Calypsa", "Crookshanks", "Pocklick", "Toshredsusay", "Stabsya", "Kimboslicer", "Eversmile", "Barie", "Orinoco", "Badlands", "Bubblyboo", "Desdemonia", "Drainsoulia", "Bubblydoom", "Bubbleup", "Bubblefail", "Bubblemad", "Bubbleplanet", "Bubblemama", "Bubblescum", "Bubblemania", "Zombiewife", "Bubblewin", "Bubblenator", "Bridesmage", "Holybabe", "Bubblebootie", "Bubblebrave", "Bubblesong", "Bubblefame", "Maala", "Renew","Dwarftoss","Kneearrow","Heartstrike","Slamminsam","Iiliililiil","Testshamrest","Stung","Understab","Dwarfstomp","Bloobs","Mysterial","Sinisterlike","Lockinabox","Thepain","Alwayshordy","Elfrocket","Badcosplay","Neckbiter","Glittery","Lightbomb","Surger" ,"Farquad" ,"Rohnin" ,"Zena" ,"Confusion" ,"Thearmor" ,"Octopus" ,"Gayforpay" ,"Whereistotem" ,"Negativeaura" ,"Aintitashamy" ,"Spankit" ,"Consecration" ,"Thunda" ,"Zing" ,"Crank" ,"Salvo" ,"Chaostard" ,"Heavenly" ,"Spun" ,"Twisted" ,"Handy" ,"Badknee" ,"Explosive" ,"Spite" ,"Pontiac" ,"Twin" ,"Sparky" ,"Druidy" ,"Fister" ,"Sploink" ,"Moredotz" ,"Zombia" ,"Zorn" ,"Sid" ,"Natalia" ,"Di","J\195\172\195\176f"}
--This is the powerleveler your lowbies will follow when powerleveling
MB_powerleveler="Titanator"
--This is your set of lowbie leveling parties. You can run 4 at a time. The first toon name on the left of = is the squad leader.
MB_levelingparties= {
	Buy={"Skankia", "Healuraz","Jyssyj","Bubblebootie" },
	Kneearrow={ "Drainsoulia","Holybabe","Bubblenator","Kilimanjaro"},
	Heartstrike={ "Feelinghordy", "Dwarftoss", "Slamminsam", "Iiliililiil"},
	Hotwand={"Bridesmage","Zombiewife","Desdemonia","Bubblydoom"}
}
--This is who people will run to when they have the bomb on Baron.
MB_bombfollow="Enticer"
--This is who people will run to when they have threatening gaze on Mandokir (raptor boss)
MB_gazefollow="Toshredsusay"
--LEAVE DEDICATED HEALERS BLANK. THIS IS AN ADVANCED FEATURE THAT PROBABLY DOESN'T DO WHAT YOU THINK.
--MB_dedicated_healers={}
MB_dedicated_healers={Cuppycakes="Avindra",Enticer="Zumwalt",Komal="Cashme",Furyswipes="Refill"}
--*Fs
FsR_AutoRepairAllItems = true
---------------------------------------------End of user edited values--------------------------------
MB_debuffslotlist={"Curse of Shadow","Curse of the Elements","Curse of Agony","Curse of Agony","Curse of Agony","Demoralizing Shout","Thunder Clap","Insect Swarm(Rank 1)","Vampiric Embrace","Hunter's Mark","Fairy Fire","Placeholder for Nightfall","Placeholder for Shadow Weaving","Placeholder for Mindflay","Placeholder for Winters Chill","Scorpid Sting","Placeholder for improved Shadowbolt","Polymorph","Shackle Undead","Banish","Hibernate","Fear","Scare Beast"}
FsR_Stuff2Track =
	{
 	["Gold"] = {itemkind = "special"},
 	["EmptyBagSlots"] = {itemkind = "special"},
 	["Soul Shard"] = {itemkind = "item"},
 	["Demonic Figurine"] = {itemkind = "item" , class = { Warlock = {AnnounceValue = 3}}},
 	["Infernal Stone"] = {itemkind = "item", class = { Warlock = {}}},
 	["Ankh"] = {itemkind = "item" , class = { Shaman = { AnnounceValue = 5}}},
 	["Arcane Powder"] = {itemkind = "item" , class = {Mage = {AnnounceValue = 3}}},
 	["Rune of Portals"] = {itemkind = "item" , class = {Mage = {AnnounceValue = 2}}},
 	["Rune of Teleportation"] = {itemkind = "item" , class = {Mage = {}}},
 	["Roasted Quail"] = {itemkind = "item" , class = {Hunter = {AnnounceValue = 2}}},
 	["Dried King Bolete"] = {itemkind = "item" , class = {Hunter = {AnnounceValue = 2}}},
 	["Jagged Arrow"] = {itemkind = "item" , class = {Hunter = {AnnounceValue = 100, Ratio = 10}, Rogue = {AnnounceValue = 10, Ratio = 1}, Warrior = {AnnounceValue = 10, Ratio = 1}}},
 	["Sacred Candle"] = {itemkind = "item" , class = {Priest = {AnnounceValue = 10}}},
 	["Wild Thornroot"] = {itemkind = "item" , class = {Druid = {AnnounceValue = 5}}},
 	["Lockbox"] = {itemkind = "itemGrp" , collector = {"Shmida"}},
 	["Bijou"] = {itemkind = "itemGrp" , collector = {"Lendandana", "Omalim"}},
 	["Coin"] = {itemkind = "itemGrp" , collector = {"Lendandana", "Omalim"}},
 	["Runecloth"] = {itemkind = "item" , collector = {"Durokigar", "Fsmage"}},
 	["Bolt of Runecloth"] = {itemkind = "item" , collector = {"Durokigar", "Fsmage"}},
 	["Felcloth"] = {itemkind = "item" , collector = {"Fsdm"}},
 	["Mooncloth"] = {itemkind = "item" , collector = {"Fsdm"}},
 	["Bloodvine"] = {itemkind = "item" , collector = {"Fsdm"}},
 	["Powerful Mojo"] = {itemkind = "item", collector = {"Fsdm"}},
 	["Thick Leather"] = {itemkind = "item", collector = {"Leytuha"}},
 	["Ironweb Spider Silk"] = {itemkind = "item" , collector = {"Fsdm"}},
 	["Instant Poison VI"] = {itemkind = "item", class = {Rogue = {}}},
	}
FsR_TrackedMaterial = {}
FsR_ItemTrade = {}
FsR_ItemTrade.PlayerToTradeWith = {}
FsR_ItemTrade.TradingWindowCloseTime = GetTime() - 30
FsR_ItemTrade.IndexYouLast = 0
FsR_ItemTrade.IndexPartnerLast = 0
FsR_ItemTrade.LastRequestTarget = nil
FsR_ItemTrade.NextRequestTime = GetTime()
FsR_ItemTrade.LastItemUpdate = GetTime()
FsR_ItemTrade.TradeAcceptUpdate = GetTime()
FsR_ItemTrade.TradingStarted = GetTime
FsR_SummoningLastCast = GetTime()
--*Fs
MB_maxheal={Druid=4,Priest=2,Shaman=5,Paladin=4}
MB_reportcpu=false
MB_reportzerotime=false
MB_reportbusy=false
MB_debugmsgs=false
MBID={}
MB_dcrrangeerr=nil
MB_dcrreq=nil
MB_SummonTargetId = ""
MB_dcrblacklist={}
MB_raidleader=nil
MB_tanks_introuble={}
MB_chumps_introuble={}
MB_raid_damage={}
MB_My_cc_target=nil
MB_My_int_target=nil
MB_My_heal_target=nil
MB_My_ot_target=nil
MB_prev_reagent_count={}
MB_tradeopen=false
MB_lowbies={}
MB_last_buff=""
MB_last_target=""
MB_bestmagewater={}
MB_cc_current={Mage=1,Warlock=1,Priest=1,Druid=1}
MB_int_current={Rogue=1,Mage=1}
MB_fear_current={Warlock=1,Hunter=1}
MB_currentraidtarget=1
MB_isCasting=false
MB_isChanneling=false
MB_ot_index=1
MB_castingfrost=true
MB_stopcasting=false
MB_ignited=false
MB_tankmsgtimeout=GetTime()
MB_shmsgtimeout=GetTime()
MB_chumpmsgtimeout=GetTime()
MB_tauntmsgtimeout=GetTime()
MB_DruidTankInParty=false
MB_WarriorTankInParty=false
MB_NonTankDruids={}
MB_MeleeDPSInParty=0
MB_CastersInParty=0
MB_dedicated_targets={}
MB_raidtargetnames={[8]="Skull",[7]="Cross",[6]="Square",[5]="Moon",[4]="Triangle",[3]="Diamond",[2]="Condom",[1]="Star"}
MB_msgcd=GetTime()
MB_prev_msg=""
MB_CC_spell={Priest="Shackle Undead",Mage="Polymorph",Warlock="Banish",Druid="Hibernate"}
MB_INT_spell={Rogue="Kick",Shaman="Earth Shock(Rank1)",Mage="Counterspell",Warrior="Shield Bash"}
MB_Fear_spell={Warlock="Fear",Hunter="Scare Beast"}
MB_cooldowns={}
MB_rez_spells = { Druid="Rebirth",Paladin="Redemption",Priest="Resurrection", Shaman="Ancestral Spirit" }
MB_manacost={["Greater Blessing of Light"]=250,["Blessing of Light"]=50,["Greater Blessing of Salvation"]=250,["Blessing of Salvation"]=50,["Blessing of Kings"]=50,["Greater Blessing of Sanctuary"]=250,["Blessing of Sanctuary"]=50,["Greater Blessing of Kings"]=150,["Blessing of Wisdom"]=50,["Greater Blessing of Wisdom"]=250,["Blessing of Might"]=60,["Greater Blessing of Might"]=260,["Mark of the Wild"]=60,["Power Word: Fortitude"]=60,["Arcane Intellect"]=60,["Dampen Magic"]=500,["Amplify Magic"]=450,["Prayer of Fortitude"]=3400,["Prayer of Spirit"]=1940,["Gift of the Wild"]=1200,["Prayer of Shadow Protection"]=1300,["Arcane Brilliance"]=3230}
MB_reagent={["Greater Blessing of Kings"]="Symbol of Kings",["Greater Blessing of Wisdom"]="Symbol of Kings",["Greater Blessing of Might"]="Symbol of Kings",["Prayer of Fortitude"]="Sacred Candle",["Prayer of Spirit"]="Sacred Candle",["Gift of the Wild"]="Wild Thornroot",["Prayer of Shadow Protection"]="Sacred Candle",["Arcane Brilliance"]="Arcane Powder"}
MB_mywater={[4]="Conjured Water",[10]="Conjured Fresh Water",[20]="Conjured Purified Water",[30]="Conjured Spring Water",[40]="Conjured Mineral Water",[50]="Conjured Sparkling Water",[60]="Conjured Crystal Water"}
MB_slotmap={ [0]="ammo",[1]="head",[2]="neck",[3]="shoulder",[4]="shirt",[5]="chest",[6]="waist",[7]="legs",[8]="feet",[9]="wrist",[10]="hands",[11]="finger 1",[12]="finger 2",[13]="trinket 1",[14]="trinket 2",[15]="back",[16]="main hand",[17]="off hand",[18]="ranged",[19]="tabard"}
MB_party_healer_list = {}
MB_cooldown_cast={}
MB_classlist = {Warrior={},Mage={},Shaman={},Paladin={},Priest={},Rogue={},Druid={},Hunter={},Warlock={}}
MB_totem_table = {
	air_totems = {"Grace of Air Totem","Nature Resistance Totem","Windwall Totem","Windfury Totem"},
	earth_totems= {"Stoneskin Totem","Strength of Earth Totem","Earthbind Totem"},
	fire_totems= {"Flametongue Totem","Fire Nova Totem","Magma Totem","Searing Totem","Frost Resistance Totem","Tremor Totem" } ,
	water_totems={"Mana Spring Totem","Fire Resistance Totem","Healing Stream Totem" }
}
MB_dcrspell={ Priest={magic="Dispel Magic",
					disease_a="Abolish Disease",
		disease="Cure Disease"
	},
	Shaman={poison="Cure Poison",
					disease="Cure Disease"
	},
	Mage={curse="Remove Lesser Curse"
	},
	Paladin={magic="Cleanse",
					disease="Cleanse",
		poison="Cleanse"
	},
	Druid={curse="Remove Curse",
		poison_a="Abolish Poison",
		poison="Cure Poison"
	},
	Warrior={},
	Rogue={},
	Warlock={},
	Hunter={}
}
--For fast decurse, you must get the texture names by looking up the spell on live wowhead
--curse={["Lucifron's Curse"]="spell_shadow_blackplague",["Ancient Hysteria"]="spell_shadow_unholyfrenzy",["Curse of Weakness"]="spell_shadow_curseofmannoroth",["Curse of Blood"]="spell_shadow_ritualofsacrifice",["Shazzrah's Curse"]="spell_shadow_antishadow",["Curse of Recklessness"]="spell_shadow_unholystrength"},
MB_curselist={
	curse={["Ancient Hysteria"]="spell_shadow_unholyfrenzy",["Curse of Blood"]="spell_shadow_ritualofsacrifice",["Shazzrah's Curse"]="spell_shadow_antishadow"},
	magic={["Impending Doom"]="spell_shadow_nightofthedead",["Cauterizing Flames"]="spell_fire_volcano",["Ignite Mana"]="spell_fire_incinerate",["Incite Flames"]="spell_fire_flameblades"},
	disease={},
	poison={}
}
MB_SavedBinding = {Active = false, Time = 0, Binding2 = "ACTIONBUTTON2", Binding3 = "ACTIONBUTTON3"}
MB_RAIS_startTime = 0
MB_RAIS_castStart = false
MB_RAIS_swingStart = false
MB_RAIS_aimedStart = false
MB_RAIS_finished = false
MB_RAIS_shooting = false
local posX, posY;
local MB_interruptTime; -- Concussive shot miatt
local castTime = 0.65
MB_swingTime=0
local MB_berserkValue = false
local sST,sSCD = 0,0
local sSTold
function SpellExists(findspell)
	if not findspell then return end
	for i = 1, MAX_SKILLLINE_TABS do
		local name, texture, offset, numSpells = GetSpellTabInfo(i);
		if not name then break end
		for s = offset + 1, offset + numSpells do
		local	spell, rank = GetSpellName(s, BOOKTYPE_SPELL);
		if rank then
			local spell = spell.." "..rank;
		end
		if string.find(spell,findspell,nil,true) then
			return true
		end
		end
	end
end
myclass=UnitClass("player")
myname=UnitName("player")
MB_i_cure_curse = SpellExists(MB_dcrspell[myclass].curse)
MB_i_cure_poison = SpellExists(MB_dcrspell[myclass].poison) or SpellExists(MB_dcrspell[myclass].poison_a)
MB_i_cure_disease = SpellExists(MB_dcrspell[myclass].disease) or SpellExists(MB_dcrspell[myclass].disease_a)
MB_i_cure_magic = SpellExists(MB_dcrspell[myclass].magic)
function InitializeClasslists()
	if not UnitInRaid("player") and GetNumPartyMembers()==0 then return end
	MB_classlist={Warrior={},Mage={},Shaman={},Paladin={},Priest={},Rogue={},Druid={},Hunter={},Warlock={}}
	if UnitInRaid("player") then
		MBID={}
		for i=1,GetNumRaidMembers() do
			local name,rank,subgroup,level,class,fileName,zone,online,isdead=GetRaidRosterInfo(i)
			if not name then return end
			if name and class and UnitIsConnected("raid"..i) then table.insert(MB_classlist[class],name) MBID[name]="raid"..i end
			if (class=="Rogue" or class=="Warrior") and UnitInParty("raid"..i) and UnitIsConnected("raid"..i) then MB_MeleeDPSInParty=MB_MeleeDPSInParty+1 end
			if (class=="Mage" or class=="Warlock" or class=="Shaman" or class=="Priest" or class=="Paladin") and UnitInParty("raid"..i) and UnitIsConnected("raid"..i) then MB_CastersInParty=MB_CastersInParty+1 end
		end
		MB_ots={}
		MB_tankinraid={}
		for k,tank in pairs(MB_tanklist) do
			if MBID[tank] then
			MB_RealTanksInRaid=true
			if UnitInParty(MBID[tank]) then
				if UnitClass(MBID[tank])=="Druid" then MB_DruidTankInParty = true end
				if UnitClass(MBID[tank])=="Warrior" then MB_WarriorTankInParty = true end
			end
			if tank~=myname then table.insert(MB_ots,tank) end
			table.insert(MB_tankinraid,tank)
		end
		end
		MB_healerinraid={}
		for k,healer in pairs(MB_healer_list) do
			if MBID[healer] then
				table.insert(MB_healerinraid,healer)
			end
		end
		MB_chumplist={}
		for chump,id in pairs(MBID) do
			if not FindInTable(MB_tankinraid,chump) and not FindInTable(MB_healerinraid,chump) then table.insert(MB_chumplist,chump) end
		end
		if TableLength(MB_ots)==0 and TableLength(MB_classlist["Warlock"])>0 then
			--Warlocks are now ots, since you have no real ots!
			for k,tank in pairs(MB_classlist["Warlock"]) do
				local name, realm=UnitName("player")
					if MBID[tank] and UnitIsConnected(MBID[tank]) and tank~=name then
						table.insert(MB_ots,tank)
					end
			end
		end
		if TableLength(MB_ots)==0 and TableLength(MB_classlist["Hunter"])>0 then
			--Hunters are now ots, since you have no real ots!
			for k,tank in pairs(MB_classlist["Hunter"]) do
				local name, realm=UnitName("player")
				if MBID[tank] and UnitIsConnected(MBID[tank]) and tank~=name then
					table.insert(MB_ots,tank)
				end
			end
		end
		table.sort(MB_ots)
	else
	--Party initialize
		MBID={}
		MB_classlist={Warrior={},Mage={},Shaman={},Paladin={},Priest={},Rogue={},Druid={},Hunter={},Warlock={}}
		for i=1,GetNumPartyMembers()+1 do
			local id
			if i==GetNumPartyMembers()+1 then id="player" else id="party"..i end
			local name=UnitName(id)
			local class=UnitClass(id)
			MBID[name]=id
			if not name or not class then break end
			table.insert(MB_classlist[class],name)
			if (class=="Rogue" or class=="Warrior") and UnitInParty(id) and UnitIsConnected(id) then MB_MeleeDPSInParty=MB_MeleeDPSInParty+1 end
			if (class=="Mage" or class=="Warlock" or class=="Shaman" or class=="Priest" or class=="Paladin") and UnitInParty(id) and UnitIsConnected(id) then MB_CastersInParty=MB_CastersInParty+1 end
		end
		MB_ots={}
		MB_tankinraid={}
		for k,tank in pairs(MB_tanklist) do
			if MBID[tank] then
				MB_RealTanksInRaid=true
				if UnitInParty(MBID[tank]) then
					if UnitClass(MBID[tank])=="Druid" then MB_DruidTankInParty = true end
					if UnitClass(MBID[tank])=="Warrior" then MB_WarriorTankInParty = true end
				end
				if tank~=myname then table.insert(MB_ots,tank) end
				table.insert(MB_tankinraid,tank)
			end
		end
		MB_healerinraid={}
		for k,healer in pairs(MB_healer_list) do
			if MBID[healer] then
				table.insert(MB_healerinraid,healer)
			end
		end
		MB_chumplist={}
		for chump,id in pairs(MBID) do
			if not FindInTable(MB_tankinraid,chump) and not FindInTable(MB_healerinraid,chump) then table.insert(MB_chumplist,chump) end
		end
		if TableLength(MB_ots)==0 and TableLength(MB_classlist["Warlock"])>0 then
		--Warlocks are now ots, since you have no real ots!
			for k,tank in pairs(MB_classlist["Warlock"]) do
				local name, realm=UnitName("player")
					if MBID[tank] and UnitIsConnected(MBID[tank]) and tank~=name then
						table.insert(MB_ots,tank)
					end
			end
					end
		if TableLength(MB_ots)==0 and TableLength(MB_classlist["Hunter"])>0 then
		--Hunters are now ots, since you have no real ots!
			for k,tank in pairs(MB_classlist["Hunter"]) do
				local name, realm=UnitName("player")
				if MBID[tank] and UnitIsConnected(MBID[tank]) and tank~=name then
					table.insert(MB_ots,tank)
				end
			end
		end
		table.sort(MB_ots)
	end
end
function MB_GlobalCD_Check()
	local _,_,offset,numSpells = GetSpellTabInfo(GetNumSpellTabs())
	local numAllSpell = offset + numSpells;
	for i=1,numAllSpell do
	local name = GetSpellName(i,"BOOKTYPE_SPELL");
	if ( name == "Serpent Sting" ) then
		sST,sSCD = GetSpellCooldown(i,"BOOKTYPE_SPELL")
	end
	end
end
function MB_Cast_Start()
	posX, posY = GetPlayerMapPosition("player");
	MB_RAIS_castStart = GetTime();
	MB_RAIS_startTime = GetTime();
end
function MB_Cast_Update()
	MB_relative = GetTime() - MB_RAIS_castStart
	if ( MB_relative > castTime ) then
		MB_RAIS_castStart = false;
	end
end
function MB_Cast_Interrupted()
	MB_RAIS_swingStart = false;
	MB_Cast_Start()
end
function MB_Shot_Start()
	MB_Cast_Start();
	MB_RAIS_shooting = true;
	MB_RAIS_finished = false
end
function MB_Shot_End()
	MB_RAIS_castStart = false
	MB_RAIS_shooting = false
	MB_RAIS_finished = true
end
function MB_Swing_Start()
	MB_swingTime = UnitRangedDamage("player") - castTime;
	MB_RAIS_castStart = false
	MB_RAIS_swingStart = GetTime();
end
MB_AimedID=""
function MB_AimedID_Get()
	local _,_,offset,numSpells = GetSpellTabInfo(GetNumSpellTabs())
	local numAllSpell = offset + numSpells;
	for MBspellID=1,numAllSpell do
		local name = GetSpellName(MBspellID,"BOOKTYPE_SPELL");
		if ( name == "Aimed Shot" ) then
			MB_AimedID = MBspellID
		end
	end
end
MBCastSpell = CastSpell;
function CastSpell(MBspellID, spellTab)
	MB_AimedID_Get();
	if ( MBspellID == MB_AimedID and spellTab == "BOOKTYPE_SPELL" ) then
		MB_Aimed_Start()
	end
	MBCastSpell(MBspellID,spellTab);
end
MBCastSpellByName = CastSpellByName;
function CastSpellByName(spellName)
	if ( spellName == "Aimed Shot" ) then
		MB_Aimed_Start()
	end
	MBCastSpellByName(spellName)
end
function MB_Aimed_Start()
	MB_RAIS_aimedStart = GetTime()
	MB_RAIS_castStart = false
	local castTime_Aimed = 3
	if buffed("Berserk","player") then
		castTime_Aimed = castTime_Aimed/1.3
	end
	if buffed("Rapid Fire","player") then
		castTime_Aimed = castTime_Aimed/1.4
	end
	if buffed("Berserking","player") then
		castTime_Aimed = castTime_Aimed/ (1 + MB_berserkValue)
	end
	if buffed("Kiss of the Spider","player") then
		castTime_Aimed = castTime_Aimed/1.2
	end
end
---------------END OF ALL GLOBALS----------------------------------------------------------
--THERE IS ADDITIONAL EDITING NEEDED FOR THE FOLLOWING FUNCTIONS:
--Also see below: MB_maxheal to set the max ranks of heal spells you want to use.
function partyup()
	if MB_reportcpu then MB_cpustart=GetTime() end
	if IsControlKeyDown() then GetMoneyFromLeader(25) return ReportCPU("Partyup getmoney") end
	if UnitInRaid("player") and (not IsRaidLeader() or not IsRaidOfficer()) then Print("MAKE ME RAID LEADER OR ASSIST AND I'D BE GLAD TO INVITE MORE, OR PROMOTE, OR CHANGE LOOT.") return ReportCPU("Partyup notinraid") end
	i=1
	for k,toon in pairs(MB_toonlist) do
	if UnitName("player")~=toon then
		if i==1 then Print(toon) end
		i=i+1
		TargetByName(toon,1)
		if UnitIsConnected("target") then Print("Inviting "..toon) InviteByName(toon) end
	end
	PromoteToAssistant(toon)
	end
	SetLootMethod("freeforall",UnitName("player"))
	--AutoPromote people you trust
	if GetNumPartyMembers()==4 then ConvertToRaid(); end
	--if GetNumPartyMembers()==4 and UnitLevel("player")==60 then ConvertToRaid(); end
	ReportCPU("Partyup")
end
function SortRaid()
--Every raid needs to put its toons in specific groups to control buff sharing
--This function does that. Put it in slot 0 along with the raid invite function
--The numbers refer to which group those guys go in.
	if not IAmFocus() then return end
	local fury20manorder = {
	Shamanquatro=1,
	Furyswipes=1,
	Brutalic=1,
	Bubbling=1,
	Monterey=1,
	Shamancinco=2,
	Cuppycake=2,
	Crookshanks=2,
	Kimboslicer=2,
	Cashme=2,
	Shamanseis=3,
	Silza=3,
	Badlands=3,
	Brutalium=3,
	Brutaliar=3,
	Shamanuno=4,
	Zillazee=4,
	Punchingbear=4,
	Icefloes=4,
	Flameshocked=4
	}
local moot20manorder = {
	Shamanquatro=1,
	Furyswipes=1,
	Brutalic=1,
	Bubbling=1,
	Monterey=1,
	Shamancinco=2,
	Mootalia=2,
	Crookshanks=2,
	Kimboslicer=2,
	Cashme=2,
	Shamanseis=3,
	Silza=3,
	Badlands=3,
	Brutalium=3,
	Brutaliar=3,
	Shamanuno=4,
	Zillazee=4,
	Punchingbear=4,
	Icefloes=4,
	Flameshocked=4
	}
local cuppy20manorder = {
	Shamanquatro=1,
	Eversmile=1,
	Brutalic=1,
	Bubbling=1,
	Monterey=1,
	Shamancinco=2,
	Cuppycake=2,
	Crookshanks=2,
	Kimboslicer=2,
	Cashme=2,
	Shamanseis=3,
	Silza=3,
	Badlands=3,
	Brutalium=3,
	Brutaliar=3,
	Shamanuno=4,
	Zillazee=4,
	Punchingbear=4,
	Icefloes=4,
	Flameshocked=4
	}
local komal20manorder = {
	Shamanocho=1,
	Komal=1,
	Yellowstone=1,
	Brutalia=1,
	Avindra=1,
	Shamansiete=2,
	Eversmile=2,
	Toshredsusay=2,
	Stabsya=2,
	Refill=2,
	Calypsa=3,
	Merazza=3,
	Jenjja=3,
	Zumwalt=3,
	Barie=3,
	Shamantres =4,
	Everglades=4,
	Orinoco=4,
	Olympic=4,
	Brutalio=4
	}
local jindo20manorder = {
	Shamanuno=1,
	Komal=1,
	Furyswipes=1,
	Brutalio=1,
	Everglades=1,
	Brutalic=2,
	Icefloes=2,
	Flameshocked=2,
	Refill=2,
	Brutalia=2,
	Yellowstone=3,
	Punchingbear=3,
	Shamancinco=3,
	Stabsya=3,
	Monterey=3,
	Cashme =4,
	Toshredsusay=4,
	Crookshanks=4,
	Shamanquatro=4,
	Kimboslicer=4
	}
local titan40man = {
	Desdemonia=1,
	Holybabe=1,
	Chuckspears=1,
	Huntmilfs=1,
	Titanator=1,
	Drainsoulia =2,
	Feelinghordy=2,
	Clubseals=2,
	Indulgences=2,
	Wiglet=2,
	Bubblydoom=3,
	Skankia=3,
	Steezmachine=3,
	Wastrel=3,
	Hotwand=3,
	Bridesmage=4,
	Trifling=4,
	Chuntaro=4,
	Absharam=4,
	Dirtyshirley=4,
	Bubblenator=5,
	Pygmage=5,
	Jizzgrizz=5,
	Scissorin=5,
	Bijkurdista=5,
	Zombiewife=6,
	Kilimanjaro=6,
	Jyssyj=6,
	Heartstrike=6,
	Buy=6,
	Bubblebootie=7,
	Healuraz=7,
	Kneearrow=7,
	Iiliililiil=7,
	Dwarftoss=7,
	Slamminsam=8,
	Ovendodger=8,
	Avadevine=8,
	Trashly=8,
	Holymufdiver=8
	}
local silli40manorder = {
	Shamancinco=1,
	Komal=1,
	Furyswipes=1,
	Silza=1,
	Brutalio=1,
	Shamantres =2,
	Olympic=2,
	Yellowstone=2,
	Monterey=2,
	Refill=2,
	Shamanseis=3,
	Badlands=3,
	Everglades=3,
	Avindra=3,
	Stabsya=3,
	Shamanquatro=4,
	Brutalia=4,
	Brutalic=4,
	Brutaliar=4,
	Zumwalt=4,
	Shamanuno=5,
	Flameshocked=5,
	Brutalium=5,
	Jenjja=5,
	Cashme=5,
	Shamansiete=6,
	Zillazee=6,
	Barie=6,
	Orinoco=6,
	Toshredsusay=6,
	Shamanocho=7,
	Punchingbear=7,
	Calypsa=7,
	Bubbling=7,
	Icefloes=7,
	Silithusboss = 8,
	Kimboslicer=8,
	Crookshanks=8,
	Eversmile=8,
	Cuppycake=8
	}
local pa15manraid1 = {
	Frostshock=1,
	Brutalia=1,
	Deathwish=1,
	Olympic=1,
	Eversmile=1,
	Fireball =2,
	Scorch=2,
	Stormhammer=2,
	Jindo=2,
	Starfire=2,
	Refill=3,
	Earthshield=3,
	Hellfire=3,
	Moonlight=3,
	Furyswipes=3
	}
	local full40manorder = {
	Shamanocho=1,
	Komal=1,
	Eversmile=1,
	Olympic=1,
	Brutalio=1,
	Shamancinco =2,
	Cuppycake=2,
	Brutaliar=2,
	Monterey=2,
	Furyswipes=2,
	Shamanseis=3,
	Crookshanks=3,
	Kimboslicer=3,
	Zumwalt=3,
	Everglades=3,
	Shamanquatro=4,
	Brutalia=4,
	Yellowstone=4,
	Mootalia=4,
	Refill=4,
	Shamanuno=5,
	Flameshocked=5,
	Brutalium=5,
	Jenjja=5,
	Cashme=5,
	Shamantres=6,
	Avindra=6,
	Barie=6,
	Orinoco=6,
	Brutalic=6,
	Zillazee=7,
	Bubbling=7,
	Calypsa=7,
	Punchingbear=7,
	Icefloes=7,
	Shamansiete = 8,
	Silza=8,
	Stabsya=8,
	Toshredsusay=8,
	Badlands=8
	}
	if GetNumRaidMembers()>20 and MBID["Titanator"] then
		raidgrouporder=titan40man
	elseif GetNumRaidMembers()>20 and MBID["Silithusboss"] and MBID["Eversmile"] then
		raidgrouporder=silli40manorder
	elseif GetNumRaidMembers()>20 and MBID["Skeleton"] and MBID["Eversmile"] then
		raidgrouporder=pafull40manorder
	elseif GetNumRaidMembers()>20 then
		raidgrouporder=full40manorder
	elseif GetNumRaidMembers()==15 and MBID["Jindo"] and MBID["Starfire"] then
		raidgrouporder=pa15manraid1
	elseif MBID["Furyswipes"] and MBID["Komal"] then
		raidgrouporder=jindo20manorder
	elseif MBID["Furyswipes"] and MBID["Mootalia"] then
		raidgrouporder=moot20manorder
	elseif MBID["Furyswipes"] then
		raidgrouporder=fury20manorder
	elseif MBID["Eversmile"] and MBID["Cuppycake"] then
		raidgrouporder=cuppy20manorder
	elseif MBID["Komal"] then
		raidgrouporder=komal20manorder
	end
	local raidnames= {}
	for i=1,GetNumRaidMembers() do
		local name,rank,subgroup,level,class,fileName,zone,online,isdead=GetRaidRosterInfo(i)
		raidnames[name]=i
	end
	for name,idx in raidnames do
		local subgroup=WhichSubgroup(name)
		TargetByName(name,1)
		local online=UnitIsConnected("target")
		if not raidgrouporder[name] or not online then
			if not raidgrouporder[name] then Print("ERROR! "..name.." is not in the raidgrouporder list! This will mess up raid order!") end
			if not online then Print("ERROR! "..name.." is offline. I cannot move him in raid automatically.") end
		else
			local targetgroup=raidgrouporder[name]
			if subgroup~=targetgroup then
				if RoomInGroup(targetgroup) then
						SetRaidSubgroup(idx,targetgroup)
				else
					for othername,otheridx in raidnames do
						local othersubgroup=WhichSubgroup(othername)
						if othername~=name and othersubgroup==targetgroup and othersubgroup~=raidgrouporder[othername] then
							SwapPos(raidnames,idx,otheridx)
						end
					end
				end
			end
		end
	end
end
function AutoDelete()
	if not MB_autodelete then return end
	--Delete certain items when beyond a certain number of stacks
	--have to pick food type based on hunter name and pet
	--It only works by STACKS. 1 means you allow 1 stack. 2 means 2 stacks.
	--That could be 1.5 stacks also. Partial stacks count as a stack.
	local amount=0
	MB_TheList={
	["Runecloth"]=0,
	["Darkmoon Special"]=0,
	["Rock Chip"]=0,
	["Jagged Axe"]=0,
	["Plans: Thorium"]=0,
	["Crafted Light Shot"]=0,
	["Scarlet Cannonball"]=0,
	["Rough Stone"]=0,
	["Coarse Blasting"]=0,
	["Melon "]=0,
	["Bruiseweed"]=0,
	["Brocade "]=0,
	["Blackrock Pauldrons"]=0,
	["Lesser Healing Potion"]=0,
	["Gnoll Spittle"]=0,
	["Rawhide "]=0,
	["Buzzard "]=0,
	["Tough Condor "]=0,
	["Ivory Boar"]=0,
	["Tiny Fang"]=0,
	["Linked "]=0,
	["Wooden Maul"]=0,
	["Short Cutlass"]=0,
	["Smooth Pebble"]=0,
	["Meat Cleaver"]=0,
	["Decomposed "]=0,
	["Lifeless Skull"]=0,
	["Large Slimy"]=0,
	["Bronze Tube"]=0,
	["Extinguished Torch"]=0,
	["Taut Compound"]=0,
	["Broken Arrow"]=0,
	["Shadowgem"]=0,
	["Linen Cloth"]=0,
	["Minor Mana Potion"]=0,
	["Broken Boar Tusk"]=0,
	["Boar Intestines"]=0,
	["Boar Ribs"]=0,
	["Ice Cold Milk"]=0,
	["Rough Vulture Feathers"]=0,
	["Coarse Stone"]=0,
	["Goretusk Snout"]=0,
	["Goretusk Liver"]=0,
	["Severed Talon"]=0,
	["Small Egg"]=0,
	["Light Feather"]=0,
	["Tigerseye"]=0,
	["Moss Agate"]=0,
	["Kobold Mining Shovel"]=0,
	["Minor Healing Potion"]=0,
	["Refreshing Spring Water"]=0,
	["Shiny Red Apple"]=0,
	["Darnassian Bleu"]=0,
	["Forest Mushroom Cap"]=0,
	["Chipped Boar Tusk"]=0,
	["Khadgar's Whisker"]=0,
	["Chunk of Boar Meat"]=0,
	["Stringy Vulture Meat"]=0,
	["Glowing Wax Stick"]=0,
	["Large Candle"]=0,
	["Haunch of Meat"]=0,
	["Gnoll Paw"]=0,
	["Gold Dust"]=0,
	["Heavy Stone"]=0,
	["Copper Ore"]=0,
	["Wool Cloth"]=0,
	["Cracked Bill"]=0,
	["Tin Ore"]=0,
	["Vulture Talon"]=0,
	["Clam Meat"]=0,
	["Dalaran Sharp"]=0,
	["Lifeless Stone"]=0,
	["Burning Pitch"]=0,
	["Primed Musket"]=0,
	["Light Plate"]=0,
	["Bulky Maul"]=0,
	["Brilliant Chromatic Scale"]=0,
	["Fiery Gland"]=0,
	["Wolf Meat"]=0,
	["Splintering Battle Axe"]=0,
	["Clout Mace"]=0,
	["Fine Pointed Dagger"]=0,
	["Blood Scythe"]=0,
	["Feathery Wing"]=0,
	["Ironfeather"]=0,
	["Undamaged Hip"]=0,
	["Shimmering Basil"]=0,
	["Imperfect Draen"]=0,
	["Vibrant Plume"]=0,
	["Basilisk Venom"]=0,
	["Basilisk Brain"]=0,
	["Thick Furry Mane"]=0,
	["Coal"]=0,
	["Stout War"]=0,
	["Solid Stone"]=0,
	["Deeprock Stone"]=0,
	["Ripped Wing"]=0,
	["Journeyman's"]=0,
	["Overlinked "]=0,
	["Heavy Flint Ax"]=0,
	["Sandworm Meat"]=0,
	["Slimy Ichor"]=0,
	["Gelatinous Goo"]=0,
	["Heavy Silith"]=0,
	["Armored Chitin"]=0,
	["Crochet "]=0,
	["Dripping Spider "]=0,
	["Thick Leather "]=0,
	["Spiked "]=0,
	["Greater Mana"]=0,
	["Twill "]=0,
	["Laminated Scale "]=0,
	["Laminate "]=0,
	["Smooth Leather "]=0,
	["Overlinked Chain"]=0,
	["Superior Mana"]=0,
	["Tapered Greatsword"]=0,
	["Thick Leather Hat"]=0,
	["Patch of Fine Fur"]=0,
	["Twill Shoulderpads"]=0,
	["Light Plate Belt"]=0,
	["Sharp Shortsword"]=0,
	["Thick Spider's"]=0,
	["Laminated Scale Pants"]=0,
	["Crushing Maul"]=0,
	["Smooth Stone Chip"]=0,
	["Superior Heal"]=0,
	["Light Plate Helmet"]=0,
	["Thick Leather Bracers"]=0,
	["Alterac Swiss"]=0,
	["Heavy War Staff"]=0,
	["Thick Leather Shoulderpads"]=0,
	["Large Bat Fang"]=0,
	["Dripping Spider"]=0,
	["Hard Spider"]=0,
	["Shadow Silk"]=0,
	["Ironweb Spider"]=0,
	["Pattern:"]=0,
	["Brilliant Scale"]=0,
	["Forked Tongue"]=0,
	["Powerful Mojo"]=1,
	["Pristine Raptor Skull"]=0,
	["Crochet Bracers"]=0,
	["Deflecting Tower"]=0,
	["Codex: Prayer of Fortitude"]=0,
	["Frayed Abomination Stitching"]=0,
	["Glowing Scorpid Blood"]=0,
	["Smooth Leather Bracers"]=0,
	["Nightcrawlers"]=0,
	["Mystery Meat"]=0,
	["Overlinked Chain Armor"]=0,
	["Protective Pavise"]=0,
	["Scarlet Cannonball"]=0,
	["Light Plate Boots"]=0,
	["Smooth Stone Chip"]=0,
	["Shiny Polished Stone"]=0,
	["Wicked Claw"]=0,
	["Elder Raptor Feathers"]=0,
	["Trophy Raptor Skull"]=0,
	["Star Ruby"]=0,
	["Scroll of Strength"]=0,
	["Scroll of Protection"]=0,
	["Scroll of Stamina"]=0,
	["Scroll of Spirit"]=0,
	["Scroll of Intellect"]=0,
	["Scroll of Agility"]=0,
	["Dried King"]=0,
	["Sentinel Musket"]=0,
	["Fine Longsword"]=0,
	["Twilight Cultist Robe"]=6,
	["Twilight Cultist Cowl"]=6,
	["Twilight Cultist Mantle"]=6,
	["Homemade Cherry"]=0,
	["Roasted Quail"]=0,
	["Evil Bat Eye"]=0,
	["Morning Glory Dew"]=1,
	["Lockbox"]=0,
	["Sabertooth Fang"]=0,
	["Spider Silk"]=0,
	["Idol of the Moon"]=0,
	["Totem of the Storm"]=0,
	["Patch of fine fur"]=0,
	["Aquamarine"]=0,
	["Tangy Clam"]=0,
	["Huge Venom Sac"]=0,
	["Large Scorpid Claw"]=0,
	["Breath of Wind"]=0,
	["Mutton Chop"]=0}
	MB_TheList={}
	if MB_raidleader=="Eversmile" or MB_raidleader=="Titanator" then
		MB_TheList={
		["Runecloth"]=0,
		["Darkmoon Special"]=0,
		["Rock Chip"]=0,
		["Jagged Axe"]=0,
		["Plans: Thorium"]=0,
		["Crafted Light Shot"]=0,
		["Scarlet Cannonball"]=0,
		["Rough Stone"]=0,
		["Coarse Blasting"]=0,
		["Melon "]=0,
		["Bruiseweed"]=0,
		["Brocade "]=0,
		["Blackrock Pauldrons"]=0,
		["Lesser Healing Potion"]=0,
		["Gnoll Spittle"]=0,
		["Rawhide "]=0,
		["Buzzard "]=0,
		["Tough Condor "]=0,
		["Ivory Boar"]=0,
		["Tiny Fang"]=0,
		["Linked "]=0,
		["Wooden Maul"]=0,
		["Short Cutlass"]=0,
		["Smooth Pebble"]=0,
		["Meat Cleaver"]=0,
		["Decomposed "]=0,
		["Lifeless Skull"]=0,
		["Large Slimy"]=0,
		["Bronze Tube"]=0,
		["Extinguished Torch"]=0,
		["Taut Compound"]=0,
		["Broken Arrow"]=0,
		["Shadowgem"]=0,
		["Linen Cloth"]=0,
		["Minor Mana Potion"]=0,
		["Broken Boar Tusk"]=0,
		["Boar Intestines"]=0,
		["Boar Ribs"]=0,
		["Ice Cold Milk"]=0,
		["Rough Vulture Feathers"]=0,
		["Coarse Stone"]=0,
		["Goretusk Snout"]=0,
		["Goretusk Liver"]=0,
		["Severed Talon"]=0,
		["Small Egg"]=0,
		["Light Feather"]=0,
		["Tigerseye"]=0,
		["Moss Agate"]=0,
		["Kobold Mining Shovel"]=0,
		["Minor Healing Potion"]=0,
		["Refreshing Spring Water"]=0,
		["Shiny Red Apple"]=0,
		["Darnassian Bleu"]=0,
		["Forest Mushroom Cap"]=0,
		["Chipped Boar Tusk"]=0,
		["Khadgar's Whisker"]=0,
		["Chunk of Boar Meat"]=0,
		["Stringy Vulture Meat"]=0,
		["Glowing Wax Stick"]=0,
		["Large Candle"]=0,
		["Haunch of Meat"]=0,
		["Gnoll Paw"]=0,
		["Gold Dust"]=0,
		["Heavy Stone"]=0,
		["Copper Ore"]=0,
		["Wool Cloth"]=0,
		["Cracked Bill"]=0,
		["Tin Ore"]=0,
		["Vulture Talon"]=0,
		["Clam Meat"]=0,
		["Dalaran Sharp"]=0,
		["Lifeless Stone"]=0,
		["Burning Pitch"]=0,
		["Primed Musket"]=0,
		["Light Plate"]=0,
		["Bulky Maul"]=0,
		["Brilliant Chromatic Scale"]=0,
		["Fiery Gland"]=0,
		["Wolf Meat"]=0,
		["Splintering Battle Axe"]=0,
		["Clout Mace"]=0,
		["Fine Pointed Dagger"]=0,
		["Blood Scythe"]=0,
		["Feathery Wing"]=0,
		["Ironfeather"]=0,
		["Undamaged Hip"]=0,
		["Shimmering Basil"]=0,
		["Imperfect Draen"]=0,
		["Vibrant Plume"]=0,
		["Basilisk Venom"]=0,
		["Basilisk Brain"]=0,
		["Thick Furry Mane"]=0,
		["Coal"]=0,
		["Stout War"]=0,
		["Solid Stone"]=0,
		["Deeprock Stone"]=0,
		["Ripped Wing"]=0,
		["Journeyman's"]=0,
		["Overlinked "]=0,
		["Heavy Flint Ax"]=0,
		["Sandworm Meat"]=0,
		["Slimy Ichor"]=0,
		["Gelatinous Goo"]=0,
		["Heavy Silith"]=0,
		["Armored Chitin"]=0,
		["Crochet "]=0,
		["Dripping Spider "]=0,
		["Thick Leather "]=0,
		["Spiked "]=0,
		["Greater Mana"]=0,
		["Twill "]=0,
		["Laminated Scale "]=0,
		["Laminate "]=0,
		["Smooth Leather "]=0,
		["Overlinked Chain"]=0,
		["Superior Mana"]=0,
		["Tapered Greatsword"]=0,
		["Thick Leather Hat"]=0,
		["Patch of Fine Fur"]=0,
		["Twill Shoulderpads"]=0,
		["Light Plate Belt"]=0,
		["Sharp Shortsword"]=0,
		["Thick Spider's"]=0,
		["Laminated Scale Pants"]=0,
		["Crushing Maul"]=0,
		["Smooth Stone Chip"]=0,
		["Superior Heal"]=0,
		["Light Plate Helmet"]=0,
		["Thick Leather Bracers"]=0,
		["Alterac Swiss"]=0,
		["Heavy War Staff"]=0,
		["Thick Leather Shoulderpads"]=0,
		["Large Bat Fang"]=0,
		["Dripping Spider"]=0,
		["Hard Spider"]=0,
		["Shadow Silk"]=0,
		["Ironweb Spider"]=0,
		["Pattern:"]=0,
		["Brilliant Scale"]=0,
		["Forked Tongue"]=0,
		["Powerful Mojo"]=1,
		["Pristine Raptor Skull"]=0,
		["Crochet Bracers"]=0,
		["Deflecting Tower"]=0,
		["Frayed Abomination Stitching"]=0,
		["Glowing Scorpid Blood"]=0,
		["Smooth Leather Bracers"]=0,
		["Nightcrawlers"]=0,
		["Mystery Meat"]=0,
		["Overlinked Chain Armor"]=0,
		["Protective Pavise"]=0,
		["Scarlet Cannonball"]=0,
		["Light Plate Boots"]=0,
		["Smooth Stone Chip"]=0,
		["Shiny Polished Stone"]=0,
		["Wicked Claw"]=0,
		["Elder Raptor Feathers"]=0,
		["Trophy Raptor Skull"]=0,
		["Star Ruby"]=0,
		["Scroll of Strength"]=0,
		["Scroll of Protection"]=0,
		["Scroll of Stamina"]=0,
		["Scroll of Spirit"]=0,
		["Scroll of Intellect"]=0,
		["Scroll of Agility"]=0,
		["Dried King"]=0,
		["Sentinel Musket"]=0,
		["Fine Longsword"]=0,
		["Twilight Cultist Robe"]=6,
		["Twilight Cultist Cowl"]=6,
		["Twilight Cultist Mantle"]=6,
		["Homemade Cherry"]=0,
		["Evil Bat Eye"]=0,
		["Morning Glory Dew"]=1,
		["Sabertooth Fang"]=0,
		["Spider Silk"]=0,
		["Patch of fine fur"]=0,
		["Aquamarine"]=0,
		["Tangy Clam"]=0,
		["Huge Venom Sac"]=0,
		["Large Scorpid Claw"]=0,
		["Breath of Wind"]=0,
		["Mutton Chop"]=0,
		["Twill "]=0}
	end
	local CrapIGot={}
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag) do
		local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
		if texture then
			link=GetContainerItemLink(bag,slot)
			for key,limit in MB_TheList do
				if string.find(link,key) then
					if limit==0 then
						PickupContainerItem(bag,slot)
						DeleteCursorItem()
						Accept()
					elseif not FindInTable(CrapIGot,key) then
						table.insert(CrapIGot,key)
						CrapIGot[key]=1
					elseif CrapIGot[key]==limit then
						PickupContainerItem(bag,slot)
						DeleteCursorItem()
						Accept()
					else
						CrapIGot[key]=CrapIGot[key]+1
					end
				end
			end
		end
	end end
end
function Pentagram()
	--Make your shamen cast chain heal at each other. For fun.
	numshammys=IsInParty("Shaman")
	for i=1,numshammys do
		myOrder=MyClassOrder()
		if myOrder==numshammys then targetOrder=1 else targetOrder=myOrder+1 end
		TargetByName(GetClassOrder("Shaman",targetOrder),1)
		cast("Chain Heal(Rank 1)")
	end
end
-- lua code --THANKS TO ATTREYO FOR HELP ON THIS PART
-- create a frame, lets call it FSMB (FurySwipes MultiBoxing) ^^
FSMB = CreateFrame("Button","FSMB",UIParent)
-- register the events we want to use (this is why we made the frame)
FSMB:RegisterEvent("ADDON_LOADED") -- register event "ADDON_LOADED"
FSMB:RegisterEvent("RAID_ROSTER_UPDATE")
FSMB:RegisterEvent("PARTY_MEMBERS_CHANGED")
FSMB:RegisterEvent("PARTY_INVITE_REQUEST")
FSMB:RegisterEvent("CHAT_MSG_ADDON")
FSMB:RegisterEvent("SPELLCAST_START")
FSMB:RegisterEvent("CHAT_MSG_SPELL_SELF_BUFF")
FSMB:RegisterEvent("SPELLCAST_INTERRUPTED")
FSMB:RegisterEvent("SPELLCAST_FAILED")
FSMB:RegisterEvent("SPELLCAST_DELAYED")
FSMB:RegisterEvent("SPELLCAST_STOP")
FSMB:RegisterEvent("SPELLCAST_CHANNEL_START")
FSMB:RegisterEvent("SPELLCAST_CHANNEL_UPDATE")
FSMB:RegisterEvent("SPELLCAST_CHANNEL_STOP")
FSMB:RegisterEvent("PLAYER_REGEN_ENABLED")
FSMB:RegisterEvent("PLAYER_REGEN_DISABLED")
FSMB:RegisterEvent("TRADE_SHOW")
FSMB:RegisterEvent("TRADE_CLOSED")
FSMB:RegisterEvent("CONFIRM_SUMMON")
FSMB:RegisterEvent("START_LOOT_ROLL")
FSMB:RegisterEvent("RESURRECT_REQUEST")
FSMB:RegisterEvent("UNIT_INVENTORY_CHANGED")
FSMB:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START")
FSMB:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP")
FSMB:RegisterEvent("MERCHANT_UPDATE")
FSMB:RegisterEvent("MERCHANT_FILTER_ITEM_UPDATE")
FSMB:RegisterEvent("MERCHANT_SHOW")
FSMB:RegisterEvent("PLAYER_LOGIN")
FSMB:RegisterEvent("CURRENT_SPELL_CAST_CHANGED")
FSMB:RegisterEvent("START_AUTOREPEAT_SPELL")
FSMB:RegisterEvent("STOP_AUTOREPEAT_SPELL")
FSMB:RegisterEvent("ITEM_LOCK_CHANGED")
FSMB:RegisterEvent("CHAT_MSG_MONSTER_YELL")
FSMB:RegisterEvent("UI_ERROR_MESSAGE")
FSMB:RegisterEvent("AUTOFOLLOW_END")
--*Fs
FSMB:RegisterEvent("PLAYER_ENTERING_WORLD")
FSMB:RegisterEvent("BAG_UPDATE")
--*Fs
FSMB:RegisterEvent("CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE")
FSMB:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE")
SLASH_FIND1="/find"
SLASH_INIT1="/init"
SLASH_NORM1="/norm"
SlashCmdList["FIND"]=function(item)
	if UnitInRaid("player") then
		SendAddonMessage("MB_FIND",item,"RAID")
	else
		SendAddonMessage("MB_FIND",item)
	end
end
SlashCmdList["INIT"]=function()
	init()
end
SlashCmdList["NORM"]=function()
	norm()
end
FSMBtooltip=CreateFrame("GAMETOOLTIP", "FSMBtooltip", UIParent, "GameTooltipTemplate")
function GetPlusHeal()
	local plusheal=0
	local phn
	for i=1,18 do
		if GetInventoryItemLink("player",i) then
			local _,_,itemID = string.find(GetInventoryItemLink("player",i), "item:(%d+)")
			FSMBtooltip:SetOwner(UIParent, "ANCHOR_NONE");
			FSMBtooltip:ClearLines()
			FSMBtooltip:SetInventoryItem("player",i)
			FSMBtooltip:Show()
			local index = 1
			local ltext = getglobal("FSMBtooltipTextLeft"..index):GetText()
			while ltext ~= nil do
				ltext = getglobal("FSMBtooltipTextLeft"..index):GetText()
				if ltext ~= nil then
					if string.find(ltext,"Increases healing done by spells") then
						_,_,_,phn = string.find(ltext,"(%a+)%s*to?%s*(%d+)")
						plusheal = plusheal+phn
					end
					if string.find(ltext,"Increases damage and healing") then
						_,_,_,phn = string.find(ltext,"(%a+)%s*to?%s*(%d+)")
						plusheal = plusheal+phn
					end
					if string.find(ltext,"Healing and Spell Damage") then
						_,_,phn = string.find(ltext,"(%d+)")
						plusheal = plusheal+phn
					end
					if string.find(ltext,"Healing Spells") then
						_,_,phn = string.find(ltext,"(%d+)")
						plusheal = plusheal+phn
					end
				end
			index=index+1
			end
		end
	end
	FSMB_Settings["plusheal"] = plusheal
	--DEFAULT_CHAT_FRAME:AddMessage("Total +heal: "..plusheal)
	--SendChatMessage("Total +heal from gear: "..plusheal)
end
function IsSoulbound(itemlink)
	local soulbound=nil
	local boe=nil
	local _,_,itemID = string.find(itemlink, "item:(%d+)")
	FSMBtooltip:SetOwner(UIParent, "ANCHOR_NONE");
	FSMBtooltip:ClearLines()
	FSMBtooltip:SetHyperlink("item:"..itemID..":0:0:0");
	FSMBtooltip:Show()
	local index = 1
	local ltext = getglobal("FSMBtooltipTextLeft"..index):GetText()
	while ltext ~= nil do
		ltext = getglobal("FSMBtooltipTextLeft"..index):GetText()
		if ltext ~= nil then
			if string.find(ltext,"Soulbound") then
				soulbound=true
			end
			if string.find(ltext,"Binds when equipped") then
				boe=true
			end
			if soulbound and boe then return true end
		end
		index=index+1
	end
end
function IsUnbound(b,s)
	local soulbound=nil
	local boe=nil
	--local _,_,itemID = string.find(itemlink, "item:(%d+)")
	FSMBtooltip:SetOwner(UIParent, "ANCHOR_NONE");
	FSMBtooltip:ClearLines()
	FSMBtooltip:SetBagItem(b,s);
	FSMBtooltip:Show()
	local index = 1
	local ltext = getglobal("FSMBtooltipTextLeft"..index):GetText()
	while ltext ~= nil do
		ltext = getglobal("FSMBtooltipTextLeft"..index):GetText()
		if ltext ~= nil then
			if string.find(ltext,"Soulbound") then
				soulbound=true
			end
			if string.find(ltext,"Binds when equipped") then
				boe=true
			end
		end
		index=index+1
	end
	if not soulbound and boe then return true end
end
function focusme()
	MB_raidleader=UnitName("player")
	if UnitInRaid("player") then
		SendAddonMessage(MB_RAID,"focusme","RAID")
	else
		SendAddonMessage(MB_RAID,"focusme")
	end
end
-- create the OnEvent function
function FSMB:OnEvent()
	if (event == "ADDON_LOADED") and arg1 == "SuperMacro" then
		-- this event runs once the addon is loaded
		-- run all your init functions here
		if not FSMB_Settings then FSMB_Settings = {} end -- creates a table where you can store all your settings, adding the table to the toc file allows the data to be stored on logout and /reloadui
		FSMB:print("Addon loaded successfully!")
		FSMB:UnregisterEvent("Addon Loaded") -- unregister the event as we dont need it anymore
		InitializeClasslists()
	elseif (event == "CHAT_MSG_ADDON") then
		--Print("Addon message recieved from"..arg3)
		--Print(arg1)
		--Print(arg2)
		--Print(arg3)
		--if string.find(arg1,MB_RAID.."LPET") then Print("Got lockpet") end
		--if arg1==MB_RAID.."CLR_TARG" then Print("Got clrtarg") end
		if arg1=="MB_FIND" then
			item=arg2
			MB_Find(item)
		end
		if arg1==MB_RAID and arg2=="focusme" and arg4~=UnitName("player") then
			--Printd(MB_RAID.." Focusing " .. arg4)
			MB_raidleader=arg4
		elseif arg1==MB_RAID.."_CC" then
			local name,realm=UnitName("player")
			local ccer=string.gsub(arg2," .*","")
			local cc_caller=string.gsub(arg2,"^%S- ","")
			if name==ccer then
				AssistUnit(MBID[cc_caller])
				if ccer and MB_raidtargetnames[GetRaidTargetIndex("target")] and UnitInRaid("player") then
					RunLine("/raid I, "..ccer.." will be immobilizing "..MB_raidtargetnames[GetRaidTargetIndex("target")])
				elseif ccer and MB_raidtargetnames[GetRaidTargetIndex("target")] then
					RunLine("/party I, "..ccer.." will be immobilizing "..MB_raidtargetnames[GetRaidTargetIndex("target")])
				end
				MB_My_cc_target=GetRaidTargetIndex("target")
			end
		elseif arg1==MB_RAID.."_INT" then
			local name,realm=UnitName("player")
			local inter=string.gsub(arg2," .*","")
			local int_caller=string.gsub(arg2,"^%S- ","")
			if name==inter then
				AssistUnit(MBID[int_caller])
				if inter and UnitInRaid("player") then
					RunLine("/raid I, "..inter.." will be interrupting "..MB_raidtargetnames[GetRaidTargetIndex("target")])
				elseif inter then
					RunLine("/party I, "..inter.." will be interrupting "..MB_raidtargetnames[GetRaidTargetIndex("target")])
				end
				MB_My_int_target=GetRaidTargetIndex("target")
			end
		elseif arg1==MB_RAID.."_HEAL" then
			local name,realm=UnitName("player")
			local healer=string.gsub(arg2," .*","")
			if name==healer then MB_raidheal=true
				MB_myorder=string.gsub(arg2,"^%S- %S- ","")
				MB_My_heal_target=string.gsub(arg2,"^%S- ","")
				MB_My_heal_target=string.gsub(MB_My_heal_target," %S-$","")
			end
		elseif arg1==MB_RAID.."_DEDICATEDHEAL" then
			local name,realm=UnitName("player")
			local healer=string.gsub(arg2," .*","")
			if name==healer then
				MB_dedicated=true
				MB_My_heal_target=string.gsub(arg2,"^%S- ","")
				MB_My_heal_target=string.gsub(MB_My_heal_target," %S-$","")
			end
		elseif arg1==MB_RAID.."_FEAR" then
			local name,realm=UnitName("player")
			local fearer=string.gsub(arg2," .*","")
			local fear_caller=string.gsub(arg2,"^%S- ","")
			if name==fearer then
				AssistUnit(MBID[fear_caller])
				if UnitInRaid("player") then
					RunLine("/raid I, "..fearer.." will be fearing "..MB_raidtargetnames[GetRaidTargetIndex("target")])
				else
					RunLine("/party I, "..fearer.." will be fearing "..MB_raidtargetnames[GetRaidTargetIndex("target")])
				end
				MB_My_fear_target=GetRaidTargetIndex("target")
			end
		elseif arg1==MB_RAID.."_OT" then
			local oter=string.gsub(arg2," .*","")
			local ot_caller=string.gsub(arg2,"^%S- ","")
			if myname==oter then
				AssistUnit(MBID[ot_caller])
				if not UnitName("target") then MB_msg("I can't see the target") return end
				if not MB_My_ot_target then
					if UnitInRaid("player") and oter and MB_raidtargetnames[GetRaidTargetIndex("target")] then
						RunLine("/raid I, "..oter.." will be tanking the "..MB_raidtargetnames[GetRaidTargetIndex("target")])
					elseif oter and MB_raidtargetnames[GetRaidTargetIndex("target")] then
						RunLine("/party I, "..oter.." will be tanking the "..MB_raidtargetnames[GetRaidTargetIndex("target")])
					end
				end
				MB_My_ot_target=GetRaidTargetIndex("target")
			end
		elseif arg1==MB_RAID.."CLR_TARG" then
			local name,realm=UnitName("player")
			local cc_caller=string.gsub(arg2," .*","")
			AssistUnit(MBID[cc_caller])
			if GetRaidTargetIndex("target")==MB_My_cc_target then
				if MB_raidtargetnames[GetRaidTargetIndex("target")] then
					if UnitInRaid("player") then
						RunLine("/raid I, "..name.." am clearing my cc assignment on "..MB_raidtargetnames[GetRaidTargetIndex("target")])
					else
						RunLine("/party I, "..name.." am clearing my cc assignment on "..MB_raidtargetnames[GetRaidTargetIndex("target")])
					end
					MB_My_cc_target=""
				end
			end
			if GetRaidTargetIndex("target")==MB_My_int_target then
				if MB_raidtargetnames[GetRaidTargetIndex("target")] then
					if UnitInRaid("player") then
						RunLine("/raid I, "..name.." am clearing my interrupt assignment on "..MB_raidtargetnames[GetRaidTargetIndex("target")])
					else
						RunLine("/party I, "..name.." am clearing my interrupt assignment on "..MB_raidtargetnames[GetRaidTargetIndex("target")])
					end
					MB_My_int_target=""
				end
			end
			if MB_My_ot_target and MB_My_ot_target==GetRaidTargetIndex("target") then
				if UnitInRaid("player") then
					RunLine("/raid I, "..name.." am clearing my tank assignment on "..MB_raidtargetnames[GetRaidTargetIndex("target")])
				else
					RunLine("/party I, "..name.." am clearing my tank assignment on "..MB_raidtargetnames[GetRaidTargetIndex("target")])
				end
				MB_My_ot_target=nil
			end
		elseif string.find(arg1,MB_RAID.."LPET") then
			local class=UnitClass("player")
			if class~="Warlock" then return end
			local name,realm=UnitName("player")
			MB_default_warlock_pet=arg2
			if MB_default_warlock_pet=="" then
				MB_default_warlock_pet=nil
				if UnitInRaid("player") then
					RunLine("/raid I, "..name.." will be sacrifice spec.")
				else
					RunLine("/party I, "..name.." will be sacrifice spec.")
				end
			else
				if UnitInRaid("player") then
					RunLine("/raid I, "..name.." will be summoning "..MB_default_warlock_pet)
				else
					RunLine("/party I, "..name.." will be summoning "..MB_default_warlock_pet)
				end
			end
		--*Fs
		elseif arg1==MB_RAID.."_Materials" then
			FsR_ReceivingMaterialChatMessage(arg2,arg4)
		end
	--*Fs
	elseif (event == "RAID_ROSTER_UPDATE") then
		-- this event fires when your raid members change, when somone leaves/joins/gets moved to another group or connects/disconnects
		InitializeClasslists()
		--*Fs
		if IsRaidLeader() == 1 then
			FsR_RequestMaterialUpdate()
		end
		--*Fs
	elseif (event == "PARTY_MEMBERS_CHANGED") then
		InitializeClasslists()
		--*Fs
		if IsRaidLeader() == 1 then
	 		FsR_RequestMaterialUpdate()
		end
 		--*Fs
	elseif (event == "PARTY_INVITE_REQUEST") then
		-- this event fires when you get a group invite
		AcceptGroup();
		StaticPopup_Hide("PARTY_INVITE");
		PlaySoundFile("Sound\\Doodad\\BellTollNightElf.wav");
		UIErrorsFrame:AddMessage("Group Auto Accept");
	elseif (event == "CHAT_MSG_MONSTER_YELL") then
		-- this event fires when you get a group invite
		--if IsRaidLeader() then RunLine("/rw ******"..arg1.."******") end
	elseif event == "UNIT_INVENTORY_CHANGED" then
		-- this event fires when your inventory changes, you can add functions to keep track of bagspace/inventory items/soulshards etc here
		--elseif event == "CHAT_MSG_SPELL_SELF_BUFF" then
		--Print("spell cd ")
		--Print(arg1)
		--if MB_i_cure_magic and string.find(arg1,MB_dcrspell[myclass].magic) then MB_msg("REMOVING: "..MB_dcrtarg.." has "..MB_dcrdbuff) end
	elseif event == "SPELLCAST_START" then
		-- this event fires when you start casting
		MB_isCasting=true
		--if UnitName("target") and arg1 then MB_msg("Casting "..arg1.." on "..UnitName("target")) end
	elseif event == "SPELLCAST_INTERRUPTED" then
	-- this event fires when your spells gets interrupted
		MB_isCasting=false
		--Print("Interrupted!")
		--if MB_debugmsgs and FindInTable(MB_healerinraid,UnitName("player")) then RunLine("/raid INTERRUPTED!") end
	elseif event == "SPELLCAST_FAILED" then
		-- this event fires when your spell fails
		MB_isCasting=false
	elseif event == "SPELLCAST_DELAYED" then
		-- this event fires when your spell gets delayed
	elseif event == "SPELLCAST_CHANNEL_START" then
		-- this event fires when you stop casting
		MB_isChanneling=true
		if MB_blastarcane then MB_blastarcane=nil end
	elseif event == "SPELLCAST_CHANNEL_STOP" then
		-- this event fires when you stop casting
		MB_isChanneling=false
	elseif event == "START_LOOT_ROLL" then
		rollid=arg1
		--if not IAmFocus() then RollOnLoot(rollid,0) end
		RollOnLoot(rollid,0)
	elseif event == "CONFIRM_SUMMON" then
		-- this event fires when you get a summon request
		--ConfirmSummon(); -- confirms summon
		--StaticPopup_Hide("CONFIRM_SUMMON"); -- hides popup frame
	elseif event=="TRADE_SHOW" then MB_tradeopen=true
	elseif event=="TRADE_CLOSED" then MB_tradeopen=false
	elseif ( event=="TRADE_SKILL_SHOW") then
		if ( not old_SM_TradeSkillSkillButton_OnClick) then
			old_SM_TradeSkillSkillButton_OnClick = TradeSkillSkillButton_OnClick;
			TradeSkillSkillButton_OnClick = SM_TradeSkillSkillButton_OnClick;
			SM_TradeSkillItem_OnClick();
		end
	elseif ( event=="PLAYER_REGEN_ENABLED" ) then
		if UnitClass("player")=="Warlock" and (MB_default_warlock_pet=="Voidwalker" or MB_default_warlock_pet=="Succubus") then PetDefensiveMode() else PetPassiveMode() end
		MB_cooldowns={}
		MB_My_cc_target=nil
		MB_My_int_target=nil
		MB_My_ot_target=nil
		MB_My_fear_target=nil
		MB_ot_index=1
		MB_cc_current={Mage=1,Warlock=1,Priest=1,Druid=1}
		MB_int_current={Rogue=1,Mage=1}
		MB_fear_current={Warlock=1,Hunter=1}
		MB_currentraidtarget=1
	elseif ( event=="PLAYER_REGEN_DISABLED" ) then
		--MB_cooldowns={}	(makes ccers recast cc spell if used)
	elseif event == "RESURRECT_REQUEST" then
	-- this event fires when you get a resurrect request
		AcceptResurrect() -- accepts resurrection
		StaticPopup_Hide("RESURRECT_NO_TIMER"); -- hides popup frame
		StaticPopup_Hide("RESURRECT_NO_SICKNESS"); -- hides popup frame
		StaticPopup_Hide("RESURRECT"); -- hides popup frame
	elseif event == "UNIT_SPELLCAST_CHANNEL_START" then
		-- this event fires when you start channeling a spell
		FSMB_Settings["IsCasting"] = true
	elseif event == "UNIT_SPELLCAST_CHANNEL_STOP" then
		-- this event fires when you stop channeling a spell
		FSMB_Settings["IsCasting"] = false
	elseif event == "MERCHANT_UPDATE" then
		-- this event fires when you buy/sell something from a merchant
	elseif event == "MERCHANT_SHOW" then
		Print("Opened Merchant")
		--*Fs
		if CanMerchantRepair() and FsR_AutoRepairAllItems then RepairAllItems() end
		--*Fs
		-- this event fires when you visit a merchant, you can add functions such as autobuy here
	elseif ( event == "START_AUTOREPEAT_SPELL" ) then
		MB_Shot_Start();
	elseif ( event == "STOP_AUTOREPEAT_SPELL" ) then
		MB_Shot_End();
	elseif ( event == "SPELLCAST_STOP" ) then
		MB_isCasting=false
		if ( MB_RAIS_aimedStart ) then
			MB_RAIS_aimedStart = false
		end
		MB_GlobalCD_Check();
		if ( MB_sSCD == 1.5 ) then
			MB_sSTold = sST
		end
	elseif ( event == "UNIT_AURA" ) then
		for i=1,16 do
			if ( buffed("Berserking","player") ) then
				if ( MB_berserkValue == false ) then
					if((UnitHealth("player")/UnitHealthMax("player")) >= 0.40) then
						MB_berserkValue = (1.30 - (UnitHealth("player")/UnitHealthMax("player")))/3
					else
						MB_berserkValue = 0.30
					end
				end
			else
				MB_berserkValue = false
			end
		end
	elseif ( event == "CURRENT_SPELL_CAST_CHANGED" ) then
		if ( swingStart == false and MB_RAIS_aimedStart == false ) then
			MB_interruptTime = GetTime()
			MB_Cast_Interrupted();
		end
	elseif ( event == "ITEM_LOCK_CHANGED" ) then
		if ( MB_RAIS_shooting == true ) then
			MB_GlobalCD_Check();
			if ( MB_RAIS_aimedStart ) then
				MB_Cast_Start();
			elseif ( MB_sSCD ~= 1.5 ) then
				MB_Swing_Start();
			elseif ( MB_sSTold == MB_sST ) then
				MB_Swing_Start();
			else
				MB_sSTold = MB_sST;
			end
			--if ( GetTime()-MB_interruptTime > 0.3 ) then -- ha Concussive Shot castolás megy Auto-Shot castolás közben, ne induljon el a swingtimer
			--end
		end
	elseif (event == "UI_ERROR_MESSAGE") then
		--Thanks to Fabian from Germany for the auto-turn code!
		if (arg1 =="Target needs to be in front of you") and MB_autoturn and MB_raidleader and MB_raidleader~=UnitName("player") and not FindInTable(MB_tankinraid,UnitName("player")) then
			RunLine("/Follow "..MB_raidleader)
			--After 10 sec the "2/3" key will be Actionbutton2/3 again (or earlier if AUTOFOLLOW_END is thrown)
			MB_SavedBinding.Time = GetTime() + 10
			SetBinding("2", "MOVEBACKWARD")
			SetBinding("3", "MOVEBACKWARD")
			MB_SavedBinding.Active = true
		elseif (arg1 == "Can't do that while moving") then
			if not MB_SavedBinding.Active and (GetTime() > MB_SavedBinding.Time) and (GetTime() < MB_SavedBinding.Time + 1) then
				--The key seemed to have been down while rebinding
				RunLine("/Follow "..MB_raidleader)
				MB_SavedBinding.Time = GetTime() + 10
				SetBinding("2", "MOVEFORWARD")
				SetBinding("3", "MOVEFORWARD")
				MB_SavedBinding.Active = true
			end
		elseif (arg1 == "Out of range.") then
			if MB_dcrreq then
				Print(MB_dcrtarg.." is out of range! Blacklisting")
				MB_dcrblacklist[MB_dcrtarg]=GetTime()
				MB_dccrrangeerr=true
				MB_dcrreq=nil
			end
		end
	elseif (event == "CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE") then
		if myclass~="Rogue" and myclass~="Shaman" and myclass~="Warrior" and myclass~="Mage" then return end
		if (string.find(arg1,"begins to cast")) then
			MB_do_an_interrupt=true
			--cast("MB_INT_spell[myclass]")
		end
	elseif (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE") then
		if myclass~="Rogue" and myclass~="Shaman" and myclass~="Warrior" and myclass~="Mage" then return end
		if (string.find(arg1,"begins to cast")) then
			if UnitIsEnemy("target","player") then RunLine("/yell Interrupting "..UnitName("target")) end
			MB_do_an_interrupt=true
			--cast("MB_INT_spell[myclass]")
		end
	elseif (event == "AUTOFOLLOW_END") then
		MB_SavedBinding.Time = GetTime() + 0.2
		MB_SavedBinding.Active = true
		--if you reset the key without delay, the character will keep moving backwards
	--*Fs
	elseif (event == "BAG_UPDATE") then
		FsR_AnnounceMaterials()
	elseif (event == "PLAYER_ENTERING_WORLD") then
		FsR_RequestMaterialUpdate()
		--*Fs
	end
end
FSMB:SetScript("OnUpdate",function()
	--*Fs
	FsR_DoTrades()
	--*Fs
	if ( MB_RAIS_shooting == true ) then
		if ( MB_RAIS_castStart ) then
			local cposX, cposY = GetPlayerMapPosition("player") -- player position atm
			if ( posX == cposX and posY == cposY ) then
				MB_Cast_Update();
			else
				MB_Cast_Interrupted();
			end
		end
	end
	if ( MB_RAIS_swingStart ) then
		local MB_relative = GetTime() - MB_RAIS_swingStart
		if ( MB_relative > MB_swingTime ) then
			if ( MB_RAIS_shooting == true and MB_RAIS_aimedStart == false ) then
				MB_Cast_Start()
			end
			MB_RAIS_swingStart = false;
		end
	end
	if MB_SavedBinding.Active then
		if GetTime() > MB_SavedBinding.Time then
			MB_SavedBinding.Active = false
			SetBinding("2", MB_SavedBinding.Binding2)
			SetBinding("3", MB_SavedBinding.Binding3)
		end
	end
end)
-- this will send all the registered events to the OnEvent function
FSMB:SetScript("OnEvent", FSMB.OnEvent) -- event handler
function FSMB:print(msg)
	if msg then
	DEFAULT_CHAT_FRAME:AddMessage("|cffFE2E2EF|cffF78181S|cffF6CECEM|cffFBEFEFB|r: "..msg)
	end
end
function table.invert( tbl )
	local rv = {}
	for key,val in pairs( tbl ) do rv[ val ] = key end
	return rv
end
function FindInTable(table,string)
	--only works on 1D tables
	if not table then return end
	for i,v in table do
		if v==string then return i end
	end
	return nil
end
function FindKeyInTable(table,string)
	if not table then return end
	for i,v in table do
		if i==string and v then return true end
	end
	return nil
end
function IsAlive(id)
	if not id then return end
	if UnitName(id) and (not UnitIsDead(id) and UnitHealth(id)>1 and not UnitIsGhost(id) and UnitIsConnected(id)) then return true end
end
function clearmacros()
	MB_macronamestodelete={"init","tankbrez","buff","multi","aoe","turbo","single","fearbreak","int","cc","party","clearot","cleartargs","sortraid","preheal","sheep","ot","clean","foc","leave","reload","feign","focus","resetinst","hearth","dance","pent","line","rezemall","smartdrink","summ","void","imp","succ","felhunt","tos","wall"}
	for k,macname in pairs(MB_macronamestodelete) do
		while (GetMacroIndexByName(macname))>0 do
			local index=GetMacroIndexByName(macname)
			DeleteMacro(index)
		end
	end
end
function clearsupermacros()
	MB_macronamestodelete={"tap","shftap","ctltap","altap","levparty"}
	for k,macname in pairs(MB_macronamestodelete) do
		while (GetSuperMacroInfo(macname,"name")) do
			local index=GetSuperMacroInfo(macname,"name")
			DeleteSuperMacro(index)
		end
	end
end
function printmacnames()
	local gen,toon=GetNumMacros()
	for k=1,gen do
			local name=GetMacroInfo(k)
			Print(k..": "..name)
	end
	for k=19,toon+18 do
			name=GetMacroInfo(k)
			Print(k..": "..name)
	end
end
function printtexturename(number)
	local gen,toon=GetNumMacros()
	EditMacro(17,"test",number,"",nil)
	_,text=GetMacroInfo(17)
	Print(number.." : "..text)
end
function RangedWeaponType()
	local itemLink = GetInventoryItemLink("player",18)
	if not itemLink then return "Bow" end
	local bsnum=string.gsub(itemLink,".-\124H([^\124]*)\124h.*", "%1")
	local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
	_,_,itemSubType=string.find(itemSubType,"(.*)s")
	return(itemSubType)
end
function init()
--Run this function with /init to create all macros and keybinds!
--MAAAAAGIC!!!!
	clearmacros()
	clearsupermacros()
	local class=UnitClass("player")
	SetActionBarToggles(1,1,1,1,1)
	SHOW_MULTI_ACTIONBAR_1=1
	SHOW_MULTI_ACTIONBAR_2=1
	SHOW_MULTI_ACTIONBAR_3=1
	SHOW_MULTI_ACTIONBAR_4=1
	ALWAYS_SHOW_MULTI_ACTIONBAR=1
	MultiActionBar_Update()
	if class=="Mage" then
		PickupSpell(SpellNum("Conjure Water"),BOOKTYPE_SPELL)
		PlaceAction(12)
	else
		PickupAction(12)
		ClearCursor()
	end
	PickupAction(84)
	PlaceAction(84)
	PickupAction(96)
	PlaceAction(96)
	PickupAction(108)
	PlaceAction(108)
	PickupAction(120)
	PlaceAction(120)
	local index=CreateMacro("buff",327,"/script setup()",1,1)
	PickupMacro(index)
	PlaceAction(1)
	PickupMacro(index)
	PlaceAction(73)
	PickupMacro(index)
	PlaceAction(85)
	PickupMacro(index)
	PlaceAction(97)
	PickupMacro(index)
	PlaceAction(109)
	index=CreateMacro("single",134,"/script single()",1,1)
	PickupMacro(index)
	PlaceAction(2)
	PickupMacro(index)
	PlaceAction(74)
	PickupMacro(index)
	PlaceAction(86)
	PickupMacro(index)
	PlaceAction(98)
	PickupMacro(index)
	PlaceAction(110)
	index=CreateMacro("multi",149,"/script multi()",1,1)
	PickupMacro(index)
	PlaceAction(3)
	PickupMacro(index)
	PlaceAction(75)
	PickupMacro(index)
	PlaceAction(87)
	PickupMacro(index)
	PlaceAction(99)
	PickupMacro(index)
	PlaceAction(111)
	index=CreateMacro("turbo",291,"/script turbo()",1,1)
	PickupMacro(index)
	PlaceAction(4)
	PickupMacro(index)
	PlaceAction(76)
	PickupMacro(index)
	PlaceAction(88)
	PickupMacro(index)
	PlaceAction(100)
	PickupMacro(index)
	PlaceAction(112)
	index=CreateMacro("aoe",210,"/script aoe()",1,1)
	PickupMacro(index)
	PlaceAction(5)
	PickupMacro(index)
	PlaceAction(77)
	PickupMacro(index)
	PlaceAction(89)
	PickupMacro(index)
	PlaceAction(101)
	PickupMacro(index)
	PlaceAction(113)
	index=CreateMacro("reload",239,"/script ReloadUI()",1,nil)
	PickupMacro(index)
	PlaceAction(36)
	index=CreateMacro("resetinst",482,"/script ResetInstances()",1,nil)
	PickupMacro(index)
	PlaceAction(35)
	index=CreateMacro("hearth",352,"/use hearthstone\r/script Stuck()",1,nil)
	PickupMacro(index)
	PlaceAction(34)
	index=CreateMacro("leave",398,"/script LeaveParty()",1,nil)
	PickupMacro(index)
	PlaceAction(48)
	index=CreateMacro("foc",9,"/script TargetByName(MB_raidleader,1)",1,nil)
	PickupMacro(index)
	PlaceAction(47)
	index=CreateMacro("dance",24,"/dance",1,nil)
	PickupMacro(index)
	PlaceAction(46)
	index=CreateMacro("void",510,"/script SetLockPet(\"Voidwalker\")",1,nil)
	PickupMacro(index)
	PlaceAction(45)
	index=CreateMacro("imp",507,"/script SetLockPet(\"Imp\")",1,nil)
	PickupMacro(index)
	PlaceAction(44)
	index=CreateMacro("succ",509,"/script SetLockPet(\"Succubus\")",1,nil)
	PickupMacro(index)
	PlaceAction(43)
	index=CreateMacro("felhunt",506,"/script SetLockPet(\"Felhunter\")",1,1)
	PickupMacro(index)
	PlaceAction(42)
	index=CreateMacro("tos",486,"/script SetLockPet(nil)",1,1)
	PickupMacro(index)
	PlaceAction(41)
	index=CreateMacro("fearbreak",489,"/script fearbreak()",1,1)
	PickupMacro(index)
	PlaceAction(62)
	index=CreateMacro("int",25,"/script interrupt_boss()",1,1)
	PickupMacro(index)
	PlaceAction(63)
	PickupAction(51)
	ClearCursor()
	index=CreateSuperMacro("tap","Interface\\Icons\\Ability_ShootWand","/script tap()")
	index=CreateSuperMacro("shftap","Interface\\Icons\\Ability_ShootWand","/script tap(\"Shift\")")
	index=CreateSuperMacro("ctltap","Interface\\Icons\\Ability_ShootWand","/script tap(\"Control\")")
	index=CreateSuperMacro("altap","Interface\\Icons\\Ability_ShootWand","/script tap(\"Alt\")")
	index=CreateMacro("summ",511,"/run SummonOutOfRange()",1,nil)
	PickupMacro(index)
	PlaceAction(37)
	if class=="Warlock" or class=="Hunter" or class=="Mage" or class=="Priest" or class=="Druid" then
		index=CreateMacro("sheep",394,"/script CC()",1,1)
		PickupMacro(index)
		PlaceAction(51)
	end
	PickupAction(8)
	ClearCursor()
	PickupAction(80)
	ClearCursor()
	PickupAction(92)
	ClearCursor()
	PickupAction(104)
	ClearCursor()
	PickupAction(116)
	ClearCursor()
	index=CreateMacro("rezemall",303,"/script rezemall()",1,1)
	PickupMacro(index)
	PlaceAction(8)
	PickupMacro(index)
	PlaceAction(80)
	PickupMacro(index)
	PlaceAction(92)
	PickupMacro(index)
	PlaceAction(104)
	PickupMacro(index)
	PlaceAction(116)
	if class=="Priest" or class=="Druid" then
		index=CreateMacro("preheal",292,"/script preheal_tanks()",1,1)
		PickupAction(50)
		ClearCursor()
		PickupMacro(index)
		PlaceAction(50)
	end
	index=CreateMacro("cc",395,"/script MB_assign_cc()",1,1)
	PickupAction(49)
	ClearCursor()
	PickupMacro(index)
	PlaceAction(49)
	index=CreateMacro("ot",98,"/script MB_assign_ot()",1,nil)
	PickupMacro(index)
	PlaceAction(52)
	index=CreateMacro("smartdrink",339,"/script smartdrink()",1,1)
	PickupMacro(index)
	PlaceAction(53)
	index=CreateMacro("line",294,"/script MakeALine()",1,nil)
	PickupMacro(index)
	PlaceAction(60)
	PickupAction(59)
	ClearCursor()
	index=CreateMacro("pent",366,"/script Pentagram()",1,nil)
	PickupMacro(index)
	PlaceAction(59)
	index=CreateMacro("clearot",133,"/script MB_clearraidtarget()",1,nil)
	PickupMacro(index)
	PlaceAction(54)
	index=CreateMacro("cleartargs",138,"/script clearraidtargs()",1,nil)
	PickupMacro(index)
	PlaceAction(55)
	index=CreateMacro("tankbrez",303,"/script rezemall(true)",1,1)
	PickupMacro(index)
	PlaceAction(56)
	index=CreateMacro("focus",1,"/script focusme()",1,1)
	PickupMacro(index)
	PlaceAction(58)
	index=CreateMacro("sortraid",63,"/script SortRaid()",1,1)
	PickupMacro(index)
	PlaceAction(11)
	PickupMacro(index)
	PlaceAction(83)
	PickupMacro(index)
	PlaceAction(95)
	PickupMacro(index)
	PlaceAction(108)
	PickupMacro(index)
	PlaceAction(119)
	index=CreateSuperMacro("levparty","Interface\\Icons\\Spell_Nature_EnchantArmor","/script leveling_parties()")
	index=CreateMacro("party",320,"/script partyup()",1,nil)
	PickupMacro(index)
	PlaceAction(10)
	PickupMacro(index)
	PlaceAction(82)
	PickupMacro(index)
	PlaceAction(94)
	PickupMacro(index)
	PlaceAction(107)
	PickupMacro(index)
	PlaceAction(118)
	PickupAction(61)
	ClearCursor()
	if class=="Hunter" then
		index=CreateMacro("feign",124,"/script fd()",1,1)
		PickupMacro(index)
		PlaceAction(61)
	end
	if class=="Warrior" and SpellExists("Shoot") then
		PickupSpell(SpellNum("Shoot "..RangedWeaponType()),BOOKTYPE_SPELL)
		PlaceAction(61)
	end
	if class=="Druid" then
		PickupSpell(findSpell("Wrath"),BOOKTYPE_SPELL)
		PlaceAction(61)
	end
	if class=="Warlock" then
		PickupSpell(findSpell("Drain Soul"),BOOKTYPE_SPELL)
		PlaceAction(67)
	end
	PickupAction(6)
	ClearCursor()
	PickupAction(78)
	ClearCursor()
	PickupAction(90)
	ClearCursor()
	PickupAction(103)
	ClearCursor()
	PickupAction(114)
	ClearCursor()
	if class=="Warrior" or class=="Priest" or class=="Shaman" or class=="Druid" or class=="Paladin" then
		index=CreateMacro("wall",165,"/script WarriorSurvive()",1,1)
		PickupMacro(index)
		PlaceAction(6)
		PickupMacro(index)
		PlaceAction(78)
		PickupMacro(index)
		PlaceAction(90)
		PickupMacro(index)
		PlaceAction(103)
		PickupMacro(index)
		PlaceAction(114)
	end
	if class=="Priest" or class=="Mage" or class=="Warlock" then
		PickupSpell(SpellNum("Shoot"),BOOKTYPE_SPELL)
		PlaceAction(72)
		PickupSpell(SpellNum("Attack"),BOOKTYPE_SPELL)
		PlaceAction(71)
	elseif class=="Rogue" then
		if SpellNum("Backstab") then PickupSpell(SpellNum("Backstab"),BOOKTYPE_SPELL) end
		PlaceAction(71)
		PickupSpell(SpellNum("Attack"),BOOKTYPE_SPELL)
		PlaceAction(72)
	elseif class=="Druid" then
		if SpellNum("Ravage") then PickupSpell(SpellNum("Ravage"),BOOKTYPE_SPELL) end
		PlaceAction(71)
		PickupSpell(SpellNum("Attack"),BOOKTYPE_SPELL)
		PlaceAction(72)
	elseif class=="Hunter" then
		PickupSpell(SpellNum("Auto Shot"),BOOKTYPE_SPELL)
		PlaceAction(72)
		PickupSpell(SpellNum("Attack"),BOOKTYPE_SPELL)
		PlaceAction(71)
		PickupSpell(SpellNum("Freezing Trap"),BOOKTYPE_SPELL)
		PlaceAction(64)
	else
		PickupSpell(SpellNum("Attack"),BOOKTYPE_SPELL)
		PlaceAction(72)
	end
	LoadBindings(1)
	SetBinding("SHIFT-1","MULTIACTIONBAR1BUTTON1")
	SetBinding("SHIFT-2","MULTIACTIONBAR1BUTTON2")
	SetBinding("SHIFT-3","MULTIACTIONBAR1BUTTON3")
	SetBinding("SHIFT-4","MULTIACTIONBAR1BUTTON4")
	SetBinding("SHIFT-5","MULTIACTIONBAR1BUTTON5")
	SetBinding("SHIFT-6","MULTIACTIONBAR1BUTTON6")
	SetBinding("SHIFT-7","MULTIACTIONBAR1BUTTON7")
	SetBinding("SHIFT-8","MULTIACTIONBAR1BUTTON8")
	SetBinding("SHIFT-9","MULTIACTIONBAR1BUTTON9")
	SetBinding("SHIFT-0","MULTIACTIONBAR1BUTTON10")
	SetBinding("SHIFT--","MULTIACTIONBAR1BUTTON11")
	SetBinding("SHIFT-=","MULTIACTIONBAR1BUTTON12")
	SetBinding("F1","MULTIACTIONBAR2BUTTON1")
	SetBinding("F2","MULTIACTIONBAR2BUTTON2")
	SetBinding("F3","MULTIACTIONBAR2BUTTON3")
	SetBinding("F4","MULTIACTIONBAR2BUTTON4")
	SetBinding("F5","MULTIACTIONBAR2BUTTON5")
	SetBinding("F6","MULTIACTIONBAR2BUTTON6")
	SetBinding("F7","MULTIACTIONBAR2BUTTON7")
	SetBinding("F8","MULTIACTIONBAR2BUTTON8")
	SetBinding("F9","MULTIACTIONBAR2BUTTON9")
	SetBinding("F10","MULTIACTIONBAR2BUTTON10")
	SetBinding("F11","MULTIACTIONBAR2BUTTON11")
	SetBinding("F12","MULTIACTIONBAR2BUTTON12")
	SetBinding("SHIFT-F1","MULTIACTIONBAR2BUTTON1")
	SetBinding("SHIFT-F2","MULTIACTIONBAR2BUTTON2")
	SetBinding("SHIFT-F3","MULTIACTIONBAR2BUTTON3")
	SetBinding("SHIFT-F4","MULTIACTIONBAR2BUTTON4")
	SetBinding("SHIFT-F5","MULTIACTIONBAR2BUTTON5")
	SetBinding("SHIFT-F6","MULTIACTIONBAR2BUTTON6")
	SetBinding("SHIFT-F7","MULTIACTIONBAR2BUTTON7")
	SetBinding("SHIFT-F8","MULTIACTIONBAR2BUTTON8")
	SetBinding("SHIFT-F9","MULTIACTIONBAR2BUTTON9")
	SetBinding("SHIFT-F0","MULTIACTIONBAR2BUTTON10")
	SetBinding("SHIFT-F11","MULTIACTIONBAR2BUTTON11")
	SetBinding("SHIFT-F12","MULTIACTIONBAR2BUTTON12")
	SetBinding("BUTTON3","MOVEBACKWARD")
	SetBinding("ALT-CTRL-1","ACTIONBUTTON1")
	SetBinding("CTRL-1")
	SetBinding("CTRL-2")
	SetBinding("CTRL-3")
	SetBinding("CTRL-4")
	SetBinding("CTRL-5")
	SetBinding("CTRL-6")
	SetBinding("CTRL-7")
	SetBinding("CTRL-8")
	SetBinding("CTRL-9")
	SetBinding("CTRL-0")
	SetBinding("CTRL--")
	SetBinding("CTRL-=")
	SetBinding("SHIFT-UP")
	SetBinding("SHIFT-DOWN")
	SetBinding("SHIFT-MOUSEWHEELUP")
	SetBinding("SHIFT-MOUSEWHEELDOWN")
	SetBinding("B","OPENALLBAGS")
	SetBinding("G","DCRCLEAN")
	SaveBindings(1)
	ClearTutorials()
	ReloadUI()
end
function norm()
--Run this function with /norm to go back to non-multiboxing mode (needs editing)
--MAAAAAGIC!!!!
	clearmacros()
	clearsupermacros()
	local class=UnitClass("player")
	SetActionBarToggles(1,1,1,1,1)
	SHOW_MULTI_ACTIONBAR_1=1
	SHOW_MULTI_ACTIONBAR_2=1
	SHOW_MULTI_ACTIONBAR_3=1
	SHOW_MULTI_ACTIONBAR_4=1
	ALWAYS_SHOW_MULTI_ACTIONBAR=1
	MultiActionBar_Update()
	local index=CreateMacro("init",188,"/script init()",1,nil)
	-- CREATE INITIAL MACRO
	PickupMacro(index)
	if class=="Mage" then
		PickupSpell(SpellNum("Conjure Water"),BOOKTYPE_SPELL)
		PlaceAction(12)
	else
		PickupAction(12)
		ClearCursor()
	end
	PickupMacro(index)
	PlaceAction(84)
	PickupMacro(index)
	PlaceAction(96)
	PickupMacro(index)
	PlaceAction(108)
	PickupMacro(index)
	PlaceAction(120)
	local index=CreateMacro("buff",327,"/script setup()",1,1)
	PickupMacro(index)
	PlaceAction(1)
	PickupMacro(index)
	PlaceAction(73)
	PickupMacro(index)
	PlaceAction(85)
	PickupMacro(index)
	PlaceAction(97)
	PickupMacro(index)
	PlaceAction(109)
	index=CreateMacro("single",134,"/script single()",1,1)
	PickupMacro(index)
	PlaceAction(2)
	PickupMacro(index)
	PlaceAction(74)
	PickupMacro(index)
	PlaceAction(86)
	PickupMacro(index)
	PlaceAction(98)
	PickupMacro(index)
	PlaceAction(110)
	index=CreateMacro("multi",149,"/script multi()",1,1)
	PickupMacro(index)
	PlaceAction(3)
	PickupMacro(index)
	PlaceAction(75)
	PickupMacro(index)
	PlaceAction(87)
	PickupMacro(index)
	PlaceAction(99)
	PickupMacro(index)
	PlaceAction(111)
	index=CreateMacro("turbo",291,"/script turbo()",1,1)
	PickupMacro(index)
	PlaceAction(4)
	PickupMacro(index)
	PlaceAction(76)
	PickupMacro(index)
	PlaceAction(88)
	PickupMacro(index)
	PlaceAction(100)
	PickupMacro(index)
	PlaceAction(112)
	index=CreateMacro("aoe",210,"/script aoe()",1,1)
	PickupMacro(index)
	PlaceAction(5)
	PickupMacro(index)
	PlaceAction(77)
	PickupMacro(index)
	PlaceAction(89)
	PickupMacro(index)
	PlaceAction(101)
	PickupMacro(index)
	PlaceAction(113)
	index=CreateMacro("reload",239,"/script ReloadUI()",1,nil)
	PickupMacro(index)
	PlaceAction(36)
	index=CreateMacro("resetinst",482,"/script ResetInstances()",1,nil)
	PickupMacro(index)
	PlaceAction(35)
	index=CreateMacro("hearth",352,"/use hearthstone\r/script Stuck()",1,nil)
	PickupMacro(index)
	PlaceAction(34)
	index=CreateMacro("leave",398,"/script LeaveParty()",1,nil)
	PickupMacro(index)
	PlaceAction(48)
	index=CreateMacro("foc",9,"/script TargetByName(MB_raidleader,1)",1,nil)
	PickupMacro(index)
	PlaceAction(47)
	index=CreateMacro("dance",24,"/dance",1,nil)
	PickupMacro(index)
	PlaceAction(46)
	index=CreateMacro("void",510,"/script SetLockPet(\"Voidwalker\")",1,nil)
	PickupMacro(index)
	PlaceAction(45)
	index=CreateMacro("imp",507,"/script SetLockPet(\"Imp\")",1,nil)
	PickupMacro(index)
	PlaceAction(44)
	index=CreateMacro("succ",509,"/script SetLockPet(\"Succubus\")",1,nil)
	PickupMacro(index)
	PlaceAction(43)
	index=CreateMacro("felhunt",506,"/script SetLockPet(\"Felhunter\")",1,1)
	PickupMacro(index)
	PlaceAction(42)
	index=CreateMacro("tos",486,"/script SetLockPet(nil)",1,1)
	PickupMacro(index)
	PlaceAction(41)
	index=CreateMacro("fearbreak",489,"/script fearbreak()",1,1)
	PickupMacro(index)
	PlaceAction(62)
	index=CreateMacro("int",25,"/script interrupt_boss()",1,1)
	PickupMacro(index)
	PlaceAction(63)
	PickupAction(51)
	ClearCursor()
	index=CreateSuperMacro("tap","Interface\\Icons\\Ability_ShootWand","/script tap()")
	index=CreateSuperMacro("shftap","Interface\\Icons\\Ability_ShootWand","/script tap(\"Shift\")")
	index=CreateSuperMacro("ctltap","Interface\\Icons\\Ability_ShootWand","/script tap(\"Control\")")
	index=CreateSuperMacro("altap","Interface\\Icons\\Ability_ShootWand","/script tap(\"Alt\")")
	if class=="Warlock" or class=="Mage" or class=="Priest" or class=="Druid" then
		index=CreateMacro("sheep",394,"/script CC()",1,1)
		PickupMacro(index)
		PlaceAction(51)
	end
	PickupAction(8)
	ClearCursor()
	PickupAction(80)
	ClearCursor()
	PickupAction(92)
	ClearCursor()
	PickupAction(104)
	ClearCursor()
	PickupAction(116)
	ClearCursor()
	index=CreateMacro("rezemall",303,"/script rezemall()",1,1)
	PickupMacro(index)
	PlaceAction(8)
	PickupMacro(index)
	PlaceAction(80)
	PickupMacro(index)
	PlaceAction(92)
	PickupMacro(index)
	PlaceAction(104)
	PickupMacro(index)
	PlaceAction(116)
	if class=="Priest" or class=="Druid" then
		index=CreateMacro("preheal",292,"/script preheal_tanks()",1,1)
		PickupAction(50)
		ClearCursor()
		PickupMacro(index)
		PlaceAction(50)
	end
	index=CreateMacro("cc",395,"/script MB_assign_cc()",1,1)
	PickupAction(49)
	ClearCursor()
	PickupMacro(index)
	PlaceAction(49)
	index=CreateMacro("ot",98,"/script MB_assign_ot()",1,nil)
	PickupMacro(index)
	PlaceAction(52)
	index=CreateMacro("smartdrink",339,"/script smartdrink()",1,1)
	PickupMacro(index)
	PlaceAction(53)
	index=CreateMacro("line",294,"/script MakeALine()",1,nil)
	PickupMacro(index)
	PlaceAction(60)
	PickupAction(59)
	ClearCursor()
	index=CreateMacro("pent",366,"/script Pentagram()",1,nil)
	PickupMacro(index)
	PlaceAction(59)
	index=CreateMacro("clearot",133,"/script MB_clearraidtarget()",1,nil)
	PickupMacro(index)
	PlaceAction(54)
	index=CreateMacro("cleartargs",138,"/script clearraidtargs()",1,nil)
	PickupMacro(index)
	PlaceAction(55)
	index=CreateMacro("tankbrez",303,"/script rezemall(true)",1,1)
	PickupMacro(index)
	PlaceAction(56)
	index=CreateMacro("focus",1,"/script focusme()",1,1)
	PickupMacro(index)
	PlaceAction(58)
	index=CreateMacro("sortraid",63,"/script SortRaid()",1,1)
	PickupMacro(index)
	PlaceAction(11)
	PickupMacro(index)
	PlaceAction(83)
	PickupMacro(index)
	PlaceAction(95)
	PickupMacro(index)
	PlaceAction(108)
	PickupMacro(index)
	PlaceAction(119)
	index=CreateSuperMacro("levparty","Interface\\Icons\\Spell_Nature_EnchantArmor","/script leveling_parties()")
	index=CreateMacro("party",320,"/script partyup()",1,nil)
	PickupMacro(index)
	PlaceAction(10)
	PickupMacro(index)
	PlaceAction(82)
	PickupMacro(index)
	PlaceAction(94)
	PickupMacro(index)
	PlaceAction(107)
	PickupMacro(index)
	PlaceAction(118)
	PickupAction(61)
	ClearCursor()
	if class=="Hunter" then
		index=CreateMacro("feign",124,"/script fd()",1,1)
		PickupMacro(index)
		PlaceAction(61)
	end
	if class=="Warrior" then
		PickupSpell(SpellNum("Shoot "..RangedWeaponType()),BOOKTYPE_SPELL)
		PlaceAction(61)
	end
	if class=="Druid" then
		PickupSpell(findSpell("Wrath"),BOOKTYPE_SPELL)
		PlaceAction(61)
	end
	PickupAction(6)
	ClearCursor()
	PickupAction(78)
	ClearCursor()
	PickupAction(90)
	ClearCursor()
	PickupAction(103)
	ClearCursor()
	PickupAction(114)
	ClearCursor()
	if class=="Warrior" or class=="Priest" or class=="Shaman" or class=="Druid" or class=="Paladin" then
		index=CreateMacro("wall",165,"/script WarriorSurvive()",1,1)
		PickupMacro(index)
		PlaceAction(6)
		PickupMacro(index)
		PlaceAction(78)
		PickupMacro(index)
		PlaceAction(90)
		PickupMacro(index)
		PlaceAction(103)
		PickupMacro(index)
		PlaceAction(114)
	end
	if class=="Priest" or class=="Mage" or class=="Warlock" then
		PickupSpell(SpellNum("Shoot"),BOOKTYPE_SPELL)
		PlaceAction(72)
		PickupSpell(SpellNum("Attack"),BOOKTYPE_SPELL)
		PlaceAction(71)
	elseif class=="Hunter" then
		PickupSpell(SpellNum("Auto Shot"),BOOKTYPE_SPELL)
		PlaceAction(72)
		PickupSpell(SpellNum("Attack"),BOOKTYPE_SPELL)
		PlaceAction(71)
		PickupSpell(SpellNum("Freezing Trap"),BOOKTYPE_SPELL)
		PlaceAction(64)
	else
		PickupSpell(SpellNum("Attack"),BOOKTYPE_SPELL)
		PlaceAction(72)
	end
	LoadBindings(1)
	SetBinding("SHIFT-1","MULTIACTIONBAR1BUTTON1")
	SetBinding("SHIFT-2","MULTIACTIONBAR1BUTTON2")
	SetBinding("SHIFT-3","MULTIACTIONBAR1BUTTON3")
	SetBinding("SHIFT-4","MULTIACTIONBAR1BUTTON4")
	SetBinding("SHIFT-5","MULTIACTIONBAR1BUTTON5")
	SetBinding("SHIFT-6","MULTIACTIONBAR1BUTTON6")
	SetBinding("SHIFT-7","MULTIACTIONBAR1BUTTON7")
	SetBinding("SHIFT-8","MULTIACTIONBAR1BUTTON8")
	SetBinding("SHIFT-9","MULTIACTIONBAR1BUTTON9")
	SetBinding("SHIFT-0","MULTIACTIONBAR1BUTTON10")
	SetBinding("SHIFT--","MULTIACTIONBAR1BUTTON11")
	SetBinding("SHIFT-=","MULTIACTIONBAR1BUTTON12")
	SetBinding("F1","MULTIACTIONBAR2BUTTON1")
	SetBinding("F2","MULTIACTIONBAR2BUTTON2")
	SetBinding("F3","MULTIACTIONBAR2BUTTON3")
	SetBinding("F4","MULTIACTIONBAR2BUTTON4")
	SetBinding("F5","MULTIACTIONBAR2BUTTON5")
	SetBinding("F6","MULTIACTIONBAR2BUTTON6")
	SetBinding("F7","MULTIACTIONBAR2BUTTON7")
	SetBinding("F8","MULTIACTIONBAR2BUTTON8")
	SetBinding("F9","MULTIACTIONBAR2BUTTON9")
	SetBinding("F10","MULTIACTIONBAR2BUTTON10")
	SetBinding("F11","MULTIACTIONBAR2BUTTON11")
	SetBinding("F12","MULTIACTIONBAR2BUTTON12")
	SetBinding("SHIFT-F1","MULTIACTIONBAR2BUTTON1")
	SetBinding("SHIFT-F2","MULTIACTIONBAR2BUTTON2")
	SetBinding("SHIFT-F3","MULTIACTIONBAR2BUTTON3")
	SetBinding("SHIFT-F4","MULTIACTIONBAR2BUTTON4")
	SetBinding("SHIFT-F5","MULTIACTIONBAR2BUTTON5")
	SetBinding("SHIFT-F6","MULTIACTIONBAR2BUTTON6")
	SetBinding("SHIFT-F7","MULTIACTIONBAR2BUTTON7")
	SetBinding("SHIFT-F8","MULTIACTIONBAR2BUTTON8")
	SetBinding("SHIFT-F9","MULTIACTIONBAR2BUTTON9")
	SetBinding("SHIFT-F0","MULTIACTIONBAR2BUTTON10")
	SetBinding("SHIFT-F11","MULTIACTIONBAR2BUTTON11")
	SetBinding("SHIFT-F12","MULTIACTIONBAR2BUTTON12")
	SetBinding("BUTTON3","MOVEBACKWARD")
	SetBinding("CTRL-1")
	SetBinding("CTRL-2")
	SetBinding("CTRL-3")
	SetBinding("CTRL-4")
	SetBinding("CTRL-5")
	SetBinding("CTRL-6")
	SetBinding("CTRL-7")
	SetBinding("CTRL-8")
	SetBinding("CTRL-9")
	SetBinding("CTRL-0")
	SetBinding("CTRL--")
	SetBinding("CTRL-=")
	SetBinding("SHIFT-UP")
	SetBinding("SHIFT-DOWN")
	SetBinding("SHIFT-MOUSEWHEELUP")
	SetBinding("SHIFT-MOUSEWHEELDOWN")
	SetBinding("B","OPENALLBAGS")
	SetBinding("G","DCRCLEAN")
	SaveBindings(1)
	ClearTutorials()
	ReloadUI()
end
function clearraidtargs()
	MB_cooldowns={}
	MB_My_cc_target=nil
	MB_My_int_target=nil
	MB_ot_index=1
	MB_My_ot_target=nil
	MB_cc_current={Mage=1,Warlock=1,Priest=1,Druid=1}
	MB_int_current={Rogue=1,Mage=1}
	MB_fear_current={Warlock=1,Hunter=1}
	MB_currentraidtarget=1
	SetRaidTarget("target", 1)
	SetRaidTarget("target", 2)
	SetRaidTarget("target", 3)
	SetRaidTarget("target", 4)
	SetRaidTarget("target", 5)
	SetRaidTarget("target", 6)
	SetRaidTarget("target", 7)
	SetRaidTarget("target", 8)
	SetRaidTarget("target", 9)
end
function MB_Find(item)
	local Rarity={["poor"]=0,["common"]=1,["uncommon"]=2,["rare"]=3,["epic"]=4,["legendary"]=5}
	--This is the function that determines what happens when you type /find
	if item=="" then Print("Usage /find <classname or all or nothing> <wearing> item slot or string") return end
	local class="all"
	local _,_,key=string.find(item,"(%a+)%s*")
	key=string.lower(key)
	local classlist={}
	for class,name in MB_classlist do
		table.insert(classlist,string.lower(class))
	end
	if FindInTable(classlist,key) then
		class=key
		_,_,item=string.find(item,"%a+%s(.*)")
		if not item then
			item=key
		else
			Print("Checking class "..key)
			_,_,key=string.find(item,"(%a+)%s*")
		end
	end
	if key=="all" then
		_,_,item=string.find(item,"%a+%s(.*)")
		_,_,key=string.find(item,"(%a+)%s*")
	end
	if key=="wearing" or key=="crapgear" then
		_,_,item=string.find(item,"%a+%s(.*)")
	end
	local myClass=string.lower(UnitClass("player"))
	if key=="crapgear" then
		if class~="all" and class~=myClass then return end
		Print("Finding crappy gear.")
		for inv=1,16 do
			if inv~=4 then
				local itemLink = GetInventoryItemLink("player",inv)
				local quality=GetInventoryItemQuality("player",inv)
				if not quality then
					MB_msg("MISSING: slot "..MB_slotmap[inv])
				elseif quality<3 then
					local bsnum=string.gsub(itemLink,".-\124H([^\124]*)\124h.*", "%1")
					local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
					MB_msg("CRAP: "..itemEquipLoc.." "..inv.." "..itemLink)
				end
			end
		end
		return
	end
	if key=="boe" then
		Print("Finding boe items in bags")
		if class~="all" and class~=myClass then return end
		for bag=-1,11 do for slot=1,GetContainerNumSlots(bag) do
			local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
			if texture then
				local link=GetContainerItemLink(bag,slot)
				local bsnum=string.gsub(link,".-\124H([^\124]*)\124h.*", "%1")
				local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
				_,itemCount=GetContainerItemInfo(bag,slot)
				local match=nil
				link=GetContainerItemLink(bag,slot)
				links=string.lower(link)
				items=string.lower(item)
				match = string.find(links, items)
				if IsUnbound(bag,slot) then
					MB_msg("Found "..link.." in bag "..bag.." slot "..slot)
				end
			end
		end end
		return
	end
	if key=="wearing" then
		if not item then Print("You need to name an item or slot") return end
		Print("Finding "..class.." wearing "..item)
		if class~="all" and class~=myClass then return end
		for inv=1,19 do
			local itemLink = GetInventoryItemLink("player",inv)
			local quality=GetInventoryItemQuality("player",inv)
			if itemLink then
				local bsnum=string.gsub(itemLink,".-\124H([^\124]*)\124h.*", "%1")
				local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
				local match=nil
				links=string.lower(itemLink)
				items=string.lower(item)
				match = string.find(links, items)
				if itemEquipLoc then
					itemEquipLoc=string.lower(itemEquipLoc)
					match= match or string.find(itemEquipLoc,items)
				end
				if itemRarity then
					match= match or itemRarity==Rarity[items]
				end
				if itemType then
					itemType=string.lower(itemType)
					match= match or string.find(itemType,items)
				end
				if itemSubType then
					itemSubType=string.lower(itemSubType)
					match= match or string.find(itemSubType,items)
				end
				if match then
					MB_msg("Found "..itemLink.." in slot "..MB_slotmap[inv])
				end
			end
		end
		return
	else
		if not item then Print("You need to name an item or slot") return end
			Print("Finding item "..item)
			if class~="all" and class~=myClass then return end
			for bag=-2,11 do
				local maxIndex=GetContainerNumSlots(bag)
				if bag==-2 then maxIndex=12 end
				for slot=1,maxIndex do
					local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
					if texture then
						local link=GetContainerItemLink(bag,slot)
						local bsnum=string.gsub(link,".-\124H([^\124]*)\124h.*", "%1")
						local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
						_,itemCount=GetContainerItemInfo(bag,slot)
						local match=nil
						link=GetContainerItemLink(bag,slot)
						links=string.lower(link)
						items=string.lower(item)
						match = string.find(links, items)
					if itemEquipLoc then
						itemEquipLoc=string.lower(itemEquipLoc)
						match= match or string.find(itemEquipLoc,items)
					end
					if itemRarity then
						match= match or itemRarity==Rarity[items]
					end
					if itemType then
						itemType=string.lower(itemType)
						match= match or string.find(itemType,items)
					end
					if itemSubType then
						itemSubType=string.lower(itemSubType)
						match= match or string.find(itemSubType,items)
					end
					if match then
						if UnitInRaid("player") then
							MB_msg("Found "..link.."x"..itemCount.." in bag "..bag.." slot "..slot)
						end
					end
				end
			end
		end
	end
end
function SetLockPet(lockpet)
	--This function is called when you press the right buttons on the warlock bar.
	if not IAmFocus() and lockpet then
		if not SpellExists("Summon "..lockpet) then
			MB_msg("I don't know how to summon a "..lockpet..". Pick something else.")
			return
		end
	end
	if IAmFocus() then
		if UnitInRaid("player") then
			SendAddonMessage(MB_RAID.."LPET ",lockpet,"RAID")
		else
			SendAddonMessage(MB_RAID.."LPET ",lockpet)
		end
	else
		if lockpet then
			MB_msg("Setting my current pet to "..lockpet..".")
		else
			MB_msg("Setting myself to sacrifice spec.")
		end
		MB_default_warlock_pet=lockpet
	end
end
function MB_msg(msg)
	--this is a raid message function with a 2 second cooldown to kind-of avoid some spamming.
	local cooldown=5
	local time=GetTime()
	if MB_prev_msg==msg and MB_msgcd+cooldown>time then return end
	MB_prev_msg=msg
	MB_msgcd=time
	if UnitInRaid("player") then
		RunLine("/raid "..msg) return
	else
		RunLine("/party "..msg) return
	end
	Print(msg)
end
function MB_slowmsg(msg)
	--this is a raid message function with a 2 second cooldown to kind-of avoid some spamming.
	local cooldown=60
	local time=GetTime()
	if MB_prev_msg==msg and MB_msgcd+cooldown>time then return end
	MB_prev_msg=msg
	MB_msgcd=time
	if UnitInRaid("player") then
		RunLine("/raid "..msg) return
	else
		RunLine("/party "..msg) return
	end
	Print(msg)
end
function MyGroupOrder()
	--This sorts the number of toons in a given party in alphabetical order and returns a number
	--representing which number in that list this toon is.
	local _,_,mygroup=GetRaidRosterInfo(RaidIdx(myname))
	local myparty={}
	table.insert(myparty,myname)
	for i=1,GetNumPartyMembers() do
		local name,_=UnitName("party"..i)
		table.insert(myparty,name)
	end
	table.sort( myparty )
	local order=1
	for k,toon in pairs(myparty) do
		if toon==myname then return order end
		order=order+1
	end
	return order
end
function MakeALine()
	--Makes your raid form a single file line by group
	if not UnitInRaid("player") then Print("MakeALine only works in raid") return end
	local name, realm=UnitName("player")
	if IAmFocus() then
		headofline=name
	else
		headofline=TankName()
	end
	MB_followlist={}
	MB_groups={}
	for g=1,8 do
		MB_groups[g]={}
	end
	for i=1,GetNumRaidMembers() do
		local name,_,group=GetRaidRosterInfo(i)
		table.insert(MB_groups[group],name)
	end
	for g=1,8 do
		table.sort(MB_groups[g])
	end
	for g=1,8 do for i=1,5 do
		if g==1 and i==1 then
			table.insert(MB_followlist,headofline)
			table.insert(MB_followlist,MB_groups[g][i])
		elseif MB_groups[g][i] and MB_groups[g][i]~=headofline then
			table.insert(MB_followlist,MB_groups[g][i])
		end
	end end
	if not IsShiftKeyDown() then
		local myspot=FindInTable(MB_followlist,name)
		if myspot>1 then
			FollowByName(MB_followlist[myspot-1],1)
		end
	else
		for g=1,8 do for i=1,5 do
			if name==MB_groups[g][i] and i>1 then FollowByName(MB_groups[g][1],1) end
		end end
	end
end
function buystacks()
	if not MB_buystacks then return end
	--Ammo buying needs a lot of work. This function just isn't working right. Stand at vendor with vendor opened and hit 1.
	local itemlists={["Roasted Quail"]="Hunter",["Jagged Arrow"]="Hunter",["Accurate Slugs"]="Hunter",["Flash Powder"]="Rogue",["Wild Thornroot"]="Druid",["Ironwood Seed"]="Druid",["Sacred Candle"]="Priest",Ankh="Shaman",["Arcane Powder"]="Mage",["Rune of Portals"]="Mage",["Rune of Teleportation"]="Mage"}
	local limits={["Roasted Quail"]={320,5},["Jagged Arrow"]={16,200},["Accurate Slugs"]={16,200},["Flash Powder"]={400,1},["Wild Thornroot"]={320,1},["Ironwood Seed"]={60,1},["Sacred Candle"]={640,1},Ankh={30,1},["Arcane Powder"]={320,1},["Rune of Portals"]={80,1},["Rune of Teleportation"]={40,1}}
	for item,class in itemlists do
		if myclass==class then
			local myitems=HasItem(item)/limits[item][2]
			--Print("My bullets ="..myitems)
			--Print(limits[item][1])
			--Print(limits[item][2])
			local needitems=(limits[item][1]-myitems)/limits[item][2]
			--Print(needitems)
			if class=="Hunter" and item=="Jagged Arrow" and HasPouch() then if myitems==0 then needitems=1 end end
			if class=="Hunter" and item=="Accurate Slugs" and HasQuiver() then if myitems==0 then needitems=1 end end
			--Print("Checking for item "..item)
			--Print("Have item "..myitems)
			--Print("Need item "..needitems)
			if needitems>0 then
				--Fs* was iterating to GetNumRaidMembers() not GetMerchantNumItems()
				for itemidx=1,GetMerchantNumItems() do
				--Fs*
					link=GetMerchantItemLink(itemidx)
					if link then
						if string.find(link,item) then
							Print("Buying "..needitems.." "..link)
							BuyMerchantItem(itemidx,needitems)
						end
					end
				end
			end
		end
	end
end
function HasQuiver()
	for bag=0,4 do
		if GetBagName(bag) and string.find(GetBagName(bag),"Quiver") then return true end
	end
end
function HasPouch()
	for bag=0,4 do
		if GetBagName(bag) and string.find(GetBagName(bag),"Ammo Pouch") then return true end
	end
end
function SwapPos(raidnames,i1,i2)
	--Swaps two people in a raid.
	--Does not work on a full 40 man raid.
	--Wow 1.12 raid movement commands are VERY flakey.
	--I'm not sure we can sort 40 man full raids properly.
	--I use group8 as a holding place for the swaps.
	--In the end I may have to remove a person in group8 from raid then reinvite to rearrange
	for name,idx in raidnames do
		if idx==i1 then n1=name end
		if idx==i2 then n2=name end
	end
	g1=WhichSubgroup(n1)
	--Print(n1.." is in group "..g1)
	g2=WhichSubgroup(n2)
	--Print(n2.." is in group "..g2)
	SetRaidSubgroup(i1,8)
	SetRaidSubgroup(i2,g1)
	SetRaidSubgroup(i1,g2)
end
function RaidHealth()
	if not UnitInRaid("player") then return PartyHealth() end
	local raidHP=0
	local raidHPM=0
	local lowestHP=1
	for name,id in MBID do
		--give mosthurt to first connected player
		local mosthurt=id
		lowsetHP=UnitHealth(id)/UnitHealthMax(id)
		break
	end
	for name,id in MBID do
		local health=UnitHealth(id)
		local healthm=UnitHealthMax(id)
		local healthp=health/healthm
		raidHP=raidHP+health
		raidHPM=raidHPM+healthm
		if healthp<lowestHP then lowestHP=healthp ; mosthurt=id end
	end
	lowestlock=1
	lowestlockname=nil
	for _,name in MB_classlist.Warlock do
		lockhealth=UnitHealth(MBID[name])/UnitHealthMax(MBID[name])
		if buffed("Hellfire",MBID[name]) and lockhealth<MB_hellfire_threshold then 
			if lockhealth<lowestlock then 
				lowestlock=lockhealth 	
				lowestlockname=name
			end
		end
	end
	if lowestlockname then
		return raidHP/raidHPM,MBID[lowestlockname],lowestlock
	else
		return raidHP/raidHPM,mosthurt,lowestHP
	end
end
function PartyHealth()
	--This is a party adaptation of RaidHealth().
	--Returns the percentage, and also the name of the most hurt guy in your raid
	local raidHP=0
	local raidHPM=0
	local lowestHP=UnitHealth("player")
	local mosthurt="player"
	local lowestHP=UnitHealth("player")/UnitHealthMax("player")
	for i=1,4 do
		local health=UnitHealth("party"..i)
		local healthm=UnitHealthMax("party"..i)
		if UnitIsConnected("party"..i) and not UnitIsDead("party"..i) and not UnitIsGhost("party"..i) then
			local healthp=health/healthm
			raidHP=raidHP+health
			raidHPM=raidHPM+healthm
			if healthp<lowestHP then lowestHP=healthp ; mosthurt="party"..i end
		end
	end
	return raidHP/raidHPM,mosthurt,lowestHP
end
function IAmPartyLead()
	local player,realm=UnitName("player")
	if FindKeyInTable(MB_levelingparties,player) then return 1 end
end
function leveling_parties()
	Accept()
	if IAmPartyLead() then
		Print("I am a party lead.")
		for k,toon in pairs(MB_levelingparties[UnitName("player")]) do
			Print(k)
			Print(toon)
			if UnitName("player")~=toon then Print("Inviting "..toon) InviteByName(toon) end
		end
		SetLootMethod("freeforall");
	end
end
function Accept()
	--this accepts party invites automatically--it should be in a macro in the form of /script Accept()
	AcceptGroup();
	StaticPopup_Hide("PARTY_INVITE")
end
function follow_assist()
	--This is meant to be in your alt-4 macro, and gets everyone to follow and assist the focus (meant to be your current window toon)
	if not IAmFocus() and MB_raidleader then
		FollowByName(MB_raidleader,1)
		if not MB_My_ot_target then
			TargetByName(MB_raidleader,1)
			AssistUnit("target")
		end
	end
end
function MB_Assist()
--This is meant to be in your alt-4 macro, and gets everyone to follow and assist the focus (meant to be your current window toon)
	if not IAmFocus() and MB_raidleader then
		if not MB_My_ot_target or UnitClass("player")=="Warlock" or UnitClass("player")=="Hunter" then
			if not TankID() then
				TargetByName(MB_raidleader,1)
				AssistUnit("target")
			else
				AssistUnit(TankID())
			end
		end
	end
end
function Follow()
--Used to make an off tank follow the main tank without losing his target by assisting.
--I put it on 1 key with no mod. alt-1 is off tank taunt/main tank no attack and alt-2 is main tank taunt/off tank no attack
	if not IAmFocus() and MB_raidleader then
		FollowByName(MB_raidleader,1)
	end
end
function Follow_Dude(dude)
--Used to make an off tank follow the main tank without losing his target by assisting.
--I put it on 1 key with no mod. alt-1 is off tank taunt/main tank no attack and alt-2 is main tank taunt/off tank no attack
	if not IAmFocus() then
		FollowByName(dude,1)
	end
end
function ImBusy()
	if MB_isCasting or MB_isChanneling then return true end
end
function Sulfuron()
	if TankTarget("Sulfuron Harbinger") or TankTarget("Flamewaker Priest") then return true end
end
function cyclerand()
	local n=TableLength(MB_tankinraid)
	if n>0 then
		r=math.random(n)-1
		for i=1,n do
			j=i+r
			if j>n then j=j-n end
			Print(j)
			Print(MB_tankinraid[j])
		end
	end
end
function Decurse()
	if 1 then return end
	for name,time in MB_dcrblacklist do
		if time then
			Print("blacklist check name "..name)
			Print(time)
			if GetTime()-time>5 then MB_dcrblacklist[name]=nil end
		end
	end
	-- decurse specific curses in MB_curselist.
	if ImBusy() then return end
	if TableLength(MB_dcrspell[myclass])==0 then return end
	if MyMana()<220 then return end
	--Always decurse in random order.
	local n=TableLength(MB_tankinraid)
	if n>0 then
		r=math.random(n)-1
		for i=1,n do
			j=i+r
			if j>n then j=j-n end
			tank=MB_tankinraid[j]
			if not FindKeyInTable(MB_dcrblacklist,tank) and FindKeyInTable(MBID,tank) then if MB_cure(tank,MBID[tank]) then return end end
		end
	end
	local n=TableLength(MB_healerinraid)
	if n>0 then
		r=math.random(n)-1
		for i=1,n do
			j=i+r
			if j>n then j=j-n end
			healer=MB_healerinraid[j]
			if not FindKeyInTable(MB_dcrblacklist,healer) and FindKeyInTable(MBID,healer) then if MB_cure(healer,MBID[healer]) then return end end
		end
	end
	local n=TableLength(MB_chumplist)
	if n>0 then
		r=math.random(n)-1
		for i=1,n do
			j=i+r
			if j>n then j=j-n end
			healer=MB_healerinraid[j]
			if not FindKeyInTable(MB_dcrblacklist,healer) and FindKeyInTable(MBID,healer) then if MB_cure(healer,MBID[healer]) then return end end
		end
	end
	for name,id in MBID do
		if not FindKeyInTable(MB_dcrblacklist,name) and not FindInTable(MB_tankinraid,name) and not FindInTable(MB_healerinraid,name) then MB_cure(name,MBID[name]) end
	end
end
function MB_cure(name,id)
	if MB_i_cure_curse then
		for _,curse in MB_curselist.curse do
			if isbuffed(curse,id) then Print("DECURSE: "..name.." is cursed with "..curse) MB_dcrdbuff=curse MB_dcrtarg=id MB_dcrreq=true TargetUnit(id) if FindInTable(MB_healerinraid,myname) then CooldownCast(MB_dcrspell[myclass].curse,2) else cast(MB_dcrspell[myclass].curse) end return true end
		end
	end
	if MB_i_cure_magic then
		for _,magic in MB_curselist.magic do
			if isbuffed(magic,id) then Print("DECURSE: "..name.." is magicked with "..magic) MB_dcrdbuff=magic MB_dcrtarg=id MB_dcrreq=true TargetUnit(id) if FindInTable(MB_healerinraid,myname) then CooldownCast(MB_dcrspell[myclass].magic,2) else cast(MB_dcrspell[myclass].magic) end return true end
		end
	end
	if MB_i_cure_disease then
		for _,disease in MB_curselist.disease do
			if isbuffed(disease,id) then Print("DECURSE: "..name.." is Diseased with "..disease) MB_dcrtarg=id MB_dcrreq=true TargetUnit(id) if FindInTable(MB_healerinraid,myname) then CooldownCast(MB_dcrspell[myclass].disease,2) else cast(MB_dcrspell[myclass].disease_a) cast(MB_dcrspell[myclass].disease) end return true end
		end
	end
	if MB_i_cure_poison then
		for _,poison in MB_curselist.poison do
			if isbuffed(poison,id) then Print("DECURSE: "..name.." is Poisoned with "..poison) MB_dcrtarg=id MB_dcrreq=true TargetUnit(id) if FindInTable(MB_healerinraid,myname) then CooldownCast(MB_dcrspell[myclass].poison,2) else cast(MB_dcrspell[myclass].poison_a) cast(MB_dcrspell[myclass].poison) end return true end
		end
	end
end
function isbuffed(spell,id)
	spell=string.lower(spell)
	--if UnitName("player")==UnitName(id) then Print(spell) end
	--if UnitName("player")==UnitName(id) then local n,_=UnitName(id) Print(n) end
	for i=1,3 do
	name,rank,dtype=UnitDebuff(id,i,1)
	if name then name=string.lower(name) end
	--if name and UnitName("player")==UnitName(id) then Print("Texture= "..name) end
	--if rank and UnitName("player")==UnitName(id) then Print("Rank= "..rank) end
	--if dtype and UnitName("player")==UnitName(id) then Print("Type= "..dtype) end
	if name and string.find(name,spell) then return true end
	end
end
function PartyIsPoisoned()
	--Returns true if anyone in your party is poisoned
	local i,x
	for i=1,GetNumPartyMembers() do
		for x=1,16 do
			local name,count,debuffType=UnitDebuff("party"..i,x,1)
			if debuffType=="Poison" then return true end
		end
	end
	for x=1,16 do
		local name,count,debuffType=UnitDebuff("player",x,1)
		if debuffType=="Poison" then return true end
	end
end
function PartyIsDiseased()
	--Returns true if anyone in party is diseased
	local i,x
	for i=1,GetNumPartyMembers() do for x=1,16 do
		local name,count,debuffType=UnitDebuff("party"..i,x,1)
		if debuffType=="Disease" then return true end
	end end
	for x=1,16 do
		local name,count,debuffType=UnitDebuff("player",x,1)
		if debuffType=="Disease" then return true end
	end
end
function Fade()
	--Priests fade when any of 3 nearby mobs are attacking them
	if OnCooldown("Fade") then return end
	for i=1,3 do
		TargetNearestEnemy()
		if UnitIsEnemy("target","player") and not OnCooldown("Fade") and not PVP() and TargetInCombat() and UnitIsUnit("targettarget","player") then
		--MB_msg(UnitName("player").." CASTING FADE BECAUSE OF AGRO FROM "..UnitName("target"))
		cast("Fade")
		end
	end
	TargetUnit("playertarget")
end
function PetMoveFast()
	--Used by hunters to tell their pets to dash/dive when they send them
	if HasPetSpell("Dash") then PetCast("Dash") end
	if HasPetSpell("Dive") then PetCast("Dive") end
end
function SickemTarget()
	--Main pet attack function.
	--if alt key is down pets will return and go passive
	--local name,realm=UnitName("player")
	--if name=="Olympic" then PetPassiveMode() PetFollow() return end
	if UnitHealth("pet")<1 then return end
	if (IsAltKeyDown() )then
		PetPassiveMode()
		PetFollow()
	else
		if TargetInCombat() or MB_My_ot_target or IAmFocus() then PetAttack("target") PetMoveFast() end
	end
end
function BuffCast(spell)
	--This cast function only casts if the target is not already buffed with the spell
	--Useful for spamming harmful or helpful buffs!
	local name,realm=UnitName("target")
	if not name or not UnitIsConnected("target") or UnitIsDead("target") or UnitIsGhost("target") then return end
	--if not buffed(spell,"target") then Print(UnitName("target").." is not buffed with "..spell..". Buffing now.") cast(spell) end
	if FindInTable(MB_debuffslotlist,spell) and not buffed(spell,"target") then cast(spell) end
end
function DotCast(spell)
	--This cast function only casts if the target is not already buffed with the spell
	--Useful for spamming harmful or helpful buffs!
	local name,realm=UnitName("target")
	if not name or not UnitIsConnected("target") or UnitIsDead("target") or UnitIsGhost("target") then return end
	--if not buffed(spell,"target") then Print(UnitName("target").." is not buffed with "..spell..". Buffing now.") cast(spell) end
	if not buffed(spell,"target") then cast(spell) end
end
function StackCast(spell,numstacks)
	--VERY useful function for stacking a certain number of debuffs (example scorch) on a target and then not casting anymore of that.
	--I use it to put 5 scorches on mage targets then move on to fireballs
	--Could also be used for sunder armor
	local spell_icon=GetSpellTexture(SpellNum(spell),BOOKTYPE_SPELL)
	local count,icon
	for i=1,16 do
		icon,count,bufftype,duration,expiration,caster = UnitDebuff("target",i)
		if icon==spell_icon then
		break ; end
		end
		if not count then count=0 end
		if count<numstacks then
		if count>=numstacks then CooldownCast(spell,20) else cast(spell) end
	end
end
function ShadowStack()
	if UnitLevel("target")>59 or UnitLevel("target")<0 then return end
	--look for texture 495
	shadowicon="BlackPlague"
	numstacks=5
	local count,icon
	for i=1,16 do
		icon,count,bufftype,duration,expiration,caster = UnitDebuff("target",i)
		if icon then Print(icon) end
		if icon and string.find(icon,shadowicon) then
		break ; end
	end
	if not count then count=0 end
	if count<numstacks then
		cast("Shadow Word: Pain(Rank 1)")
	end
end
function OnCooldown(spell)
	--Important helper function that returns true(actually the duration left) if a spell is on cooldown, nil if not.
	if not SpellExists(spell) then return true end
	local start,duration,enable = GetSpellCooldown(SpellNum(spell),BOOKTYPE_SPELL)
	if duration==0 then
		return
	else
		return duration
	end
end
function CooldownTime(spell)
	--Experimental helper function that returns how long a spell has been in cooldown
	if not SpellExists(spell) then return end
	local time=GetTime()
	local cdtime
	local start,duration,enable = GetSpellCooldown(SpellNum(spell),BOOKTYPE_SPELL)
	if duration==0 then cdtime=0
	else
	cdtime=time-start
	end
	return cdtime
end
function PetOnCooldown(spell)
	--Important helper function that returns true(actually the duration left) if a PET spell is on cooldown, nil if not.
	local no=PetSpellNum(spell)
	if no then
		local start,duration,enable = GetPetActionCooldown(PetSpellNum(spell))
		if duration==0 then duration=nil; end
		return duration
	end
end
function NumShards()
	--How many shards do your warlocks have? This function will tell you!
	local shards=0
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag) do
		local link=GetContainerItemLink(bag,slot)
		if link==nil then link="" end
		if string.find(link, "Soul Shard") then shards=shards+1 end
	end end
	return shards
end
function MageWater()
	--How much crappy mage water do you have? This function will tell you--change name below if you have best water
	--pick up a stack of the best water in your bags
	local waterranks=table.invert(MB_mywater)
	local bestrank=0
	local bestwater=nil
	local count=0
	local bag,slot,link
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag) do
		local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
		if texture then
			link=GetContainerItemLink(bag,slot)
			_,stack=GetContainerItemInfo(bag,slot)
			local bsnum=string.gsub(link,".-\124H([^\124]*)\124h.*", "%1")
			local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
			if FindInTable(MB_mywater,itemName) then
				if waterranks[itemName]>bestrank then
					bestwater=itemName
					bestrank=waterranks[itemName]
					count=stack
				elseif waterranks[itemName]==bestrank then
					count=count+stack
				end
			end
		end
	end end
	return count,bestwater
end
function PickupPetFood()
	--Used to pick up pet food when feeding pet
	--have to pick food type based on hunter name and pet
	local amount=0
	if not CursorHasItem() then
		for bag=0,4 do for slot=1,GetContainerNumSlots(bag) do
			local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
			if texture then
				link=GetContainerItemLink(bag,slot)
				--Print(link)
				if UnitName("pet")=="MainTank" then
					if string.find(link, "Deep Fried Plantains") then Print("Picking Up "..bag..","..slot) ; PickupContainerItem(bag,slot) ; return end
				else
					if string.find(link, "Roasted Quail") then Print("Picking Up "..bag..","..slot) ; PickupContainerItem(bag,slot) ; return end
				end
			--else
				--if string.find(link, "Dried King Bolete") then Print("Picking Up "..bag..","..slot) ; PickupContainerItem(bag,slot) ; return end
			--end
			end
		end end
	end
end
function HasReagent(spell)
	--Used to pick up pet food when feeding pet
	--have to pick food type based on hunter name and pet
	count=0
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag) do
		local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
		if texture then
			link=GetContainerItemLink(bag,slot)
			--Print(link)
			if string.find(link,MB_reagent[spell]) then count=count+itemCount end
		end
	end end
	if count==0 and UnitLevel("player")==60 then
		MB_msg("I'm out of "..MB_reagent[spell])
	end
	return count
end
function HasItem(item)
	--Used to pick up pet food when feeding pet
	--have to pick food type based on hunter name and pet
	count=0
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag) do
		local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
		if texture then
			link=GetContainerItemLink(bag,slot)
			--Print(link)
			if string.find(link,item) then count=count+itemCount end
		end
	end end
	if count==0 then
		--MB_msg("I'm out of "..item)
	end
	return count
end
--Fs*
function HasExactItem(item)
	count=0
	for bag=-2,11 do
		local maxIndex = GetContainerNumSlots(bag)
		if bag==-2 then
			maxIndex = 12
		end
		for slot=1, maxIndex do
			local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
			if texture then
					link=GetContainerItemLink(bag,slot)
					link = string.sub(link, string.find(link, '%[') + 1, string.find(link, '%]') -1)
					if string.lower(link) == string.lower(item) then count=count+itemCount end
			end
		end
	end
	return count
end
--Fs*
function scast(spell)
	SelfBuff(spell)
end
function SelfBuff(spell)
	--Important spell which allows a player to buff themselves without recasting. Only buffs if you don't have buff
	if not buffed(spell,"player") then
		CastSpellByName(spell,1)
	end
end
function InMeleeRange()
	--If this returns true, you can whack em with a sword
	return CheckInteractDistance("target",3)
end
function FeedPet()
	--Hunters:Feed your pet if he's not SUUUUUPER happy.
	if GetPetHappiness()~=nil and GetPetHappiness()~=3 then
		if not buffed("Feed Pet Effect","pet") then
			cast("Feed Pet")
			PickupPetFood()
		end
	end
	ResetCursor()
end
function TankBuff(spell)
	--Important spell which allows a player to buff themselves without recasting. Only buffs if you don't have buff
	for k,tank in pairs(MB_tankinraid) do
		if MBID[tank] then
			if not buffed(spell,MBID[tank]) then
				TargetUnit(MBID[tank])
				cast(spell)
			end
		end
	end
end
function CombatUse(item)
	--only use an item if you are in combat
	if InCombat() then use(item) end
end
function SummonDemon()
	if not UnitCreatureFamily("pet") and NumShards()==0 then cast("Summon Imp") return end
	if UnitCreatureFamily("pet")~=MB_default_warlock_pet then cast("Summon "..MB_default_warlock_pet) end
end
function SpellNum(spell)
	--In the wonderful world of 1.12 programming, sometimes just using a spell name isn't enough.
	--SOMETIMES you need to know what spell NUMBER it is, cause otherwise it doesn't work.
	--Healthstones and feral spells are like this.
	local i = 1 ; highestSpellNum=0
	local spellName
	while true do
		spellName, spellRank = GetSpellName(i, BOOKTYPE_SPELL)
		if not spellName then
			do break end
		end
		if string.find(spellName,spell) then highestSpellNum=i end
		i = i + 1
	end
	--Fs* returned the spellid of the last spell in the spellbook if the spell is not in the spellbook
	if highestSpellNum==0 then Printd("Error! Spell " .. spell .. " does not exist in spellbook! " ); return end
	--Fs*
	return highestSpellNum
end
function PetSpellNum(spell)
	--In the wonderful world of 1.12 programming, you can't just say cast("petspell").
	--You need to cast by number counting left from pet action bar.
	--Doesn't work if action bar isn't showing--resummon pet
	local i
	for i=1,20 do
		local name,rank,texture,somtin,somtinelse,isAutocast,IsAutocastable=GetPetActionInfo(i)
		if name==spell then return i end
	end
end
function HasPetSpell(spell)
	--Return true if a pet has a spell, say "Growl"
	local i
	for i=1,20 do
		local name,rank,texture,somtin,somtinelse,isAutocast,IsAutocastable=GetPetActionInfo(i)
		if name==spell then return true end
	end
end
function PetCast(spell)
	--Pet spell casting in wow 1.12 is special. You have to cast by number on the bar
	if UnitHealth("pet")>1 and HasPetSpell(spell) then CastPetAction(PetSpellNum(spell)) end
end
function interrupt_boss()
	--This is a raid winner. I put this in shift 3.
	--Yes, everyone interrupts at the same time, what of it? The best interrupt is Earthshock1
	--Name your tank in this function
	local class=UnitClass("player")
	SpellStopCasting()
	if not IAmFocus() then LockonTarget() end
	if UnitName("target") then MB_msg("Interrupting "..UnitName("target")) else Print("Trying to interrupt but have no target!") end
	if class=="Shaman" then cast("Earth Shock(Rank 1)") end
	if class=="Warrior" then cast("Shield Bash") end
	if class=="Warrior" then cast("Pummel") end
	if class=="Hunter" then cast("Intimidation") end
	if class=="Mage" then cast("Counterspell") end
	if class=="Priest" then cast("Silence") end
	if class=="Rogue" then cast("Kick") end
	if class=="Paladin" then cast("Hammer of Justice") end
	cast("Warstomp")
end
function TankTarget(mobname)
	--Sometimes we have to know if the tank is targeting a certain boss, so we can do things differently as dps.
	if MBID[MB_raidleader] and UnitName(MBID[MB_raidleader].."target") then
		if string.find(UnitName(MBID[MB_raidleader].."target"),mobname) then return true end
	end
end
function TankName()
	--Return tanks's name
	if not MB_raidleader then return end
	if MBID[MB_raidleader] then
		return UnitName(MBID[MB_raidleader])
	else
		TargetByName(MB_raidleader,1)
		return "target"
	end
end
function TankID()
	--Return tanks's name
	if not MB_raidleader then return end
	return MBID[MB_raidleader]
end
function AssistTank()
	--Some shortcut code to make things more readable
	if MBID[MB_raidleader] then
		AssistUnit(MBID[MB_raidleader])
	end
end
function TankTargetHealth()
	--Return nil if you have no focus
	if not MB_raidleader then return end
	local health=0
	if not UnitIsDead(MBID[MB_raidleader].."target") then
		health=UnitHealth(MBID[MB_raidleader].."target")/UnitHealthMax(MBID[MB_raidleader].."target")
	end
	return health
end
function Jindo()
	--My proudest achievement is having Jin'do on farm in ZG.
	--It takes a LOT of spell and targeting changes to make it work. This function tips me off if we are fighting jindo.
	--HOW TO KILL JINDO
	--No fight in the game takes more concentration and maneuver than this one.
	--1) druid tank
	--2) one rogue wound poison
	--3) fight in sand pit
	--4) back hunters away toward wall. check them during fight for teleport into the sandpit and back them up during fight manually.
	--5) rogues and second warrior tank toward the front of the sandpit facing back. You will be using 1 a LOT to make rogues follow, make sure your R key is programed in HKN to make melee back up! will help a ton when the powerful healing totem pops BEHIND the rogues. Manually move second tank toward front of sandpit facing back to stack.
	--6) Use 5-key (aoe) EVERY TIME the pack of zombies pop. Only one or two tics then jump out. DON'T USE aoe to kill shades. That's what hunters are for.
	--7) OVERALL RULE: Keep everything dead at all times, except shades. They will die fast enough from hunters and other dps.
	--8) don't be afraid to change main tank target to totems every time, but instantly get back to jindo
	--IF YOU KEEP EVERYTHING DEAD AT ALL TIMES, AND NEVER SEE TWO OF THE SAME TOTEM POP AT ONCE, JINDO WILL DIE. If you ever see two of the same totem at once, you are failing.
	tname=UnitName("target")
	if ((TankTarget("Powerful Healing Ward") or TankTarget("Shade of Jin'do") or TankTarget("Jin'do the Hexxer") or TankTarget("Brain Wash Totem"))) or tname=="Powerful Healing Ward" or tname=="Shade of Jin'do" or tname=="Jin'do the Hexxer" or tname=="Brain Wash Totem" then	return true end
end
function TargetHealthPct()
	return UnitHealth("target")/UnitHealthMax("target")
end
function BanishManaFiend()
	if TankTarget("Moam") then
		Print("Moam TARGETING")
		if TankTargetHealth()<.05 then AssistTank() return end
		for i=1,4 do
			if UnitName("target")=="Mana Fiend" and not UnitIsDead("target") then
				if not buffed("Banish","target") then
					cast("Banish")
					return
				end
			end
			TargetNearestEnemy()
		end
		AssistTank()
	end
end
function LockonTarget()
	--This is the targeting function for all toons and all raids. Much magic here.
	--This is Jin'do magic!
	if Jindo() then
		for i=1,3 do
			if UnitName("target")=="Powerful Healing Ward" and not UnitIsDead("target") then return end
			TargetNearestEnemy()
		end
		for i=1,3 do
			if UnitName("target")=="Shade of Jin'do" and not UnitIsDead("target") then return end
			TargetNearestEnemy()
		end
		for i=1,3 do
			if UnitName("target")=="Brain Wash Totem" and not UnitIsDead("target") then return end
			TargetNearestEnemy()
		end
		for i=1,3 do
			if UnitName("target")=="Jin'do the Hexxer" and not UnitIsDead("target") then return end
			TargetNearestEnemy()
		end
		if not UnitName("target") then AssistTank() end
		return
	end
	if not UnitName("target") then AssistTank() end
	if not UnitInRaid("player") and GetNumPartyMembers()==0 then Print("I'm not in a party or raid") return end
	--NOTE:THIS ROUTINE SHOULD NEVER RUN IF THE TOON HAS NO FOCUS. IF IT DOES, SOMETHING WENT WRONG.
	if IAmFocus() then MB_msg("I have no focus!") return end
	--REND targeting
	--if TankTarget("Rage Talon Fire Tongue") or TankTarget("Chromatic Whelp") then
		--if TankTargetHealth()<.2 then AssistTank() return end
		--Print("REND TARGETING")
		--for i=1,3 do
			--if UnitName("target")=="Chromatic Whelp" and not UnitIsDead("target") then return end
			--TargetNearestEnemy()
			--return
		--end
	--end
	--Mar'li / Venoxis targeting Magic!
	--Kill spiders first and immediately
	--PRIME DIRECTIVE: IF YOU HAVE A GOOD TARGET THEN DON'T DO THIS CODE! So first line is a check for that and return if true.
	if TankTarget("High Priestess Mar'li") and UnitName("target")=="Spawn of Mar'li" and not UnitIsDead("target") then return end
	if TankTarget("High Priestess Mar'li") and UnitName("target")=="Witherbark Speaker" and not UnitIsDead("target") then return end
	if TankTarget("High Priest Venoxis") and UnitName("target")=="Razzashi Cobra" and not UnitIsDead("target") then return end
	--if not UnitIsDead("target") and TargetInCombat() and UnitIsUnit("target",MBID[MB_raidleader].."target") then return end
	--
	local class=UnitClass("player")
	--Melee classes stay on Mar'li, ranged shoots at spiders.
	if (class~="Warrior" and class~="Rogue") and TankTarget("High Priestess Mar'li") then
		if TankTargetHealth()<.2 then AssistTank() return end
		Print("MARLI TARGETING")
		for i=1,5 do
			if UnitName("target")=="Spawn of Mar'li" and not UnitIsDead("target") then return end
			if UnitName("target")=="Witherbark Speaker" and not UnitIsDead("target") then return end
			TargetNearestEnemy()
		end
	end
	--VENOXIS
	if TankTarget("High Priest Venoxis") then
		if TankTargetHealth()<.2 then AssistTank() return end
		Print("VENOXIS TARGETING")
		for i=1,5 do
			if UnitName("target")=="Razzashi Cobra" and not UnitIsDead("target") then return end
			TargetNearestEnemy()
		end
	end
	if TankTarget("Lucifron") or TankTarget("Gehennas") or TankTarget("Flamewaker Protector") then
		if TankTargetHealth()<.2 then AssistTank() return end
		Print("Lucifron/Gehennas TARGETING")
		for i=1,3 do
			if UnitName("target")=="Flamewaker Protector" and not UnitIsDead("target") then return end
			TargetNearestEnemy()
		end
	end
	--
	--NORMAL targeting--just assist the tank
	local focid=MBID[MB_raidleader]
	if not focid then
		MB_Assist()
	elseif UnitName(focid.."target") then
		TargetUnit(focid.."target")
	else
		if not UnitIsEnemy("player","target") then TargetNearestEnemy() end
	end
end
function FloodHeal()
	if not MB_raidleader then return end
	TargetByName(MB_raidleader,1)
	local class=UnitClass("player")
	if class=="Priest" and not IsShadow() then cast("Flash Heal(Rank 1)") end
	if class=="Shaman" and not IsElementalShammy() and not IsEnhancementShammy() then cast("Healing Wave(Rank 3)") end
	if class=="Druid" and IsDruidHealer() then cast("Healing Touch(Rank 2)") end
	if class=="Druid" and IsHybridDruid() then cast("Healing Touch(Rank 2)") end
	if class=="Paladin" and not IsPallyTank() then cast("Flash of Light(Rank 1)") end
end
function WarriorSurvive()
	local class=UnitClass("player")
	if class~="Warrior" then FloodHeal() return end
	--Warrior last stand/shield wall
	if InCombat() and MyHealthPct()<.12 then RunLine("/use Major Healthstone") end
	if InCombat() and MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if IAmFocus() and InCombat() then
		cast("Shield Wall")
		cast("Last Stand")
		cast("Frenzied Regeneration")
	end
end
function UnsilencedCast(spell)
	--Warrior check to see if should cast an interrupt
	if not buffed("Shield Bash","target") and not buffed("Concussion Blow","target") and not buffed("Pummel","target") and not buffed("War Stomp","target") then
		cast(spell)
	end
end
function WarriorInterrupt()
	--Warrior interrupts
	if InMeleeRange() then
		StanceCast("Defensive Stance")
		UnsilencedCast("Pummel")
		UnsilencedCast("Shield Bash")
		UnsilencedCast("Concussion Blow")
		UnsilencedCast("War stomp")
		cast("Bloodrage")
	else
		if not OnCooldown("Intercept") and MyRage()>9 then
			StanceCast("Berserker Stance")
			cast("Intercept")
		end
	end
end
function PallyInterrupt()
	--Warrior interrupts
	--needs pally rewrite
	if InMeleeRange() then
		StanceCast("Defensive Stance")
		UnsilencedCast("Pummel")
		UnsilencedCast("Shield Bash")
		UnsilencedCast("Concussion Blow")
		UnsilencedCast("War stomp")
		cast("Bloodrage")
	else
		StanceCast("Berserker Stance")
		cast("Intercept")
	end
end
function FeralInterrupt()
	--Druid interrupts
	if SpellExists("Dire Bear Form") then
		StanceCast("Dire Bear Form")
	else
		StanceCast("Bear Form")
	end
	cast("Bash")
	cast("Enrage")
	--CloseDistance()
end
function PVP()
	return GetRealZoneText()=="Alterac Valley" or (UnitIsPlayer("target") and UnitIsEnemy("target","player"))
end
function InCombat()
	return UnitAffectingCombat("player") or PVP()
end
function TargetSheeped()
	if buffed("Scare Beast","target") or buffed("Polymorph","target") or buffed("Shackle Undead","target") or buffed("Hibernate","target") or buffed("Wyvern Sting","target") then return true end
end
function TargetInCombat()
	--save some wording
	--Below level 13 ignore this. Return True
	--NOTE: In Jindo fight, all targets are considered in combat. This is to work around a bug where some totems are sometimes NOT in combat!
	--All non 60s always shoot at everything. I assume you are power-leveling. Comment out the next line if not.
	if UnitLevel("player")<59 then return true end
	return (UnitAffectingCombat("target") or PVP() or Jindo()) and not TargetSheeped()
end
function CloseDistance()
	--This function causes unneccessary stance dancing, and needs a rewrite
	--This is warrior druid charge function
	--You don't want to charge certain bosses when dpsing
	if UnitName("target")=="Lava Elemental" or UnitName("target")=="Kurinnaxx" then return end
	local class=UnitClass("player")
	if class=="Warrior" and SpellExists("Charge") then
		if not InCombat() and not InMeleeRange() and not OnCooldown("Charge") and MyRage()<26 then
			if MyStance() ~= 1 then StanceCast("Battle Stance"); end
			cast("Charge")
		elseif (CooldownTime("Charge")==0 or CooldownTime("Charge")>2) and not InMeleeRange() and not OnCooldown("Intercept") then
			if (MyRage() < 8 and not OnCooldown("Bloodrage") ) or MyRage() >= 8 then
				if not InMeleeRange() then StanceCast("Berserker Stance"); end
				if not InMeleeRange() and MyRage() < 8 then cast("Bloodrage") end
				if not InMeleeRange() then cast("Intercept") ;end
			end
		end
	end
	if class=="Druid" and SpellExists("Feral Charge") then
		--Use furor if avail
		_,_,_,_,talentPoints=GetTalentInfo(3,2)
		if not InMeleeRange() and not OnCooldown("Feral Charge") and TargetInCombat() then
			if not InCombat() and talentPoints>0 and MyRage()==0 then CancelAura("Dire Bear Form") end
			if SpellExists("Dire Bear Form") then
				StanceCast("Dire Bear Form")
			else
				StanceCast("Bear Form")
			end
			cast("Feral Charge")
		end
	end
end
function CloseDistanceRegardless()
	--This is warrior druid charge function
	--Do it regardless of target or circumstances
	local class=UnitClass("player")
	if class=="Warrior" then
		if not TargetInCombat() and not InCombat() and not InMeleeRange() and not OnCooldown("Charge") and MyRage()<26 then
			if MyStance() ~= 1 then StanceCast("Battle Stance"); end
			cast("Charge")
		elseif (CooldownTime("Charge")==0 or CooldownTime("Charge")>2) and not InMeleeRange() and not OnCooldown("Intercept") then
			if (MyRage() < 8 and not OnCooldown("Bloodrage") ) or MyRage() >= 8 then
				if not InMeleeRange() then StanceCast("Berserker Stance"); end
				if not InMeleeRange() and MyRage() < 8 then cast("Bloodrage") end
				if not InMeleeRange() then cast("Intercept") ;end
			end
		end
	end
	if class=="Druid" and SpellExists("Feral Charge") then
		--Use furor if avail
		_,_,_,_,talentPoints=GetTalentInfo(3,2)
		if not InMeleeRange() and not OnCooldown("Feral Charge") and TargetInCombat() then
			if not InCombat() and talentPoints>0 and MyRage()==0 then CancelAura("Dire Bear Form") end
			if SpellExists("Dire Bear Form") then
				StanceCast("Dire Bear Form")
			else
				StanceCast("Bear Form")
			end
			cast("Feral Charge")
		end
	end
end
function WarriorSnarePlayer()
	--if your target is an enemy faction player, throw down Hamstring
	if PVP() and InMeleeRange() then
		if MyStance()==1 or MyStance()==3 then
			BuffCast("Hamstring")
			if InMeleeRange() and MyRage() < 8 then if not buffed("Hamstring","target") then cast("Bloodrage") ; end ; end
		else
			StanceCast("Battle Stance")
			if InMeleeRange() and MyRage() >= 8 then BuffCast("Hamstring") ; end
			if UnitClass("target")=="Rogue" and InMeleeRange() and MyRage() >= 8 then BuffCast("Rend") ; end
			if InMeleeRange() and MyRage() < 8 then if not buffed("Hamstring","target") then cast("Bloodrage") ; end ; end
		end
	end
end
function WhichSubgroup(toonname)
	--Returns what raid group a given name is in
	for i=1,GetNumRaidMembers() do
		local name,rank,subgroup=GetRaidRosterInfo(i)
		if toonname==name then return subgroup end
	end
end
function RoomInGroup(group)
	--True if there is an empty slot in a raid group
	numingrp=0
	for i=1,GetNumRaidMembers() do
		local name,rank,subgroup=GetRaidRosterInfo(i)
		if subgroup==group then numingrp=numingrp+1 end
	end
	if numingrp<5 then return true end
end
function IsPet(unit)
	--Is that unit a raid or party pet?
	for i=1,GetNumRaidMembers() do
		if UnitIsUnit("raidpet"..i,unit) or UnitIsUnit("partypet"..i,unit) then
		return true
		end
	end
end
function BuffTotem(totem)
	--Cast a totem that casts a buff on the player
	--Don't overwrite stoneclaw or tremor
	SelfBuff(totem)
end
--space saving functions
function MyRage()
	return UnitMana("player")
end
function MyMana()
	return UnitMana("player")
end
function MyManaPct()
	return UnitMana("player")/UnitManaMax("player")
end
function MyHealth()
	return UnitHealth("player")
end
function MyHealthPct()
	return UnitHealth("player")/UnitHealthMax("player")
end
function focus()
	return UnitMana("pet")
end
function MyStance()
	--Returns a number representing what stance you are in
	local currstance
	local texture,name,isActive,isCastable = GetShapeshiftFormInfo(1)
	if isActive then currstance=1 ; end
	local texture,name,isActive,isCastable = GetShapeshiftFormInfo(2)
	if isActive then currstance=2 ; end
	local texture,name,isActive,isCastable = GetShapeshiftFormInfo(3)
	if isActive then currstance=3 ; end
	return currstance
end
function StanceCast(stance)
	--Changes stances only if you are not already there
	local stanceno
	local texture,name,isActive,isCastable = GetShapeshiftFormInfo(1)
	if isActive then currstance=1 ; end
	local texture,name,isActive,isCastable = GetShapeshiftFormInfo(2)
	if isActive then currstance=2 ; end
	local texture,name,isActive,isCastable = GetShapeshiftFormInfo(3)
	if isActive then currstance=3 ; end
	if UnitClass("player")=="Warrior" then
		if stance=="Battle Stance" then
			stanceno=1
		elseif stance=="Defensive Stance" then
			stanceno=2
		elseif stance=="Berserker Stance" then
			stanceno=3
		end
	elseif UnitClass("player")=="Druid" then
		if stance=="Dire Bear Form" then
			stanceno=1
		elseif stance=="Aquatic Form" then
			stanceno=2
		elseif stance=="Cat Form" then
			stanceno=3
		elseif stance=="Travel Form" then
			stanceno=4
		elseif stance=="Moonkin Form" then
			stanceno=5
		elseif stance=="Tree of Life Form" then
			stanceno=6
		end
	end
	if stanceno~=currstance then cast(stance) end
end
function NumInParty(checkclass)
	return TableLength(MB_classlist[checkclass])
end
function ChooseAirTotem()
	if TankTarget("Hakkar") or TankTarget("Lucifron") or TankTarget("The Prophet Skeram") then return "Grounding Totem" end
	if TankTarget("Buru the Gorger") or TankTarget("Lord Skwol") or TankTarget("High Priestess Mar'li") or TankTarget("Spawn of Mar'li") or TankTarget("High Priestess Mar'li") or TankTarget("Witherbark Speaker") or TankTarget("High Priest Venoxis") or TankTarget("Razzashi Cobra") or TankTarget("Razzashi Adder") or TankTarget("Razzashi Serpent") then return "Nature Resistance Totem" end
	if MB_DruidTankInParty or (NumInParty("Hunter")>0 and NumInParty("Hunter")>NumInParty("Rogue")) then return "Grace of Air Totem" end
	if MB_WarriorTankInParty or NumInParty("Rogue")>0 and NumInParty("Rogue")>=NumInParty("Hunter") then return "Windfury Totem" end
	return "Tranquil Air Totem"
end
function ChooseEarthTotem()
	if MB_DruidTankInParty or MB_WarriorTankInParty then return "Stoneskin Totem" end
	if MB_MeleeDPSInParty>0 then return "Strength of Earth Totem" end
	return "Stoneskin Totem"
end
function ChooseWaterTotem()
	if TankTarget("Lord Skwol") or TankTarget("High Priestess Mar'li") or TankTarget("Spawn of Mar'li") or TankTarget("High Priestess Mar'li") or TankTarget("Witherbark Speaker") or TankTarget("High Priest Venoxis") or TankTarget("Razzashi Cobra") or TankTarget("Razzashi Serpent") or TankTarget("Razzashi Adder") then return "Poison Cleansing Totem" end
	if TankTarget("Firesworn") or TankTarget("Garr") or TankTarget("Flame") or TankTarget("Drak") or TankTarget("Chromatic") or TankTarget("Blackhand Incarcerator") or TankTarget("Dragon") or TankTarget("Majordomo Executus") or TankTarget("Ragnaros") or TankTarget("Baron Geddon") or TankTarget("Lava Elemental") or TankTarget("Gehennas") or TankTarget("Firewalker") or TankTarget("Magmadar") or TankTarget("Sulfuron Harbinger") or TankTarget("Firelord") or TankTarget("Lava Spawn") or TankTarget("Ancient Core Hound") then Print("Tank Targeting fire guy") return "Fire Resistance Totem" end
	return "Mana Spring Totem"
end
function party_totems()
	CastTotem(ChooseWaterTotem())
	CastTotem(ChooseAirTotem())
	--Print("Air totem is "..ChooseAirTotem())
	if not MB_cooldowns["Tremor Totem"] then
		CastTotem(ChooseEarthTotem())
	end
end
function CastTotem(totem)
	if FindInTable(MB_totem_table["water_totems"],totem) and buffed("Mana Tide","player") then return end
	if (totem=="Fire Nova Totem" or totem=="Magma Totem") and (not InMeleeRange() or not InCombat()) then return end
	local duration=60
	if string.find(totem,"Searing Totem") and not InCombat() then return end
	MB_totemtypes = { buff={ "Grace of Air Totem","Nature Resistance Totem","Windwall Totem","Tranquil Air Totem","Stoneskin Totem","Strength of Earth Totem","Frost Resistance Totem","Fire Resistance Totem","Mana Spring Totem","Healing Stream Totem","Mana Tide Totem" },
	nobuff= { "Windfury Totem","Grounding Totem","Sentry Totem","Earthbind Totem","Stoneclaw Totem","Fire Nova Totem","Magma Totem","Searing Totem(Rank 1)","Flametongue Totem","Tremor Totem","Poison Cleansing Totem","Disease Cleansing Totem"}
	}
	if FindInTable(MB_totemtypes.nobuff,totem) then
		if totem=="Grounding Totem" then cast("Grounding Totem") return end
		CooldownCast(totem,duration)
	else
		if not buffed(string.gsub(totem," Totem",""),"player") then BuffTotem(totem) end
	end
end
function FlametongueWeapon()
	--Throws Flametongue on main if not on already
	has_enchant_main,mx,mc,has_enchant_off = GetWeaponEnchantInfo()
	if not has_enchant_main then
		cast("Flametongue Weapon")
		RunLine("/use 16")
	end
end
function InstantPoisonMain()
	has_enchant_main,mx,mc,has_enchant_off = GetWeaponEnchantInfo()
	if not has_enchant_main then
		use("Instant Poison VI")
		PickupInventoryItem(16)
	end
	ResetCursor()
end
function InstantPoisonOff()
	has_enchant_main,mx,mc,has_enchant_off = GetWeaponEnchantInfo()
	if not has_enchant_off then
		use("Instant Poison VI")
		--use("Wound Poison IV")
		PickupInventoryItem(17)
	end
	ResetCursor()
end
function WindfuryWeapon()
	--Throws Windfury on main if not on already
	has_enchant_main,mx,mc,has_enchant_off = GetWeaponEnchantInfo()
	if not has_enchant_main then
		cast("Windfury Weapon")
		RunLine("/use 16")
	end
end
function RockbiterWeapon()
	--Throws Rockbiter on main if not on already
	has_enchant_main,mx,mc,has_enchant_off = GetWeaponEnchantInfo()
	if not has_enchant_main then
		cast("Rockbiter Weapon")
		RunLine("/use 16")
	end
end
function Equipped2H()
	--Returns true if you have the named sword equipped
	return string.find(GetInventoryItemLink("player",16), "Manslayer of the Qiraji") or string.find(GetInventoryItemLink("player",16), "Destroyer of Worlds")
end
function EquippedShield()
	--Returns true if you have the named shield equipped
	if not GetInventoryItemLink("player",17) then return nil end
	local shield=string.find(GetInventoryItemLink("player",17), "Aegis of the Blood God") or string.find(GetInventoryItemLink("player",17), "Jagged Obsidian Shield") or string.find(GetInventoryItemLink("player",17), "Stygian Buckler")
	return shield
end
function ManaOf(name)
	if not MBID[name] then return 0 end
	return UnitMana(MBID[name])
end
function HasMoreMana(name)
	if not MBID[name] then return nil end
	return ManaOf(MBID[name])>MyMana()
end
function ReagentCheck(spell)
	if HasReagent(spell) < MB_prev_reagent_count[spell] then
		MB_msg("Casted "..spell.." on "..MB_last_target)
		return true
	end
end
function HasPrayerOfSpirit(spell)
	if spell=="Prayer of Spirit" then
		local n,ic,t,c,EM=GetTalentInfo(1,13)
		if EM==0 then return false end
	end
	return true
end
function RaidBuff(spells)
	if UnitIsDead("player") or UnitIsGhost("player") then return end
	if not UnitInRaid("player") then PartyBuff(spells) return end
	--This is for appying fort/int/gotw.
	--It works by finding anyone without the buff and landing it on him. Then it checks again.
	--Randomize someone in raid and start checking raid there. Go through raid and buff them if they don't have it.
	local n=TableLength(MBID)
	r=math.random(n)-1
	for i=1,n do
		j=i+r
		if j>n then j=j-n end
		if UnitName("raid"..j) then
			if IsAlive("raid"..j) then
				TargetByName(UnitName("raid"..j),1)
				tn,_=UnitName("target")
				local istank=FindInTable(MB_tankinraid,tn)
				for _,spell in spells do
					local skip_this_guy=(string.find(spell,"Salvation") and istank)
					if SpellExists(spell) and not skip_this_guy and HasPrayerOfSpirit(spell) and not buffed(spell,"raid"..j) and MyMana()>MB_manacost[spell] then cast(spell) return end
				end
			end
		end
	end
end
function PartyBuff(spells)
	--party version
	--This is for appying fort/int/gotw.
	--It works by finding anyone without the buff and landing it on him. Then it checks again.
	--Randomize someone in raid and start checking raid there. Go through raid and buff them if they don't have it.
	--Print("PartyBuff "..spell)
	TargetUnit("player")
	for _,spell in spells do
		BuffCast(spell)
	end
	if GetNumPartyMembers()==0 then return end
	TargetUnit("playertarget")
	local n=GetNumPartyMembers()
	r=math.random(n)-1
	if n>0 then
		for i=1,n do
			j=i+r
			if j>n then j=j-n end
			if IsAlive("party"..j) then
				TargetUnit("party"..j)
				for _,spell in spells do
					if not buffed(spell,"party"..j) and MyMana()>MB_manacost[spell] then cast(spell) return end
					TargetUnit("playertarget")
				end
			end
		end
	end
end
function TargetNotOnMe()
	--If you are holding alt down, any class that has this in his rotation (usually tank) will switch to a target not on the tank
	--The target WILL be in combat, so no fear of accidentally pulling
	if not UnitIsUnit("player","targettarget") then return end
	if not UnitIsEnemy("target","player") and InCombat() then TargetNearestEnemy() return end
	if IsAltKeyDown() then
		local name=UnitName("target")
		local maxhp=UnitHealthMax("target")
		for i=0,6 do
			TargetNearestEnemy()
			if (TargetInCombat() and
			not FindInTable(MB_tankinraid,UnitName("targettarget")))
			or (TargetInCombat() and UnitHealthMax("target")==maxhp and UnitName("target")==name) then return end
		end
		TargetUnit("playertarget")
	end
end
function TargetNotOnTankNoAlt()
	--Any class that has this in his rotation (usually tank in close combat) will switch to a target not on the tank
	--every time the button is pressed.
	--The target WILL be in combat, so no fear of accidentally pulling
	if UnitName("target")=="The Prophet Skeram" then return end
	if not UnitName("target") then TargetNearestEnemy()
	elseif not IsAlive("target") then Print("Target Is Dead--Targeting nearest enemy") TargetNearestEnemy()
	elseif not TargetInCombat() then Print("Target not in combat--Targeting nearest enemy") TargetNearestEnemy()
	elseif not InMeleeRange() then Print("Target not in melee range--Targeting nearest enemy") TargetNearestEnemy() end
	if UnitIsEnemy("target","player") and TargetInCombat() and not FindInTable(MB_tankinraid,UnitName("targettarget")) then return end
	for i=0,6 do
		if not UnitName("target") then TargetNearestEnemy() end
		if UnitIsEnemy("target","player") and not FindInTable(MB_tankinraid,UnitName("targettarget")) then return end
		TargetNearestEnemy()
	end
	TargetUnit("playertarget")
end
function RaidIdx(qname)
	return string.gsub(MBID[qname],"raid", "")
end
function rezemall()
	--One of my favorites! Put this function in slot 8 of everyone's bar.
	--When you have at least one rezzer up and a bunch of dead people, start spamming 8
	--You will rez OTHER REZZERS FIRST. Then, they will start rezzing, and so on!
	--One button does it all! Also accepts the rez for all toons.
	--BUG: YOU MUST JUMP after each player rezes to stop the next rez. For some reason,
	--rezzers always try to rerez the player that just stood up!
	--I can't get SpellStopCasting() to work to interrupt it.
	AcceptResurrect()
	if not UnitInRaid("player") and InCombat() then return brezparty() end
	if not UnitInRaid("player") then return rezparty() end
	if InCombat() then return brezemall() end
	if UnitIsDead("player") or UnitIsGhost("player") then return end
	if ManaDown()>0 and buffed("Drink","player") then return end
	--Fs* Alt + 6 will start a toon Trading phase.
	if IsAltKeyDown() then Print("Start Trading") FsR_StartTradingPeriod() return end
	--Fs*
	deadlist={}
	deadlist_rezzers={}
	live_ready_rezzers={}
	local rezzer
	if not (myclass=="Priest" or myclass=="Shaman" or myclass=="Paladin") then return end
	if buffed("Drink","player") or ((UnitClass("player")=="Shaman" and UnitMana("player")<13) or (UnitClass("player")=="Priest" and UnitMana("player")<10) ) then Print("Not enough mana to rez, or drinking.") return end
	--Fs*Not adding a healer without mana to the healinglist, will end up announcing a rezz without following up on it! Drink instead!
	if ((UnitClass("player")=="Paladin" and UnitMana("player")<1208) or (UnitClass("player")=="Shaman" and UnitMana("player")<1367) or (UnitClass("player")=="Priest" and UnitMana("player")<1076) ) then smartdrink() return end
	--Fs*
	if UnitInRaid("player") then
		for i=1,GetNumRaidMembers() do
			local name,rank,subgroup,level,class,fileName,zone,online,isdead=GetRaidRosterInfo(i)
			if UnitIsConnected("raid"..i) then
				if class=="Priest" or class=="Shaman" or class=="Paladin" then rezzer=1 else rezzer=0 end
				if isdead then
					if rezzer==1 then table.insert(deadlist_rezzers,name) end
					if rezzer==0 then table.insert(deadlist,name) end
				else
					local manaleft=UnitMana(MBID[name])
					if rezzer==1 and not buffed("Drink","raid"..i) and ((UnitClass("raid"..i)=="Paladin" and UnitMana("raid"..i)>1208) or (UnitClass("raid"..i)=="Shaman" and UnitMana("raid"..i)>1367) or (UnitClass("raid"..i)=="Priest" and UnitMana("raid"..i)>1076) ) or name==myname then table.insert(live_ready_rezzers,name) end
				end
			end
		end
		table.sort(deadlist_rezzers)
		table.sort(deadlist)
		table.sort(live_ready_rezzers)
		--Printt(live_ready_rezzers)
		myorder=FindInTable(live_ready_rezzers,myname)
		Print("My rezzing order for healer list is "..myorder)
		numhealtorez=TableLength(deadlist_rezzers)
		numtorez=TableLength(deadlist_rezzers)+TableLength(deadlist)
		if numhealtorez>=myorder then
			MB_msg("Rezzing "..deadlist_rezzers[myorder])
			CastSpellByName(MB_rez_spells[myclass])
			SpellTargetUnit(MBID[deadlist_rezzers[myorder]])
			return
		end
		Print("My rezzing order for chumps is "..myorder-numhealtorez)
		if numtorez>=myorder then
			CastSpellByName(MB_rez_spells[myclass])
			MB_msg("Rezzing "..deadlist[myorder-numhealtorez])
			SpellTargetUnit(MBID[deadlist[myorder-numhealtorez]])
			return
		end
	end
end
function brezemall(tank_ok)
	--Battle Rez for Druids. if tank_ok is true, druid tanks will be called to rez.
	if myclass~="Druid" then return end
	if FindInTable(MB_tankinraid,UnitName("player")) and not tank_ok then MB_msg("I'm a raid tank druid--I won't battlerez unless you hit F8") return end
	if not UnitInRaid("player") then return brezparty() end
	AcceptResurrect()
	if UnitIsDead("player") or UnitIsGhost("player") then return end
	if not InCombat("player") then return Print("No Longer In Combat, Leaving Battle Rez") end
	if ManaDown()>0 and buffed("Drink","player") then return end
	local deadlist={}
	local deadlist_tanks={}
	local deadlist_healers={}
	local deadlist_brezzers={}
	local live_ready_brezzers={}
	if UnitMana("player")<1368 then CombatUse("Major Mana Potion") end
	--make healer list.
	for i=1,GetNumRaidMembers() do
		local healer=nil
		local brezzer=nil
		local tank=nil
		local name,rank,subgroup,level,class,fileName,zone,online,isdead=GetRaidRosterInfo(i)
		if UnitIsConnected("raid"..i) then
			if class=="Druid" then brezzer=true end
			if class=="Priest" or class=="Shaman" or class=="Paladin" then healer=true end
			if FindInTable(MB_tankinraid,UnitName("raid"..i)) then tank=true end
			if isdead then
				if tank then
					deadlist_tanks[name]=UnitHealthMax("raid"..i)
				end
				if brezzer then
					deadlist_brezzers[name]=UnitManaMax("raid"..i)
				elseif healer then
					deadlist_healers[name]=UnitManaMax("raid"..i)
				else table.insert(deadlist,name) end
			else
				local manaleft=UnitMana(MBID[name])
				if brezzer and (not tank or tank_ok) and not buffed("Drink","party"..i) and UnitMana("party"..i)>1367 or (name==myname and (not tank or tank_ok)) then
					live_ready_brezzers[name]=UnitMana("raid"..i)
				end
			end
		end
	end
	local sorted_deadtanks = {}
	local sorted_deadbrezzers = {}
	local sorted_deadhealers = {}
	local sorted_live_ready_brezzers = {}
	table.foreach (deadlist_tanks, function (k, v) table.insert (sorted_deadtanks, k) end )
	table.sort (sorted_deadtanks)
	table.foreach (deadlist_brezzers, function (k, v) table.insert (sorted_deadbrezzers, k) end )
	table.sort(sorted_deadbrezzers)
	table.foreach (deadlist_healers, function (k, v) table.insert (sorted_deadhealers, k) end )
	table.sort(sorted_deadhealers)
	table.sort(deadlist)
	table.foreach (live_ready_brezzers, function (k, v) table.insert (sorted_live_ready_brezzers, k) end )
	table.sort(sorted_live_ready_brezzers)
	myorder=FindInTable(sorted_live_ready_brezzers,myname)
	Print("My rezzing order is "..myorder)
	numtorez=TableLength(sorted_deadtanks)
	if numtorez>=myorder then
		MB_msg("Rezzing "..sorted_deadtanks[myorder])
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[sorted_deadtanks[myorder]])
		return
	end
	numtorez=TableLength(sorted_deadbrezzers)
	if numtorez>=myorder then
		MB_msg("Battle Rezzing "..sorted_deadbrezzers[myorder])
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[sorted_deadbrezzers[myorder]])
		return
	end
	numtorez=TableLength(sorted_deadhealers)
	if numtorez>=myorder then
		MB_msg("Battle Rezzing "..sorted_deadhealers[myorder])
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[sorted_deadhealers[myorder]])
		return
	end
	numtorez=TableLength(deadlist)
	if numtorez>=myorder then
		MB_msg("Battle Rezzing "..deadlist[myorder])
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[deadlist[myorder]])
		return
	end
end
function rezparty()
	AcceptResurrect()
	if UnitIsDead("player") or UnitIsGhost("player") then return end
	if ManaDown()>0 and buffed("Drink","player") then return end
	local deadlist={}
	local deadlist_rezzers={}
	local live_ready_rezzers={}
	local rezzer
	if not (myclass=="Paladin" or myclass=="Priest" or myclass=="Shaman" ) then return end
	for i=1,GetNumPartyMembers() do
		local name,realm=UnitName("party"..i)
		local class=UnitClass("party"..i)
		local isDead=UnitIsDead("party"..i) or UnitIsGhost("party"..i)
		if UnitIsConnected("party"..i) then
			if class=="Priest" or class=="Shaman" or class=="Paladin" then rezzer=1 else rezzer=0 end
			if isDead then
				if rezzer==1 then table.insert(deadlist_rezzers,name) end
				if rezzer==0 then table.insert(deadlist,name) end
			else
				local manaleft=UnitMana(MBID[name])
				if rezzer==1 and not buffed("Drink","party"..i) and ((UnitClass("player")=="Paladin" and manaleft>399) or (UnitClass("player")=="Shaman" and manaleft>1367) or (UnitClass("player")=="Priest" and manaleft>1077) ) then table.insert(live_ready_rezzers,name) end
			end
		end
	end
	if UnitClass("player")=="Paladin" or UnitClass("player")=="Shaman" or UnitClass("player")=="Priest" then
		name,realm=UnitName("player")
		table.insert(live_ready_rezzers,name)
	end
	table.sort(deadlist_rezzers)
	table.sort(deadlist)
	table.sort(live_ready_rezzers)
	myorder=FindInTable(live_ready_rezzers,myname)
	numreztorez=TableLength(deadlist_rezzers)
	numtorez=TableLength(deadlist)
	--Print("myorder")
	--Print(myorder)
	--Print("num rezzers to rez")
	--Print(numreztorez)
	if numreztorez>=myorder then
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[deadlist_rezzers[myorder]])
	end
	if numtorez>=myorder then
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[deadlist[myorder]])
	end
end
function brezparty(tank_ok)
	--Party Battle Rez for Druids. If tank_ok is true, tanks will be included
	if myclass~="Druid" then return end
	if not UnitInRaid("player") then return brezparty() end
	AcceptResurrect()
	if UnitIsDead("player") or UnitIsGhost("player") then return end
	if not InCombat("player") then return Print("No Longer In Combat, Leaving Battle Rez") end
	if ManaDown()>0 and buffed("Drink","player") then return end
	local deadlist={}
	local deadlist_tanks={}
	local deadlist_healers={}
	local deadlist_brezzers={}
	local live_ready_brezzers={}
	if UnitMana("player")<1368 then CombatUse("Major Mana Potion") end
	--make healer list.
	for i=1,GetNumRaidMembers() do
		local healer=nil
		local brezzer=nil
		local tank=nil
		local name,rank,subgroup,level,class,fileName,zone,online,isdead=GetRaidRosterInfo(i)
		if UnitIsConnected("party"..i) then
			if class=="Druid" then brezzer=true end
			if class=="Priest" or class=="Shaman" or class=="Paladin" then healer=true end
			if FindInTable(MB_tankinraid,UnitName("party"..i)) then tank=true end
			if isdead then
				if tank then
					deadlist_tanks[name]=UnitHealthMax("party"..i)
				end
				if brezzer then
					deadlist_brezzers[name]=UnitManaMax("party"..i)
				elseif healer then
					deadlist_healers[name]=UnitManaMax("party"..i)
				else
					table.insert(deadlist,name)
				end
			else
				local manaleft=UnitMana(MBID[name])
				if brezzer and (not tank or tank_ok) and not buffed("Drink","party"..i) and UnitMana("party"..i)>1367 or name==myname then
					live_ready_brezzers[name]=UnitMana("party"..i)
				end
			end
		end
	end
	local sorted_deadtanks = {}
	local sorted_deadbrezzers = {}
	local sorted_deadhealers = {}
	local sorted_live_ready_brezzers = {}
	table.foreach (deadlist_tanks, function (k, v) table.insert (sorted_deadtanks, k) end )
	table.sort (sorted_deadtanks)
	table.foreach (deadlist_brezzers, function (k, v) table.insert (sorted_deadbrezzers, k) end )
	table.sort(sorted_deadbrezzers)
	table.foreach (deadlist_healers, function (k, v) table.insert (sorted_deadhealers, k) end )
	table.sort(sorted_deadhealers)
	table.sort(deadlist)
	table.foreach (live_ready_brezzers, function (k, v) table.insert (sorted_live_ready_brezzers, k) end )
	table.sort(sorted_live_ready_brezzers)
	myorder=FindInTable(sorted_live_ready_brezzers,myname)
	Print("My rezzing order is "..myorder)
	numtorez=TableLength(sorted_deadtanks)
	if numtorez>=myorder then
		MB_msg("Battle Rezzing "..sorted_deadtanks[myorder])
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[sorted_deadtanks[myorder]])
		return
	end
	numtorez=TableLength(sorted_deadbrezzers)
	if numtorez>=myorder then
		MB_msg("Battle Rezzing "..sorted_deadbrezzers[myorder])
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[sorted_deadbrezzers[myorder]])
		return
	end
	numtorez=TableLength(sorted_deadhealers)
	if numtorez>=myorder then
		MB_msg("Rezzing "..sorted_deadhealers[myorder])
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[sorted_deadhealers[myorder]])
		return
	end
	numtorez=TableLength(deadlist)
	if numtorez>=myorder then
		MB_msg("Rezzing "..deadlist[myorder])
		CastSpellByName(MB_rez_spells[myclass])
		SpellTargetUnit(MBID[deadlist[myorder]])
		return
	end
end
function RaiderHealthP(raidid)
	return UnitHealth(raidid)/UnitHealthMax(raidid)
end
function DHActive(id)
	--if GetRealZoneText()~="Molten Core" then return nil end
	if not TankTarget("Anubisath Sentinel") then return end
	local name,realm=UnitName(id)
	MB_dedicated_targets=table.invert(MB_dedicated_healers)
	if IsAlive(id) and IsAlive(MBID[MB_dedicated_healers[name]]) then
		if UnitMana(MBID[MB_dedicated_healers[name]])/UnitManaMax(MBID[MB_dedicated_healers[name]])>.1 and UnitHealth(MBID[MB_dedicated_healers[name]])/UnitHealthMax(MBID[MB_dedicated_healers[name]])>.2 then return true end
	end
end
function DedicatedHealing(name)
	--Check healer of "name" to see if he is dedicated healing someone.
	--ONLY USE DEDICATED HEALING IN MOLTEN CORE
	--if GetRealZoneText()~="Molten Core" then return nil end
	MB_dedicated_targets=table.invert(MB_dedicated_healers)
	if not TankTarget("Anubisath Sentinel") then return end
	if not FindInTable(MB_dedicated_healers,name) then return end
	if not MBID[MB_dedicated_targets[name]] then return end
	return true
end
function IsHealer()
	if FindInTable(MB_healerinraid,UnitName("player")) then return true end
end
function InRaid()
	if UnitInRaid("player") then return true end
end
function MageInGroup()
	local mages={}
	if UnitInRaid("player") then
		for name,idx in MBID do
			local class=UnitClass(idx)
			if class=="Mage" and IsAlive(idx) then table.insert(mages,name) end
		end
	else
		local name,realm=UnitName("player")
		if UnitClass("player")=="Mage" then table.insert(mages,name) end
		for i=1,GetNumPartyMembers() do
			class=UnitClass("party"..i)
			local name,realm=UnitName("party"..i)
			if class=="Mage" then table.insert(mages,name) end
		end
	end
	if TableLength(mages)==0 then
		return nil
	else
		return(mages[math.random(TableLength(mages))])
	end
end
function MyClassOrder()
	--This sorts the number of toons in a given class in MaxMana order (if mana user) or MaxHealth and returns a number
	--representing which number in that list this toon is. CLASS MUST BE ALIVE AND CONNECTED.
	local myclasstoons={}
	for name,id in MBID do
		class=UnitClass(id)
		if class==myclass and IsAlive(id) then
			if UnitPowerType(id)==0 then myclasstoons[name]=UnitManaMax(id)
			else myclasstoons[name]=UnitHealthMax(id) end
		end
	end
	local order=1
	for name,power in spairs(myclasstoons, function(t,a,b) return t[b] < t[a] end) do
		if name==myname then return order end
		order=order+1
	end
	return 0
end
function MyGroupClassOrder()
	--This sorts the number of toons in a given class IN HIS GROUP in MaxMana order (if mana user) or MaxHealth and returns a number
	--representing which number in that list this toon is. CLASS MUST BE ALIVE AND CONNECTED.
	local myclasstoons={}
	local name,realm=UnitName("player")
	if UnitPowerType("player")==0 then myclasstoons[name]=UnitManaMax("player")
	else myclasstoons[name]=UnitHealthMax("player") end
	for i=1,4 do
		class=UnitClass("party"..i)
		local name,realm=UnitName("party"..i)
		if class==myclass and IsAlive("party"..i) then
			if UnitPowerType("party"..i)==0 then myclasstoons[name]=UnitManaMax("party"..i)
			else myclasstoons[name]=UnitHealthMax("party"..i) end
		end
	end
	local order=1
	for name,power in spairs(myclasstoons, function(t,a,b) return t[b] < t[a] end) do
		if name==myname then return order end
		order=order+1
	end
	return 0
end
function GetClassOrder(checkclass,num)
	--Returns the name of the toon holding the "num"th order of mana or health.
	local OrderList={}
	if UnitInRaid("player") then
		for i=1,GetNumRaidMembers() do
			local name,rank,subgroup,level,class,fileName,zone,online,isdead=GetRaidRosterInfo(i)
			if class==checkclass and IsAlive("raid"..i) then
				if UnitPowerType("raid"..i)==0 then OrderList[name]=UnitManaMax("raid"..i)
				else OrderList[name]=UnitHealthMax("raid"..i) end
			end
			end
	else
		name,realm=UnitName("player")
		if UnitPowerType("player")==0 and UnitClass("player")==checkclass then OrderList[name]=UnitManaMax("player")
		else OrderList[name]=UnitHealthMax("player") end
		for i=1,4 do
			class=UnitClass("party"..i)
			local name,realm=UnitName("party"..i)
			if class==checkclass and IsAlive("party"..i) then
				if UnitPowerType("party"..i)==0 then OrderList[name]=UnitManaMax("party"..i)
				else OrderList[name]=UnitHealthMax("party"..i) end
			end
		end
	end
	local order=1
	for name,power in spairs(myclasstoons, function(t,a,b) return t[b] < t[a] end) do
		if order==num then return name end
		order=order+1
	end
	return 0
end
function ManaUser()
	return UnitPowerType("player")==0
end
function ManaDown()
	if ManaUser() then
		return UnitManaMax("player")-UnitMana("player")
	else
		return 0
	end
end
function healthdown()
	return UnitHealthMax("player")-UnitHealth("player")
end
function smartdrink()
	--Smartdrink will annoy a lot of people. The mage will just keep the trade window open until he summons more than one stack of water. Then he will trade.
	local class=UnitClass("player")
	if class=="Warrior" or class=="Rogue" then return end
	if class~="Mage" and MB_tradeopen then
		if GetTradeTargetItemLink(1) and string.find(GetTradeTargetItemLink(1), "Conjured.*Water") then AcceptTrade() return end
	end
	if class=="Mage" and MB_tradeopen then
		if MageWater()>20 and GetTradePlayerItemLink(1) and string.find(GetTradePlayerItemLink(1), "Conjured.*Water") then Print("Accepting Trade") AcceptTrade() return end
		if MageWater()<21 and GetTradePlayerItemLink(1) and string.find(GetTradePlayerItemLink(1), "Conjured.*Water") then Print("Declining Trade--not enough of my own water left") CancelTrade() return end
	end
	if class~="Mage" and not MB_tradeopen then
		local mage=MageInGroup()
		if mage then
			if MageWater()<1 and ManaUser() then
				TargetByName(mage,1)
				if not buffed("Drink","target") and not MB_tradeopen then InitiateTrade("target") end
			end
		end
	end
	if class=="Mage" and MB_tradeopen then
		if MageWater()>20 and GetTradePlayerItemLink(1) and string.find(GetTradePlayerItemLink(1), "Conjured.*Water") then AcceptTrade() end
		if MageWater()>21 and PickupWater() then
			Print("Trading Water")
			ClickTradeButton(1)
			return
		end
		if MageWater()<22 and MyManaPct()>.2 then cast("Conjure Water") end
		--keep 22 water at all times just in case you run out
	end
	if buffed("Evocation","player") then return end
	_,mybest=MageWater()
	if ManaUser() and ManaDown()>0 and mybest and not buffed("Drink","player") then use(mybest) end
	if ManaUser() and ManaDown()>0 and not buffed("Drink","player") then use("Morning Glory Dew") end
	if class=="Mage" and ManaDown()>0 and not mybest and not buffed("Drink","player") then cast("Conjure Water") end
end
function PartyHurt(hurt,num_party_hurt)
	local numhurt=0
	local myhurt=UnitHealthMax("player")-UnitHealth("player")
	if myhurt>hurt then numhurt=numhurt+1 end
	for i=1,GetNumPartyMembers() do
		local guyshurt=UnitHealthMax("party"..i)-UnitHealth("party"..i)
		if guyshurt>hurt then numhurt=numhurt+1 end
	end
	if numhurt>=num_party_hurt then return numhurt end
end
function NS(id)
	if not id then return end
	if not InCombat() or UnitHealth(id)/UnitHealthMax(id)>.3 then return end
	if IsHybridDruid() or IsDruidHealer() or (UnitClass("player")=="Shaman" and (not IsEnhancementShammy() and not IsElementalShammy())) then
		if OnCooldown("Nature's Swiftness") then return end
		cast("Nature's Swiftness")
	end
	if (not UnitIsEnemy(id,"player")) and (IsDruidHealer() or IsHybridDruid()) then
		if buffed("Regrowth","target") then
			cast("Swiftmend")
		elseif buffed("Nature's Swiftness","player") then
			cast("regrowth")
		end
	end
end
function TravelForm()
	if UnitClass("player")=="Shaman" then cast("Ghost Wolf") end
	if UnitClass("player")=="Druid" then StanceCast("Travel Form") end
end
function TankOnMyTarget()
	--Sometimes I need to know if the tank is targeting my target, say if I want to sheep it, then forget it, tank's got it.
	local targ,tank
	local tank=WhoIs("Furyswipes")
	if not tank then return nil end
	--Print(tank)
	if UnitIsUnit("target",tank.."target") then return 1 else return nil end
end
function TankIsTargeting(name)
	--Checks if tank is targeting the named mob
	--
	local targ,tank
	if IAmFocus() then
		tank=WhoIs(UnitName("player"))
	else
		tank=WhoIs(MB_raidleader)
	end
	if tank=="Me" then tank=MBID[UnitName("player")] end
	if not tank then return nil end
	--Print(tank)
	if UnitName(tank.."target") == name then return 1 else return nil end
end
function WhoIs(name)
	--sort of like RaidID, but works with parties
	--In a party, it returns "Me" if the name is mine
	if UnitInRaid("player") then
		for i=1,GetNumRaidMembers() do
			uname,realm=UnitName("raid"..i) if name==uname then return "raid"..i end
		end
		if UnitName("player")==name then
				return "Me"
		else
			for i=1,GetNumPartyMembers() do
				local uname,realm=UnitName("party"..i)
				if name==uname then return "party"..i end
				end
		end
	end
end
function IsElementalShammy()
	return TalentPointsIn(1)>=TalentPointsIn(2) and TalentPointsIn(1)>=TalentPointsIn(3)
end
function IsHolyPally()
	return TalentPointsIn(1)>=TalentPointsIn(2) and TalentPointsIn(1)>=TalentPointsIn(3)
end
function IsPallyTank()
	return FindInTable(MB_tankinraid,UnitName("player"))
end
function IsFire()
	return (TalentPointsIn(2)>TalentPointsIn(1) and TalentPointsIn(2)>TalentPointsIn(3))
end
function IsBoomkin()
	return not IsHybridDruid() and (TalentPointsIn(1)>=TalentPointsIn(2) and TalentPointsIn(1)>=TalentPointsIn(3))
end
function IsTouchOfShadowLock()
	n,ic,t,c,EM=GetTalentInfo(2,13)
	if EM>0 then return EM else return nil end
end
function IsDruidHealer()
	return not IsHybridDruid() and (TalentPointsIn(3)>TalentPointsIn(2) and TalentPointsIn(3)>TalentPointsIn(1))
end
function IsHybridDruid()
	return TalentPointsIn(3)>17 and TalentPointsIn(2)==0 and TalentPointsIn(1)>15
end
function IsShadow()
	return TalentPointsIn(3)>=TalentPointsIn(2) and TalentPointsIn(3)>=TalentPointsIn(1)
end
function IsFury()
	return TalentPointsIn(2)>TalentPointsIn(1) and TalentPointsIn(2)>TalentPointsIn(3)
end
function IsArms()
	return TalentPointsIn(1)>TalentPointsIn(2) and TalentPointsIn(1)>TalentPointsIn(3)
end
function TalentPointsIn(tab)
	points=0
	for t=1,GetNumTalents(tab) do
		n,ic,tier,c,EM=GetTalentInfo(tab,t)
		points=points+EM
	end
	return points
end
function IsEnhancementShammy()
	return TalentPointsIn(2)>TalentPointsIn(1) and TalentPointsIn(2)>TalentPointsIn(3)
end
	-- CHARACTER ROTATION FUNCTIONS--THIS IS WHERE YOU TAME YOUR BOTS
	-- Every TOON has 5 slots on the action bar-- [prep/melee_support][single target][multi target][turbo cooldowns][closecombat multi-target]
	--
	--PREP: This button is for preparing for battle. Buffs, water trading, etc. It never targets ever, on any toon.
	--SINGLE: This button is for direct damage or healing on one target, usually whatever the focus(tank) is targeting.
	--MULTI: This button is for targeting as many mobs as you can close by or far. Healing remains the same. It also happens here.
	--TURBO: This button is for blowing your dps cooldowns or using trinkets
	--CC: This button is for massive AOE when all mobs are nearby
	----
	--THESE ARE THE FIRST 5 KEYS ON YOUR BAR 1,2,3,4,5
function setup()
	if MB_reportcpu then MB_cpustart=GetTime() end
	if not MB_raidleader and (TableLength(MBID)>1) then Print("WARNING: You have not chosen a raid leader--hit alt-4") end
	if IsControlKeyDown() and IsAltKeyDown() then TradeGoldToLeaderAllBut(10) AcceptTrade() return end
	if UnitLevel("player")==60 and IsControlKeyDown() then buystacks() return end
	if myclass=="Mage" then mage_setup() return end
	if myclass=="Paladin" then paladin_setup() return end
	if myclass=="Shaman" then shammy_setup() return end
	if myclass=="Priest" then priest_setup() return end
	if myclass=="Rogue" then rogue_setup() return end
	if myclass=="Warrior" then warrior_setup() return end
	if myclass=="Warlock" then lock_setup() return end
	if myclass=="Druid" then dru_setup() return end
	if myclass=="Hunter" then hunter_setup() return end
end
function single()
	if MB_reportcpu then MB_cpustart=GetTime() end
	if not MB_raidleader and (TableLength(MBID)>1) then Print("WARNING: You have not chosen a raid leader--hit alt-4") end
	if myclass=="Mage" then mage_single() return end
	if myclass=="Paladin" then paladin_single() return end
	if myclass=="Shaman" then shammy_single() return end
	if myclass=="Priest" then priest_single() return end
	if myclass=="Rogue" then rogue_single() return end
	if myclass=="Warrior" then warrior_single() return end
	if myclass=="Warlock" then lock_single() return end
	if myclass=="Druid" then dru_single() return end
	if myclass=="Hunter" then hunter_single() return end
end
function multi()
	if MB_reportcpu then MB_cpustart=GetTime() end
	if not MB_raidleader and (TableLength(MBID)>1) then Print("WARNING: You have not chosen a raid leader--hit alt-4") end
	if myclass=="Mage" then mage_multi() return end
	if myclass=="Paladin" then paladin_multi() return end
	if myclass=="Shaman" then shammy_multi() return end
	if myclass=="Priest" then priest_multi() return end
	if myclass=="Rogue" then rogue_multi() return end
	if myclass=="Warrior" then warrior_multi() return end
	if myclass=="Warlock" then lock_multi() return end
	if myclass=="Druid" then dru_multi() return end
	if myclass=="Hunter" then hunter_multi() return end
end
function turbo()
	if MB_reportcpu then MB_cpustart=GetTime() end
	if not MB_raidleader and (TableLength(MBID)>1) then Print("WARNING: You have not chosen a raid leader--hit alt-4") end
	if IsControlKeyDown() then MountUp() return end
	if not IAmFocus() then SetView(2) end
	if IsAltKeyDown() then AcceptGroup() end
	if IsAltKeyDown() and not IAmFocus() then follow_assist() return end
	if IsAltKeyDown() then return end
	if InCombat() then
		local myclass=UnitClass("player")
		if myclass=="Mage" then mage_turbo() return end
		if myclass=="Paladin" then paladin_turbo() return end
		if myclass=="Shaman" then shammy_turbo() return end
		if myclass=="Priest" then priest_turbo() return end
		if myclass=="Rogue" then rogue_turbo() return end
		if myclass=="Warrior" then warrior_turbo() return end
		if myclass=="Warlock" then lock_turbo() return end
		if myclass=="Druid" then dru_turbo() return end
		if myclass=="Hunter" then hunter_turbo() return end
	else
		SummonOutOfRange()
	end
end
function aoe()
	if MB_reportcpu then MB_cpustart=GetTime() end
	if not MB_raidleader and (TableLength(MBID)>1) then Print("WARNING: You have not chosen a raid leader--hit alt-4") end
	if not IAmFocus() and IsAltKeyDown() and FindInTable(MB_tanklist,myname) then Follow() return end
	if Jindo() and (myclass~="Mage" and myclass~="Warlock") then return end
	if myclass=="Mage" then mage_aoe() return end
	if myclass=="Paladin" then paladin_aoe() return end
	if myclass=="Shaman" then shammy_aoe() return end
	if myclass=="Priest" then priest_aoe() return end
	if myclass=="Rogue" then rogue_aoe() return end
	if myclass=="Warrior" then warrior_aoe() return end
	if myclass=="Warlock" then lock_aoe() return end
	if myclass=="Druid" then dru_aoe() return end
	if myclass=="Hunter" then hunter_aoe() return end
end
function tap(modifier)
	if not MB_raidleader and (TableLength(MBID)>1) then Print("WARNING: You have not chosen a raid leader--hit alt-4") end
	if myclass=="Mage" then mage_tap(modifier) return end
	if myclass=="Paladin" then paladin_tap(modifier) return end
	if myclass=="Shaman" then shammy_tap(modifier) return end
	if myclass=="Priest" then priest_tap(modifier) return end
	if myclass=="Rogue" then rogue_tap(modifier) return end
	if myclass=="Warrior" then warrior_tap(modifier) return end
	if myclass=="Warlock" then lock_tap(modifier) return end
	if myclass=="Druid" then dru_tap(modifier) return end
	if myclass=="Hunter" then hunter_tap(modifier) return end
end
--WARLOCK
function lock_turbo()
	SpellStopCasting()
	if not InCombat() then return end
	if not TargetInCombat() then return end
	use(13)
	use(14)
end
function lock_setup()
	AutoDelete()
	if (MB_default_warlock_pet=="Voidwalker" or MB_default_warlock_pet=="Succubus") then Print("Setting pet defensive!") PetDefensiveMode() else PetPassiveMode() end
	if MB_My_ot_target then PetPassiveMode() end
	if IsAltKeyDown() then MB_Assist() return end
	if InCombat() then CancelTrade() end
	if ManaDown()>0 and buffed("Drink","player") then return end
	if buffed("Food","player") then return end
	if MyLevel()>19 then
		SelfBuff("Demon Armor")
	else
		SelfBuff("Demon Skin")
	end
	--if you hold the alt key down, you will buff without summoning
	if IsTouchOfShadowLock() and MB_default_warlock_pet=="Succubus" then
		if not buffed("Touch of Shadow","player") then
			cast("Demonic Sacrifice")
			if UnitCreatureFamily("pet")~="Succubus" then
				cast("Fel Domination")
				cast("Summon Succubus")
			end
		end
	else
		SummonDemon()
	end
	if not InCombat() then smartdrink() end
	if MB_soulstone_rezzers then 
		local random_rezzer=RezzersInGroup()
		if random_rezzer and not buffed("Soulstone","player") then
			if HasItem("Major Soulstone")==0 and NumShards()>0 then CastSpell(SpellNum("Create Soulstone.*Major"),BOOKTYPE_SPELL) end
			TargetByName(random_rezzer)
			use("Major Soulstone")
		end
	end
	--***This is working healthstone code that I don't use.Too many shards for how much I wipe
	--if not HasMajorHealthstone() and NumShards()>0 then CastSpell(SpellNum("Create Healthstone (Major)"),BOOKTYPE_SPELL) end
	--if not HasGreaterHealthstone() and NumShards()>0 then CastSpell(SpellNum("Create Healthstone (Greater)"),BOOKTYPE_SPELL) end
	--if not HasHealthstone() and NumShards()>0 then cast("Create Healthstone") end
end
function TargetManaPct()
	return UnitMana("target")/UnitManaMax("target")
end
function lock_single()
	if (MB_default_warlock_pet=="Voidwalker" or MB_default_warlock_pet=="Succubus") then PetDefensiveMode() else PetPassiveMode() end
	if MB_My_ot_target then PetPassiveMode() end
	if not IsAlive("player") then return ReportCPU("Lock Single dead") end
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	CC()
	--if not IAmFocus() then BanishManaFiend() end
	if UnitName("target")=="Moam" and TargetManaPct()>.4 then cast("Drain Mana") end
	if UnitName("target")=="Obsidian Eradicator" then cast("Drain Mana") end
	if MB_My_ot_target then
		OT()
		SickemTarget()
	end
	if IsAltKeyDown() then return ReportCPU("Lock Single alt") end
	if UnitName("target")=="Azuregos" and buffed("Magic Shield","target") then SpellStopCasting() return end
	if not IAmFocus() then LockonTarget() end
	if buffed("Hellfire","player") then RunLine("/cast Life Tap(Rank 1)") end
	if ImBusy() then return ReportCPU("Lock Single busy") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if TargetInCombat() or IAmFocus() then
		if not MB_My_ot_target then SickemTarget() end
		if MyHealthPct()<.1 then cast("Drain Life") end
		if NumShards()<20 and UnitHealth("target")/UnitHealthMax("target")<.10 then cast("Drain Soul") end
		if UnitName("target")=="Powerful Healing Ward" then cast("Searing Pain") end
		if (UnitName("target")=="Anubisath Guardian" or UnitName("target")=="Anubisath Sentinel") and buffed("Shadow and Frost Reflect","target") then
			cast("Searing Pain")
			return
		end
		if GetRealZoneText()=="Molten Core" then
			if MyClassOrder()==1 then BuffCast("Curse of Shadow") end
			if MyClassOrder()==2 then BuffCast("Curse of the Elements") end
			if MyClassOrder()>3 then
				if UnitLevel("target")>60 or UnitLevel("target")<0 then
					BuffCast("Curse of Doom")
				else
					BuffCast("Curse of Weakness")
				end
			end
		else
			if MyClassOrder()==1 then
				BuffCast("Curse of Recklessness")
			end
			if MyClassOrder()==2 then BuffCast("Curse of Shadow") end
			if MyClassOrder()==3 then BuffCast("Curse of the Elements") end
			if MyClassOrder()>4 then
				if UnitLevel("target")>60 or UnitLevel("target")<0 then
					BuffCast("Curse of Doom")
				else
					BuffCast("Curse of Weakness")
				end
			end
		end
		if Jindo() then
			cast("Searing Pain")
		else
			CooldownCast("Corruption",17)
			cast("Shadow Bolt")
		end
	end
	if MyManaPct()<.1 and MyHealthPct()>.4 then cast("Life Tap") end
	ReportCPU("Lock Single")
end
function lock_multi()
	--This is the first of the "multi" dps programs.
	--It is meant to be used when there are multiple ranged targets.
	--It is meant to go in slot 3 of the keys
	--It also works when there are multiple close targets, but perhaps you want lock_cc() (close combat) for that
	--THIS MACRO SUCKS. Actually, for lock multi, locks should change target and dot every enemy in combat up.
--
	if (MB_default_warlock_pet=="Voidwalker" or MB_default_warlock_pet=="Succubus") then PetDefensiveMode() else PetPassiveMode() end
	if MB_My_ot_target then PetPassiveMode() end
	CC()
	if MB_My_ot_target then
		--Select my off-tank target if I've lost it
		OT()
		SickemTarget()
		--If you are a tank, (focus or not) and not assigned to an OT target, you will taunt anything NOT attacking a tank
	end
	if IsAltKeyDown() then return ReportCPU("Lock multi alt") end
	if not IAmFocus() then LockonTarget() end
	--Jump out of hellfire in multi--hellfire is only run in lock_cc
	--multi is meant for ranged targets
	if buffed("Hellfire","player") then RunLine("/cast Life Tap(Rank 1)") end
	if ImBusy() then return ReportCPU("Lock multi busy") end
	--don't run this program if busy draining
	if buffed("Drain Life","player") then return ReportCPU("Lock multi drain life") end
	if buffed("Drain Soul","player") then return ReportCPU("Lock multi drain soul") end
	--You are dying. Use a pot
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	--If the alt-key is down, tank wants more aggro, stop dpsing
	--You are not a tank. Do not shoot at anything unless it is already in combat. Or you are by yourself and have no focus.
	if TargetInCombat() or IAmFocus() then
		--send your pet
		if not MB_My_ot_target then SickemTarget() end
		--you are dying, drain him
		if MyHealthPct()<.1 then cast("Drain Life") end
		--Hey, we need shards, don't we? Don't DS bosses
		if NumShards()<20 and UnitHealth("target")/UnitHealthMax("target")<.10 then cast("Drain Soul") end
		--throw dots on target--need to add switching targets here
		if GetRealZoneText()=="Molten Core" then
			if MyClassOrder()==1 then BuffCast("Curse of Shadow") end
			if MyClassOrder()==2 then BuffCast("Curse of the Elements") end
			if MyClassOrder()>3 then
				if UnitLevel("target")>60 or UnitLevel("target")<0 then
					BuffCast("Curse of Doom")
				else
					BuffCast("Curse of Weakness")
				end
			end
		else
			if MyClassOrder()==1 then BuffCast("Curse of Recklessness") end
			if MyClassOrder()==2 then BuffCast("Curse of Shadow") end
			if MyClassOrder()==3 then BuffCast("Curse of the Elements") end
			if MyClassOrder()>4 then
				if UnitLevel("target")>60 or UnitLevel("target")<0 then
					BuffCast("Curse of Doom")
				else
					BuffCast("Curse of Weakness")
				end
			end
		end
		if Jindo() then
			cast("Searing Pain")
		else
			BuffCast("Corruption")
			cast("Shadow Bolt")
		end
		--You are out of mana but not life. Why not life tap and get some mana?
		if MyManaPct()<.1 and MyHealthPct()>.4 then cast("Life Tap") end
	end
	ReportCPU("Lock multi")
end
function lock_aoe()
	--ONE OF MY FAVORITES. Cast hellfire. Stack a bunch of locks doing this and get thousands of dps!
	--Stop hellfire if you are near death
	--You can only interrupt hellfire by casting another spell, like life tap rank 1
	if (MB_default_warlock_pet=="Voidwalker" or MB_default_warlock_pet=="Succubus") then PetDefensiveMode() else PetPassiveMode() end
	if MB_My_ot_target then PetPassiveMode() end
	if buffed("Hellfire","player") and MyHealthPct()<.1 then RunLine("/cast Life Tap(Rank 1)") end
	if ImBusy() then return ReportCPU("Lock aoe busy") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MB_My_ot_target then
		--Select my off-tank target if I've lost it
		OT()
		SickemTarget()
		--If you are a tank, (focus or not) and not assigned to an OT target, you will taunt anything NOT attacking a tank
	end
	if not IAmFocus() then LockonTarget() end
	if not IsAltKeyDown() then
		if not MB_My_ot_target then SickemTarget() end
		if MyMana()<=645 then cast("Life Tap") end
		if MyHealthPct()<=.1 then use("Major Healthstone") end
		if MyHealthPct()<=.1 then use("Greater Healthstone") end
		if MyHealthPct()<=.1 then use("Healthstone") end
		if MyHealthPct()<.15 then RunLine("/cast Life Tap(Rank 1)") end
		if MyHealthPct()>.17 and not buffed("Hellfire","player") then cast("Hellfire") end
	end
	ReportCPU("Lock aoe")
end
-- WARRIOR
function warrior_setup()
	name,realm=UnitName("player")
	if not FindInTable(MB_tankinraid,name) and not IsControlKeyDown() and not IsAltKeyDown() then Follow() end
	if IsControlKeyDown() and IAmFocus() then
		if UnitName("target") then cast("Bloodrage") end
		if UnitName("target") and InMeleeRange() then cast("Demoralizing Shout") end
		if UnitName("target") and InMeleeRange() then cast("Cleave") end
		if UnitName("target") and InMeleeRange() and MyRage()>14 and not OnCooldown("Thunder Clap") then
			StanceCast("Battle Stance")
			cast("Thunder Clap")
		else
			StanceCast("Defensive Stance")
		end
		if UnitName("target") and InMeleeRange() and MyRage()>24 and not OnCooldown("Whirlwind") then
			StanceCast("Berserker Stance")
			cast("Whirlwind")
		else
			StanceCast("Defensive Stance")
		end
		if UnitName("target") then cast("Shoot Crossbow") end
		if InMeleeRange() and not IsCurrentAction(72) then UseAction(72) end;
		return ReportCPU("Warrior setup ctrl")
	end
	if IsAltKeyDown() and not MB_My_ot_target then MB_Assist() end
	if IsAltKeyDown() then
		--stop all attacks, furyswipes taunting
		if UnitName("target")~="Kurinnaxx" and IsCurrentAction(72) then
			UseAction(72)
			return ReportCPU("Warrior setup alt")
		end
	end
	if not IAmFocus() and IsAltKeyDown() and TargetInCombat() then StanceCast("Defensive Stance") cast("Taunt") cast("Revenge") cast("Mocking Blow") ; end
	AutoDelete()
	ReportCPU("Warrior setup")
end
function fearbreak()
	if not OnCooldown("Will of the Forsaken") then cast("Will of the Forsaken") return end
	--Print("Fearbreak")
	if not OnCooldown("Berserker Rage") then
		StanceCast("Berserker Stance")
		cast("Berserker Rage")
	end
	CooldownCast("Tremor Totem",15)
end
function AutoAssignCC()
	if IAmFocus() and (UnitName("target")=="Moam" or UnitName("target")=="Mana Fiend") then
		for i=1,5 do
			if UnitName("target")=="Mana Fiend" and not GetRaidTargetIndex("target") and not UnitIsDead("target") then MB_assign_cc() return end
			TargetNearestEnemy()
		end
		if not MB_moamdead then RunLine("/target Moam") end
		if UnitIsDead("target") and UnitName("target")=="Moam" then 
			MB_moamdead=true
		end
	end
end
function AutoAssignOT()
	if IAmFocus() and UnitName("target")=="The Prophet Skeram" then
		local mytarg=GetRaidTargetIndex("target")
		for i=1,5 do
			if UnitName("target")=="The Prophet Skeram" and not GetRaidTargetIndex("target") and not UnitIsDead("target") then MB_assign_ot() MB_assign_int() return end
			TargetNearestEnemy()
		end
		for i=1,5 do
			if UnitName("target")=="The Prophet Skeram" and GetRaidTargetIndex("target")==mytarg or (GetRaidTargetIndex("target")==mytarg and UnitIsDead("target")) then return end
			TargetNearestEnemy()
		end
	end
end
function AutoAssignINT()
	if IAmFocus() and UnitName("target")=="The Prophet Skeram" then
		local mytarg=GetRaidTargetIndex("target")
		for i=1,5 do
			if UnitName("target")=="The Prophet Skeram" and not GetRaidTargetIndex("target") and not UnitIsDead("target") then MB_assign_int() return end
			TargetNearestEnemy()
		end
		for i=1,5 do
			if UnitName("target")=="The Prophet Skeram" and GetRaidTargetIndex("target")==mytarg or (GetRaidTargetIndex("target")==mytarg and UnitIsDead("target")) then return end
			TargetNearestEnemy()
		end
	end
end
function AnubAlert()
	local timeout=25
	if not MB_aatimeout then MB_aatimeout=GetTime() end
	if not MB_My_ot_target then return end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Shadow Storm","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/yell SHADOW STORM, BACK ME UP") MB_aatimeout=GetTime() end end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Mana Burn","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/yell MANA BURN, BACK ME UP") MB_aatimeout=GetTime() end end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Thunderclap","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/yell THUNDERCLAP, BACK ME UP") MB_aatimeout=GetTime() end end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Thorns","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/say This guy has Thorns") MB_aatimeout=GetTime() end end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Mortal Strike","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/say This guy has Mortal Strike") MB_aatimeout=GetTime() end end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Shadow and Frost Reflect","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/say This guy has Shadow and Frost Reflect") MB_aatimeout=GetTime() end end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Arcane and Fire Reflect","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/say This guy has Arcane and Fire Reflect") MB_aatimeout=GetTime() end end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Mending","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/say This guy has Mending") MB_aatimeout=GetTime() end end
	if UnitName("target")=="Anubisath Sentinel" and buffed("Periodic Knock Away","target") then if GetTime()>=MB_aatimeout+timeout then RunLine("/say This guy has Knockaway") MB_aatimeout=GetTime() end end
end
function warrior_tank_single()
	AnubAlert()
	AutoAssignINT()
	AutoAssignCC()
	if IsControlKeyDown() then WarriorInterrupt() return ReportCPU("Warrior tank single ctrl") end
	--NEVeR MAKE A MOVE ON SHAZZRAH UNLESS U R Main TANK
	if TankTarget("Shazzrah") and not IAmFocus() then return ReportCPU("Warrior tank single shazzrah") end
	local tname=UnitName("target")
	if not tname then tname="" end
	if MyHealthPct()<.15 then WarriorSurvive() end
	--Charge and Thunderclap
	--if IAmFocus() then CloseDistance() end
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	if IAmFocus() and UnitName("target")=="Shazzrah" then CloseDistance() end
	--if UnitName("target") and (UnitLevel("target")<UnitLevel("player")-8 and UnitLevel("target")>0) then fury_single() return ReportCPU("Warrior tank single lowlev fury") end
	if SpellExists("Charge") then
		if IAmFocus() and (CooldownTime("Charge")>.85 and CooldownTime("Charge")<4) and not OnCooldown("Thunder Clap") and InMeleeRange() then cast("Thunder Clap") end
	end
	if SpellExists("Charge") then
		if CooldownTime("Charge")>0 and CooldownTime("Charge")<1.5 then return ReportCPU("Warrior tank single charge") end
	end
	--TAUNT CODE
	OT()
	ttname=UnitName("targettarget")
	if MB_My_ot_target then
		if tname and ttname and UnitIsEnemy("player","target") and ttname~=myname then
			WarriorTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	else
		if tname and ttname and UnitIsEnemy("player","target") and not FindInTable(MB_tankinraid,ttname) then
			WarriorTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	end
	--Force taunt on alt-2 if you are main tank, otherwise ctrl-3 if you are bot
	if IAmFocus() and IsAltKeyDown() and UnitIsEnemy("player","target") and UnitName("targettarget")~=myname then WarriorTaunt("TAUNT--alt-2: "..tname) end
	if not IAmFocus() and IsAltKeyDown() and UnitName("target")=="Kurinnaxx" then
	--stop attacking during kurinnaxx when you are the off tank and the main tank is taunting!
	if IsCurrentAction(72) then UseAction(72) end
	return ReportCPU("Warrior tank single swing")
	end
	--END TAUNT CODE
	if not UnitName("target") and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	------END OF TARGETING------------DO THAT WARRIOR SHIT------------
	--Uncomment the following line if you like to charge/intercept always
	--if IAmFocus() then CloseDistance() end
	if UnitName("target") and ((TargetInCombat() or IAmFocus() or IsAltKeyDown())) then
		--Only if you are in combat or are the leader! (force OT attacks if alt key down)
		WarriorSnarePlayer()
		if InMeleeRange() and InCombat() then StanceCast("Defensive Stance") ; end
		if InMeleeRange() and InCombat() then cast("Bloodrage") end
		if (UnitName("target")=="Flamewaker Elite" or UnitName("target")=="Sulfuron Harbinger" or UnitName("target")=="Majordomo Executus" or UnitName("target")=="Gurubashi Axe Thrower" or UnitName("target")=="Deathknight Captain" or UnitName("target")=="Spirestone Reaver") and not OnCooldown("Disarm") and not buffed("Disarm","target") then cast("Disarm") end
		cast("Shield Slam")
		SelfBuff("Battle Shout")
		if InMeleeRange() then StanceCast("Defensive Stance") end
		if SpellExists("Sunder Armor") then StackCast("Sunder Armor",5) end
		if MyHealthPct()<.8 then cast("Shield Block") end
		cast("Revenge")
		--if not IsAltKeyDown() and InMeleeRange() and not buffed("Thunder Clap","target") and MyRage()>15 and not OnCooldown("Thunder Clap") then
			--StanceCast("Battle Stance")
			--cast("Thunder Clap")
		--end
		if not IsAltKeyDown() then BuffCast("Demoralizing Shout") end
		if MyRage()>50 then cast("Heroic Strike") end
		if MyRage()>40 then cast("Shield Bash") end
		if not IsCurrentAction(72) then UseAction(72) end;
	end
	ReportCPU("Warrior tank single")
end
function InBattleStance()
	local texture,name,isActive,isCastable = GetShapeshiftFormInfo(1)
	if isActive then return true end
end
function WarriorTaunt(msg)
	if not OnCooldown("Taunt") then
		--MB_msg(msg)
		StanceCast("Defensive Stance")
		cast("Taunt")
		return
	end
	if not OnCooldown("Mocking Blow") and MyRage()>9 and MyStance()==1 then
		--MB_msg(msg.." Taunt failed or on cooldown--trying mocking blow!")
		cast("Mocking Blow")
		return
	end
	if not OnCooldown("Mocking Blow") and MyRage()>9 then
		StanceCast("Battle Stance")
	end
end
function BearTaunt(msg)
	--if not OnCooldown("Growl") and TargetInCombat() then
	if not OnCooldown("Growl") then
		--MB_msg(msg)
		cast("Growl")
		return
	end
	--if not OnCooldown("Faerie Fire (Feral)") and TargetInCombat() then
	if not OnCooldown("Faerie Fire (Feral)") then
		--MB_msg(msg.." Growl on CD, trying FF")
		cast("Faerie Fire (Feral)()")
	end
end
function warrior_tank_multi()
	AnubAlert()
	if IsControlKeyDown() then cast("Challenging Shout") return ReportCPU("Warrior tank multi ctrl") ; end
	--Don't Do anything unless you are tank or you are a bot in combat
	--WarriorSurvive()
	--If you have a target and it's in combat, or if you have a target and you are the tank, do your tank shit.
	local tname=UnitName("target")
	if not tname then tname="" end
	if MyHealthPct()<.15 then WarriorSurvive() end
	--if UnitName("target") and (UnitLevel("target")<UnitLevel("player")-8 and UnitLevel("target")>0) then fury_multi() return end
	--If you are a bot and have a target in combat, do shit. If you are the tank, do shit anyway.
	--TAUNT CODE
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	OT()
	ttname=UnitName("targettarget")
	if MB_My_ot_target then
		if tname and ttname and UnitIsEnemy("player","target") and ttname~=myname then
			WarriorTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	else
		if tname and ttname and UnitIsEnemy("player","target") and not FindInTable(MB_tankinraid,ttname) then
			WarriorTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	end
	--END TAUNT CODE
	if not IAmFocus() and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	--if IAmFocus() and IsAltKeyDown() TableLength(MB_My_ot_target)==0 then TargetNotOnMe() end
	if not IAmFocus() and not MB_My_ot_target then LockonTarget() end
	if not UnitName("target") and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	if UnitName("target") and (TargetInCombat() or IAmFocus()) then
		if IAmFocus() and IsAltKeyDown() then TargetNotOnMe() end
		--if IAmFocus() then CloseDistance() end
		WarriorSnarePlayer()
		cast("Bloodrage")
		SelfBuff("Battle Shout")
		if not IsAltKeyDown() then BuffCast("Demoralizing Shout") end
		if not IsAltKeyDown() and not buffed("Thunder Clap","target") and not OnCooldown("Thunder Clap") then
			cast("Thunder Clap")
			StanceCast("Battle Stance")
		end
		cast("Cleave")
		if OnCooldown("Cleave") and MyRage()>25 then StanceCast("Berserker Stance") cast("Whirlwind") end
		cast("shield slam")
		StanceCast("Defensive Stance")
		if MyRage()>25 then StackCast("Sunder Armor",5) end
		if MyHealthPct()<.8 and MyRage()>30 then cast("shield block") end
		if not IsCurrentAction(72) then UseAction(72) end;
	end
	ReportCPU("Warrior tank multi")
end
function warrior_tank_aoe()
	local tname=UnitName("target")
	--if UnitName("target") and (UnitLevel("target")<UnitLevel("player")-8 and UnitLevel("target")>0 ) then fury_multi() return end
	OT()
	ttname=UnitName("targettarget")
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	if MB_My_ot_target then
		if tname and ttname and UnitIsEnemy("player","target") and ttname~=myname then
			WarriorTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	else
		if tname and ttname and UnitIsEnemy("player","target") and not FindInTable(MB_tankinraid,ttname) then
			WarriorTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	end
	if not UnitName("target") and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	if UnitName("target") and (TargetInCombat() or IAmFocus()) then
		if not MB_My_ot_target then TargetNotOnTankNoAlt() end
		cast("Bloodrage")
		SelfBuff("Battle Shout")
		BuffCast("Demoralizing Shout")
		if MyRage()>19 and not buffed("Thunder Clap","target") and not OnCooldown("Thunder Clap") then
			StanceCast("Battle Stance")
			cast("Thunder Clap")
			return ReportCPU("Warrior tank aoe tc")
		else
			StanceCast("Defensive Stance")
			cast("Cleave")
			StanceCast("Defensive Stance")
			if MyHealthPct()<.8 and MyRage()>30 then cast("shield block") end
			cast("shield slam")
			if MyRage()>25 then cast("Revenge") end
			if MyRage()>25 then StackCast("Sunder Armor",5) end
		end
		if not IsCurrentAction(72) then UseAction(72) end;
	end
	ReportCPU("Warrior tank aoe")
end
function fury_single()
	--if IsAltKeyDown() and not IAmFocus() then if IsCurrentAction(72) then UseAction(72) return end end;
	if InMeleeRange() and UnitHealth("target")/UnitHealthMax("target")<=.2 and UnitHealth("target")>1000 then cast("Execute") ; cast("Bloodrage") ; end
	if IsControlKeyDown() then WarriorInterrupt() ; end
	if not IAmFocus() then LockonTarget() end
	if IAmFocus() or (TargetInCombat() and not IsAltKeyDown()) then
		WarriorSnarePlayer()
		cast("Execute")
		WarriorSnarePlayer()
		SelfBuff("Bloodrage")
		SelfBuff("Battle Shout")
		BuffCast("Thunder Clap")
		CombatUse(14)
		CombatUse(13)
		if InMeleeRange() and InCombat() then StanceCast("Berserker Stance") ; end
		cast("Bloodthirst")
		if MyRage("player")>42 then cast("Heroic Strike") end
		if not IsCurrentAction(72) then UseAction(72) end;
	else
		if IsCurrentAction(72) then UseAction(72) end;
	end
	ReportCPU("Warrior fury single")
end
function fury_multi()
	if IAmFocus() or (TargetInCombat() and not IsAltKeyDown()) then
		LockonTarget()
		WarriorSnarePlayer()
		SelfBuff("Battle Shout")
		BuffCast("Thunder Clap")
		CombatUse(14)
		CombatUse(13)
		if InMeleeRange() and InCombat() then StanceCast("Berserker Stance") ; end
		if not IsAltKeyDown() then BuffCast("Demoralizing Shout") end
		cast("Berserker Rage")
		cast("Bloodrage")
		cast("Whirlwind")
		if MyRage()>26 then cast("Cleave") end
		if not IsCurrentAction(72) then UseAction(72) end;
	else
		if IsCurrentAction(72) then UseAction(72) end;
	end
	ReportCPU("Warrior fury multi")
end
function arms_single()
	if IAmFocus() or (TargetInCombat() and not IsAltKeyDown()) then
		LockonTarget()
		if InMeleeRange() and UnitHealth("target")/UnitHealthMax("target")<=.2 then cast("Execute") ; cast("Bloodrage") ; end
		if IsControlKeyDown() then WarriorInterrupt() ; end
		--if IAmFocus() then CloseDistance() end
		WarriorSnarePlayer()
		SelfBuff("Battle Shout")
		BuffCast("Thunder Clap")
		CombatUse(14)
		CombatUse(13)
		if InMeleeRange() and InCombat() then StanceCast("Battle Stance") ; end
		cast("Overpower")
		if PVP() then BuffCast("Rend") end
		BuffCast("Thunder Clap")
		if PVP() and not OnCooldown("Mortal Strike") then
			cast("Mortal Strike")
		else
			cast("Heroic Strike")
		end
		if not IsCurrentAction(72) then UseAction(72) end;
	else
		if IsCurrentAction(72) then UseAction(72) end;
	end
	ReportCPU("Warrior arms single")
end
function arms_multi()
	if IAmFocus() or (TargetInCombat() and not IsAltKeyDown()) then
		LockonTarget()
		if IsControlKeyDown() then cast("Challenging Shout") ; end
		--if IAmFocus() then CloseDistance() end
		WarriorSnarePlayer()
		if InMeleeRange() and TargetInCombat() and MyRage()>=25 and not OnCooldown("Whirlwind") then
			StanceCast("Berserker Stance")
			cast("Whirlwind")
		end
		cast("Overpower")
		if PVP() then BuffCast("Rend") end
		StanceCast("Battle Stance")
		if not OnCooldown("Sweeping Strikes") then
			StanceCast("Battle Stance")
			cast("Sweeping Strikes")
		end
		BuffCast("Thunder Clap")
		if buffed("Sweeping Strikes","player") then cast("Heroic Strike") end
		cast("Cleave")
		if MyRage()>35 then cast("Heroic Strike") end
		SelfBuff("Battle Shout")
		if not IsAltKeyDown() then BuffCast("Demoralizing Shout") end
		CombatUse(14)
		CombatUse(13)
		if not IsCurrentAction(72) then UseAction(72) end;
	else
		if IsCurrentAction(72) then UseAction(72) end;
	end
ReportCPU("Warrior arms multi")
end
function warrior_turbo()
	if not InCombat() then return ReportCPU("Warrior turbo incombat") end
	if not OnCooldown("Death Wish") then cast("Death Wish"); cast("Bloodrage") ; cast("Berserker Rage") end
	cast("Blood Fury")
	CombatUse(13)
	CombatUse(14)
	ReportCPU("Warrior turbo")
end
-- -- PALLY
function paladin_turbo()
	if not InCombat() then return end
	ReportCPU("Paladin turbo")
end
function paladin_single()
	if IsHolyPally() then pally_heal_single() return end
	pally_tank_single()
end
function paladin_multi()
	if IsHolyPally() then pally_heal_multi() return end
	pally_tank_multi()
end
function paladin_aoe()
	if IsHolyPally() then pally_heal_aoe() return end
	pally_tank_aoe()
end
function PallySurvive()
	if not InCombat() then return end
	local health=UnitHealth("player")
	if health<200 and not buffed("Forbearance","player") then SpellStopCasting() cast("Divine Protection") TargetUnit("player") cast("Blessing of Protection") TargetUnit("playertarget") end
	if health<UnitHealthMax("player") and (buffed("Divine Protection","player") or buffed("Blessing of Protection","player")) then RunLine("/qh player") return end
	if health<200 then TargetUnit("player") cast ("Lay on Hands") TargetUnit("playertarget") end
end
function pally_heal_single()
	if IsControlKeyDown() then PallyInterrupt() ; end
	PallySurvive()
	--if ImBusy() then return ReportCPU("Pally Heal Single busy") end
	if TankTarget("Azuregos") and IsAltKeyDown() then return end
	SaveAndorov(.8)
	Decurse()
	RaidHeal()
	ReportCPU("Pally Heal Single")
end
function pally_heal_multi()
	if IsControlKeyDown() then PallyInterrupt() ; end
	PallySurvive()
	--if ImBusy() then return ReportCPU("Pally heal multi busy") end
	SaveAndorov(.8)
	Decurse()
	RaidHeal()
	ReportCPU("Pally heal multi")
end
function pally_heal_aoe()
	if IsControlKeyDown() then PallyInterrupt() ; end
	PallySurvive()
	--if ImBusy() then return ReportCPU("Pally heal aoe busy") end
	if not IAmFocus() then LockonTarget() end
	if InMeleeRange() then cast("Consecration") end
	Decurse()
	RaidHeal()
	ReportCPU("Pally heal aoe")
end
function pally_tank_single()
	--Begin tank program
	--Interrupts are priority one, bot or not.
	--if IsControlKeyDown() then PallyInterrupt() ; end
	--PallySurvive()
	Decurse()
	if not IAmFocus() then LockonTarget() end
	--if InMeleeRange() then cast("Consecration") end
	SelfBuff("Seal of Righteousness")
	cast("Judgement")
	if not IsCurrentAction(72) then UseAction(72) end;
	SelfBuff("Righteous Fury")
	PallyBuff()
	ReportCPU("Pally tank single")
end
function pally_tank_multi()
	--Begin tank program
	--Interrupts are priority one, bot or not.
	if IsControlKeyDown() then PallyInterrupt() ; end
	PallySurvive()
	Decurse()
	if not IAmFocus() then LockonTarget() end
	CombatUse(14)
	CombatUse(13)
	if InMeleeRange() then cast("Consecration") end
	SelfBuff("Seal of Righteousness")
	cast("Judgement")
	if not IsCurrentAction(72) then UseAction(72) end;
	--If you are tank hand have no target, target nearest, I guess.
	SelfBuff("Righteous Fury")
	--PallyBuff()
	ReportCPU("Pally tank multi")
end
function pally_tank_aoe()
	--Begin tank program
	--Interrupts are priority one, bot or not.
	if IsControlKeyDown() then PallyInterrupt() ; end
	PallySurvive()
	if not IAmFocus() then LockonTarget() end
	if InMeleeRange() then cast("Consecration") end
	Decurse()
	CombatUse(14)
	CombatUse(13)
	SelfBuff("Seal of Righteousness")
	cast("Judgement")
	if not IsCurrentAction(72) then UseAction(72) end;
	--If you are tank hand have no target, target nearest, I guess.
	SelfBuff("Righteous Fury")
	--PallyBuff()
	ReportCPU("Pally tank aoe")
end
function pally_turbo()
	if not InCombat() then return ReportCPU("Pally turbo notincombat") end
	ReportCPU("Pally turbo")
end
function TradeGoldToLeaderAllBut(amt)
	if not MB_raidleader then return end
	if MB_raidleader==UnitName("player") then
		if MB_tradeopen and GetTargetTradeMoney()>0 then AcceptTrade() return end
	else
		local mymoney=GetMoney()
		if mymoney<=amt*10000 then return end
		local mytrade=mymoney-amt*10000
		TargetUnit(MBID[MB_raidleader])
		InitiateTrade("target")
		if GetPlayerTradeMoney()==0 then
			SetTradeMoney(mytrade)
		else
			AcceptTrade()
		end
	end
end
function GetMoneyFromLeader(amt)
	if not MB_raidleader then return end
	if MB_raidleader~=UnitName("player") then
		local mymoney=GetMoney()
		if mymoney>amt*10000 then return end
		if not MB_tradeopen then InitiateTrade(MBID[MB_raidleader]) end
		if MB_tradeopen and GetTargetTradeMoney()>0 then AcceptTrade() return end
	else
		local mymoney=GetMoney()
		if mymoney<=amt*10000 then Print("I don't have "..amt.." gold.") return end
		local mytrade=amt*10000
		if MB_tradeopen then
			if GetPlayerTradeMoney()==0 then
				SetTradeMoney(mytrade)
			else
				AcceptTrade()
			end
		end
	end
end
function paladin_setup()
	if IsAltKeyDown() then RaidHeal() return end
	if MB_tradeopen and GetTradeTargetItemLink(1) and string.find(GetTradeTargetItemLink(1), "Conjured.*Water") then AcceptTrade() return ReportCPU("Paladin Setup trade") end
	if IsControlKeyDown() then cast("Judgement") cast("Seal of the Crusader") return ReportCPU("Paladin Setup ctrl") end
	AutoDelete()
	PallyBuff()
	smartdrink()
	ReportCPU("Paladin Setup")
end
function PallyBuff()
	Print("My pally class order is "..MyClassOrder())
	if InCombat() then return end
	if UnitLevel("player")==60 then
		if MyGroupClassOrder()==1 then SelfBuff("Devotion Aura") end
		if MyClassOrder()==1 then RaidBuff({"Greater Blessing of Kings"}) end
		if MyGroupClassOrder()==2 then SelfBuff("Retribution Aura") end
		if MyClassOrder()==2 then RaidBuff({"Greater Blessing of Salvation"}) end
		if MyGroupClassOrder()==3 then SelfBuff("Concentration Aura") end
		if MyClassOrder()==3 then SancDaTank() end
		if MyGroupClassOrder()==4 then SelfBuff("Devotion Aura") end
		if MyClassOrder()==4 then RaidBuff({"Greater Blessing of Wisdom"}) end
		if MyGroupClassOrder()==5 then SelfBuff("Retribution Aura") end
		if MyClassOrder()==5 then RaidBuff({"Greater Blessing of Light"}) end
		if MyGroupClassOrder()==6 then SelfBuff("Concentration Aura") end
		if MyGroupClassOrder()==7 then SelfBuff("Devotion Aura") end
		if MyGroupClassOrder()==8 then SelfBuff("Retribution Aura") end
		if MyGroupClassOrder()==9 then SelfBuff("Concentration Aura") end
	else
		if MyGroupClassOrder()==1 then SelfBuff("Devotion Aura") end
		if MyClassOrder()==1 then RaidBuff({"Blessing of Kings"}) end
		if MyGroupClassOrder()==2 then SelfBuff("Frost Resistance Aura") end
		if MyClassOrder()==2 then RaidBuff({"Blessing of Might"}) end
		if MyGroupClassOrder()==3 then SelfBuff("Concentration Aura") end
		if MyClassOrder()==3 then SancDaTank() end
		if MyGroupClassOrder()==4 then SelfBuff("Devotion Aura") end
		if MyClassOrder()==4 then RaidBuff({"Blessing of Kings"}) end
		if MyGroupClassOrder()==5 then SelfBuff("Retribution Aura") end
		if MyClassOrder()==5 then RaidBuff({"Blessing of Might"}) end
		if MyGroupClassOrder()==6 then SelfBuff("Concentration Aura") end
		if MyClassOrder()==6 then RaidBuff({"Blessing of Wisdom"}) end
		if MyGroupClassOrder()==7 then SelfBuff("Devotion Aura") end
		if MyClassOrder()==7 then RaidBuff({"Blessing of Kings"}) end
		if MyGroupClassOrder()==8 then SelfBuff("Retribution Aura") end
		if MyClassOrder()==8 then RaidBuff({"Blessing of Might"}) end
		if MyGroupClassOrder()==9 then SelfBuff("Concentration Aura") end
		if MyClassOrder()==9 then RaidBuff({"Blessing of Wisdom"}) end
	end
	if not IsHolyPally() then SelfBuff("Righteous Fury") end
end
function SancDaTank()
	for _,tank in MB_tankinraid do
		TargetUnit(MBID[tank])
		BuffCast("Blessing of Sanctuary")
	end
end
----SHAMAN
function shammy_turbo()
	if not InCombat() then return ReportCPU("Shammy turbo notincombat") end
	if not TargetInCombat() then return ReportCPU("Shammy turbo targetnotincomb") end
	if IsElementalShammy() then
		cast("Elemental Mastery")
		use(13)
		use(14)
	end
	ReportCPU("Shammy turbo")
end
function shammy_setup()
	if IsAltKeyDown() then RaidHeal() end
	if MB_tradeopen and GetTradeTargetItemLink(1) and string.find(GetTradeTargetItemLink(1), "Conjured.*Water") then AcceptTrade() return ReportCPU("Shammy setup trade") end
	if IsAltKeyDown() then MB_Assist() return ReportCPU("Shammy setup alt") end
	if IsAltKeyDown() or IsShiftKeyDown() then return ReportCPU("Shammy setup alt or shift") end
	if ManaDown()>100 and buffed("Drink","player") then return ReportCPU("Shammy setup drinking") end
	if ImBusy() then return ReportCPU("Shammy setup busy") end
	if IsControlKeyDown() then return ReportCPU("Shammy setup ctrl") end
	if (IsEnhancementShammy()) and not IsControlKeyDown() and not IsAltKeyDown() then Follow() end
	AutoDelete()
	if InCombat() then CancelTrade() end
	Decurse()
	party_totems()
	if not InCombat() then
		smartdrink()
	end
	ReportCPU("Shammy setup")
end
function shammy_single()
	if IsElementalShammy() then shammy_ele_single() return end
	if IsEnhancementShammy() then shammy_enh_single() return end
	shammy_heal_single()
end
function shammy_aoe()
	if IsAltKeyDown() then return end
	if IsElementalShammy() then shammy_ele_aoe() return end
	if IsEnhancementShammy() then shammy_enh_aoe() return end
	shammy_heal_aoe()
end
function shammy_heal_single()
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	--if ImBusy() then return ReportCPU("Shammy heal single busy") end
	if TankTarget("Azuregos") and IsAltKeyDown() then return end
	SaveAndorov(.8)
	Decurse()
	RaidHeal()
	if buffed("Last Stand","target") or buffed("Shield Wall","target") or buffed("Frenzied Regeneration","target") then
		CombatUse(13)
		CombatUse(14)
	end
	if Jindo() then LockonTarget() if UnitName("target")=="Powerful Healing Ward" then cast("Earth Shock") end end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.5 and InCombat() then CastTotem("Mana Tide Totem") ; end
	--SelfBuff("Lightning Shield")
	CombatUse(13)
	CombatUse(14)
	party_totems()
	if TankTarget("Azuregos") then BuffCast("Frost Resistance Totem") end
	--if not IAmFocus() then LockonTarget() end
	--if TargetInCombat() and InMeleeRange() then
		--if not IsCurrentAction(72) then UseAction(72) end
	--end
	ReportCPU("Shammy heal single")
end
function shammy_multi()
	if IsElementalShammy() then shammy_ele_multi() return end
	if IsEnhancementShammy() then shammy_enh_multi() return end
	shammy_heal_multi()
end
function preheal_tanks()
	if myclass~="Priest" then return end
	myorder=MyClassOrder()
	i=1
	for _,tank in MB_tankinraid do
		if IsAlive(MBID[tank]) then
			Print(MBID[tank])
			Print("i is "..i.." and myorder is "..myorder)
			if i==myorder then
				TargetUnit(MBID[tank])
				cast("Power Word: Shield")
				return
			end
		i=i+1
		end
	end
end
function shammy_heal_multi()
	--if ImBusy() then return ReportCPU("Shammy heal multi busy") end
	SaveAndorov(.8)
	Decurse()
	RaidHeal()
	if buffed("Last Stand","target") or buffed("Shield Wall","target") or buffed("Frenzied Regeneration","target") then
		CombatUse(13)
		CombatUse(14)
	end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	--Stoneclaw()
	if MyManaPct()<.5 and InCombat() then CastTotem("Mana Tide Totem") ; end
	if not buffed("Mana Tide","player") then
		if PartyIsPoisoned() then CastTotem("Poison Cleansing Totem") end
		if PartyIsDiseased() then CastTotem("Disease Cleansing Totem") end
	end
	party_totems()
	--SelfBuff("Lightning Shield")
	CombatUse(13)
	CombatUse(14)
	if not IAmFocus() then LockonTarget() end
	ReportCPU("Shammy heal multi")
end
function shammy_enh_turbo()
	SpellStopCasting()
	if not InCombat() then return ReportCPU("Shammy enh turbo notincombat") end
	ReportCPU("Shammy enh turbo")
end
function shammy_enh_single()
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	Print("Enhancement Single")
	if ImBusy() then return ReportCPU("Shammy enh single busy") end
	HealSelf(.2)
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	--if TankTarget("Lord Kazzak") and MyMana()<1000 then return end
	if TargetInCombat() or IAmFocus() then
		if not IsAltKeyDown() then
			--if UnitName("target")=="Shazzrah" and buffed("Deaden Magic","target") then cast("Purge") end
			if buffed("Focus","player") then cast("Lightning Bolt") end
			SelfBuff("Lightning Shield")
			--if not InMeleeRange() then cast("Lightning Bolt") end
			cast("Stormstrike")
			party_totems()
			if TankTarget("Azuregos") then BuffCast("Frost Resistance Totem") end
			CombatUse(14)
			--RockbiterWeapon()
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Shammy enh single")
end
function shammy_enh_multi()
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	if ImBusy() then return ReportCPU("Shammy enh multi busy") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if not IsAltKeyDown() then
		SelfBuff("Lightning Shield")
		if InMeleeRange() then cast("Fire Nova Totem") end
		cast("Stormstrike")
		--cast("Frost Shock")
		--cast("Earth Shock")
		cast("Chain Lightning")
		--cast("Lightning Bolt")
		party_totems()
		CombatUse(14)
		--RockbiterWeapon()
		if not IsCurrentAction(72) then UseAction(72) end
		--end
	end
	ReportCPU("Shammy enh multi")
end
function shammy_enh_aoe()
	if ImBusy() then return ReportCPU("Shammy enh aoe busy") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	--Stoneclaw()
	if not IAmFocus() then LockonTarget() end
	if not TargetInCombat() then if IsCurrentAction(72) then UseAction(72) end end
	if not IAmFocus() then LockonTarget() end
	if (TargetInCombat() or IAmFocus()) and InMeleeRange() then
		cast("Fire Nova Totem")
		SelfBuff("Lightning Shield")
		cast("Stormstrike")
		--cast("Frost Shock")
		--cast("Earth Shock")
		cast("Chain Lightning")
		--cast("Lightning Bolt")
		CombatUse(14)
		--RockbiterWeapon()
		--if InMeleeRange() then
		if not IsCurrentAction(72) then UseAction(72) end
		--end
	end
	ReportCPU("Shammy enh aoe")
end
function HealSelf(thresh)
	--ONLY USE THIS FOR NON-HEALING_LIST healers
	if UnitHealth("player")/UnitHealthMax("player")<thresh then
		NS("player")
		Shield("player")
		QuickHeal("player")
	end
end
function shammy_ele_single()
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	if ImBusy() then return ReportCPU("Shammy ele single busy") end
	if HealSelf(.3) then return ReportCPU("Shammy ele single healself") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if IsAltKeyDown() then SpellStopCasting() return ReportCPU("Shammy ele single alt") end
	if not IAmFocus() and not TargetInCombat() then return ReportCPU("Shammy ele single nottargincomb") end
	if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
		if UnitName("target")=="High Priest Venoxis" and buffed("Renew","target") then cast("Purge") end
		if UnitName("target")=="Azuregos" and buffed("Magic Shield","target") then SpellStopCasting() return end
		--if UnitName("target")=="Shazzrah" and buffed("Deaden Magic","target") then cast("Purge") end
		if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
		SelfBuff("Lightning Shield")
		party_totems()
		if TankTarget("Azuregos") then BuffCast("Frost Resistance Totem") end
		if buffed("Elemental Mastery","player") then
			CombatUse(13)
			CombatUse(14)
			cast("Lightning Bolt")
		else
			SelfBuff("Lightning Shield")
			cast("Lightning Bolt")
			cast("Frost Shock")
			cast("Earth Shock")
			CombatUse(14)
			FlametongueWeapon()
			RockbiterWeapon()
			if TargetInCombat() and InMeleeRange() then
				if not IsCurrentAction(72) then UseAction(72) end
			end
		end
	end
	ReportCPU("Shammy ele single")
end
function shammy_ele_multi()
	if ImBusy() then return ReportCPU("Shammy ele multi busy") end
	if HealSelf(.3) then return ReportCPU("Shammy ele multi healself") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if IsAltKeyDown() then SpellStopCasting() return ReportCPU("Shammy ele multi alt") end
	if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
		if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
		SelfBuff("Lightning Shield")
		party_totems()
		if buffed("Elemental Mastery","player") then
			CombatUse(13)
			CombatUse(14)
			cast("Chain Lightning")
			cast("Lightning Bolt")
		else
			cast("Earth Shock")
			SelfBuff("Lightning Shield")
			cast("Chain Lightning")
			cast("Lightning Bolt")
			CombatUse(14)
			FlametongueWeapon()
			if TargetInCombat() and InMeleeRange() then
				if not IsCurrentAction(72) then UseAction(72) end
			end
		end
	end
	ReportCPU("Shammy ele multi")
end
function shammy_ele_aoe()
	if ImBusy() then return ReportCPU("Shammy ele aoe busy") end
	if HealSelf(.3) then return ReportCPU("Shammy ele aoe healself") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	--Stoneclaw()
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if not TargetInCombat() then if IsCurrentAction(72) then UseAction(72) end end
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
		SelfBuff("Lightning Shield")
		CombatUse(13)
		CombatUse(14)
		cast("Fire Nova Totem")
		cast("Chain Lightning")
		cast("Lightning Bolt")
		SelfBuff("Lightning Shield")
		cast("Frost Shock")
		cast("Earth Shock")
	end
	party_totems()
	FlametongueWeapon()
	if TargetInCombat() and InMeleeRange() then
		if not IsCurrentAction(72) then UseAction(72) end
	end
	ReportCPU("Shammy ele aoe")
end
function shammy_heal_aoe()
	--if ImBusy() then return ReportCPU("Shammy heal aoe busy") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	--Stoneclaw()
	--SelfBuff("Lightning Shield")
	if not UnitInRaid("player") then RunLine("/qh") end
	CombatUse(13)
	CombatUse(14)
	cast("Fire Nova Totem")
	local raidhealth,mosthurt,hp=RaidHealth()
	Print("hp is")
	Print(hp)
	if hp and hp<1 then 
		if mosthurt and UnitName(mosthurt) then 
			TargetUnit(mosthurt)
			cast("Chain Heal")
		end
	end
	Decurse()
	ReportCPU("Shammy heal aoe")
end
----HUNTER
function hunter_turbo()
	if not TargetInCombat() then return ReportCPU("HunterTurbo targnotincomb") end
	if not InCombat() then return ReportCPU("HunterTurbo notincomb") end
	SpellStopCasting()
	cast("Blood Fury")
	cast("Bestial Wrath")
	cast("Rapid Fire")
	use(13)
	use(14)
	ReportCPU("HunterTurbo")
end
function hunter_setup()
	AutoDelete()
	if MB_tradeopen and GetTradeTargetItemLink(1) and string.find(GetTradeTargetItemLink(1), "Conjured.*Water") then AcceptTrade() return ReportCPU("Hunter setup trade") end
	PetPassiveMode()
	if (IsAltKeyDown()) then
		CastPetAction(9)
		CastPetAction(2)
	end
	if IsAltKeyDown() then MB_Assist() return ReportCPU("Hunter setup alt") end
	if ImBusy() then return ReportCPU("Hunter setup busy") end
	if IsAltKeyDown() then RaidHeal() end
	if InCombat() then CancelTrade() end
	if ManaDown()>0 and buffed("Drink","player") then return ReportCPU("Hunter setup drinking") end
	if buffed("Food","player") then return ReportCPU("Hunter setup eating") end
	if (IsControlKeyDown()) then
		SelfBuff("Aspect of the Cheetah")
	else
		--cast("Explosive Trap")
		PetStuff()
		local name,realm=UnitName("player")
		if SpellExists("Trueshot Aura") then SelfBuff("Trueshot Aura"); end
		if not IAmFocus() then LockonTarget() end
	end
	if not InCombat() then smartdrink() end
	ReportCPU("Hunter setup")
end
function PerfectAim()
	--The goal of perfect aim is to start aimed shot in the first half second of a 3 second weapon auto-shoot
	if Jindo() then if not IsAutoRepeatAction(72) then cast("Auto Shot") end return end
	if SpellExists("Aimed Shot") then
		if not MB_RAIS_shooting then UseAction(72) return end
		if MB_RAIS_aimedStart then return end
		if ImBusy() then return end
		local diff=GetTime()-MB_RAIS_startTime
		if not OnCooldown("Aimed Shot") and ( (diff<.49 and diff>0) or diff>6) then CastSpellByName("Aimed Shot") end
	else
		if not IsAutoRepeatAction(72) then UseAction(72) end
	end
end
function fd()
	if InCombat() and not OnCooldown("Feign Death") then
	SpellStopCasting()
	PetPassiveMode()
	PetFollow()
	cast("Freezing Trap")
	cast("Feign Death") end
	cast("Faerie Fire (Feral)")
end
function hunter_single()
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	if ImBusy() then return ReportCPU("Hunter Single busy") end
	if buffed("Feign Death","player") then return ReportCPU("Hunter Single feigned") end
	if IsAltKeyDown() then
		if IsAutoRepeatAction(72) then cast("Auto Shot") end
		return ReportCPU("Hunter Single shoot")
	end
	--if buffed("Threatening Gaze","player") then
		--cast("Feign Death")
		--if IsAutoRepeatAction(72) then
			--cast("Auto Shot"); end
		--return
	--end
	CC()
	if MB_My_ot_target then
		--Select my off-tank target if I've lost it
		OT()
		SickemTarget()
		--If you are a tank, (focus or not) and not assigned to an OT target, you will taunt anything NOT attacking a tank
	end
	if IsAltKeyDown() then return ReportCPU("Hunter Single alt") end
	if not IAmFocus() then LockonTarget() end
	--Print("Out of hunter LockonTarget")
	if TargetInCombat() or IAmFocus() then
		if not IsAltKeyDown() then
			if not MB_My_ot_target then SickemTarget() end
			if IsControlKeyDown() then
				cast("Concussive Shot")
			end
			if InMeleeRange() then
				hunter_aoe()
			else
				SelfBuff("Aspect of the Hawk")
				if TargetInCombat() or IAmFocus() then
					if UnitName("target")=="Obsidian Eradicator" or UnitName("target")=="Moam" then BuffCast("Viper Sting") end
					--if buffed("Frenzy","target") and not OnCooldown("Tranquilizing Shot") then cast ("Tranquilizing Shot") end
					if UnitName("target")=="Magmadar" and MyMana()<244 then return ReportCPU("Hunter Single save mana for tranq") end
					stingit()
					if UnitIsPlayer("targettarget") and UnitName("targettarget")~=MB_raidleader then cast("growl") end
					if UnitName("target")=="Magmadar" then
						BuffCast("Hunter's Mark")
						if not OnCooldown("Tranquilizing Shot") then cast("Tranquilizing Shot") end
						--cast("Multi-Shot")
						--cast("Arcane Shot")
						if not IsAutoRepeatAction(72) then cast("Auto Shot") end
					elseif Jindo() then
						if not IsAutoRepeatAction(72) then cast("Auto Shot") end
						if UnitName("target")=="Powerful Healing Totem" then
									cast("Multi-Shot")
									cast("Arcane Shot")
						end
					else
						if not IsAutoRepeatAction(72) then cast("Auto Shot") end
						BuffCast("Hunter's Mark")
						cast("Aimed Shot")
						--PerfectAim()
					end
				end
			end
		end
	end
	ReportCPU("Hunter Single")
end
function hunter_multi()
	if ImBusy() then return ReportCPU("Hunter multi busy") end
	--if buffed("Feign Death","player") then return end
	--if buffed("Threatening Gaze","player") then
		--cast("Feign Death")
		--if IsAutoRepeatAction(72) then
			--cast("Auto Shot"); end
		--return
	--end
	if not TargetInCombat() and not IAmFocus() then if MB_RAIS_shooting then UseAction(72) end end
	if IsAltKeyDown() then
		if IsAutoRepeatAction(72) then cast("Auto Shot") end
		return ReportCPU("Hunter multi shoot")
	end
	CC()
	if MB_My_ot_target then
		--Select my off-tank target if I've lost it
		OT()
		SickemTarget()
		--If you are a tank, (focus or not) and not assigned to an OT target, you will taunt anything NOT attacking a tank
	end
	if IsAltKeyDown() then return ReportCPU("Hunter multi alt") end
	if not IAmFocus() then LockonTarget() end
	--Print("Out of hunter LockonTarget")
	if TargetInCombat() or IAmFocus() then
		if not IsAltKeyDown() then
			if not MB_My_ot_target then SickemTarget() end
			if IsControlKeyDown() then
				cast("Concussive Shot")
			end
			if InMeleeRange() then
				hunter_aoe()
			else
				SelfBuff("Aspect of the Hawk")
				if not (IsAltKeyDown()) then
					stingit()
					cast("Multi-Shot")
					--PerfectAim()
					cast("Aimed Shot")
				end
			end
		end
	end
	ReportCPU("Hunter multi")
end
function stingit()
	if ImBusy() then return end
	if UnitName("target")=="Plague Slime" then return end
	if UnitName("target")=="Stoneskin Gargoyle" then return end
	BuffCast("Scorpid Sting");
end
function PetStuff()
	if UnitExists("pet") and IsAlive("pet") then
		FeedPet()
	else
		cast("Call Pet")
		cast("Revive Pet")
	end
end
function hunter_aoe()
	if ImBusy() then return ReportCPU("Hunter aoe busy") end
	if not IAmFocus() then LockonTarget() end
	if not TargetInCombat() then if IsCurrentAction(71) then UseAction(71) end end
	if MB_My_ot_target then
		--Select my off-tank target if I've lost it
		OT()
		SickemTarget()
		--If you are a tank, (focus or not) and not assigned to an OT target, you will taunt anything NOT attacking a tank
	end
	if not IAmFocus() then LockonTarget() end
	if TargetInCombat() or IAmFocus() then
		if InMeleeRange() then
			--wing clip on alt
			if not IsAltKeyDown() then
				cast("Mongoose Bite")
				cast ("Raptor Strike")
				cast ("Blood Fury")
				if not IsCurrentAction(71) then UseAction(71) end
				if UnitIsPlayer("targettarget") then cast("growl") ; end
				SelfBuff("Aspect of the Monkey")
			else
				BuffCast("Wing Clip")
			end
		else
			if not IsAltKeyDown() then
				if not MB_My_ot_target then SickemTarget() end
				if IsControlKeyDown() then cast("Concussive Shot") end
				SelfBuff("Aspect of the Hawk")
				--stingit()
				if UnitIsPlayer("targettarget") and not FindInTable(MB_tankinraid,UnitName("targettarget")) then cast("growl") ; end
				cast("Multi-Shot")
				cast("Aimed Shot")
				--PerfectAim()
			end
		end
	end
	ReportCPU("Hunter aoe")
end
function mend()
	if ImBusy() then return end
	--This throws a mend on the pet--I usually put it in shift-5 slot.
	if UnitHealth("pet")==0 then
		if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
		cast("Revive Pet")
		SpellTargetUnit("pet")
	else
		if UnitHealth('pet')/UnitHealthMax('pet')<0.80 then
			if not buffed("Mend Pet","pet") then
				cast("mend pet")
			end
		end
	end
end
--
----
----DRUID (feral and healing and moonkin)
function IAmFocus()
	if MB_raidleader==UnitName("player") then return true end
end
function dru_setup()
	if (IsDruidHealer() or IsBoomkin()) and IsAltKeyDown() then RaidHeal() end
	if MB_tradeopen and GetTradeTargetItemLink(1) and string.find(GetTradeTargetItemLink(1), "Conjured.*Water") then AcceptTrade() return ReportCPU("dru setup trade") end
	if IsAltKeyDown() and not MB_My_ot_target then Decurse() MB_Assist() end
	if not IsControlKeyDown() and not IsAltKeyDown() and not IsHybridDruid() and not IsDruidHealer() and not IsBoomkin() and not FindInTable(MB_tankinraid,myname) then Follow() end
	if IsShiftKeyDown() then return ReportCPU("dru setup shift") end
	if IsControlKeyDown() then CastSpell(SpellNum("Faerie Fire (Feral)"),BOOKTYPE_SPELL) return ReportCPU("dru setup ctrl") end
	--Off tank Taunt logic
	AutoDelete()
	if IsAltKeyDown() then
		if IsCurrentAction(72) then UseAction(72) end;
	end
	if IsAltKeyDown() then return ReportCPU("dru setup alt") end
	if InCombat() then CancelTrade() end
	if buffed("Food","player") then return ReportCPU("dru setup eating") end
	if not InCombat() then
		if UnitLevel("player")==60 then RaidBuff({"Gift of the Wild"}) end
		if ManaDown()>100 and buffed("Drink","player") then return ReportCPU("dru setup drinking") end
		TankBuff("Thorns")
		if UnitLevel("player")<60 then RaidBuff({"Mark of the Wild"}) end
	end
	if SpellExists("Omen of Clarity") then SelfBuff("Omen of Clarity") end
	if not InCombat() then
		smartdrink()
	end
	ReportCPU("dru setup")
end
function dru_turbo()
	if not InCombat() then return ReportCPU("Dru turbo notincombat") end
	if not TargetInCombat() then return ReportCPU("Dru turbo tarnotincomb") end
	ReportCPU("Dru turbo")
end
function dru_single()
	local name,realm=UnitName("player")
	if FindInTable(MB_tankinraid,name) then dru_tank_single() return end
	if IsBoomkin() then boomkin_single() return end
	if IsHybridDruid() then dru_heal_single() return end
	if IsDruidHealer() then dru_heal_single() return end
	dru_cat_single()
end
function dru_multi()
	local name,realm=UnitName("player")
	if FindInTable(MB_tankinraid,name) then dru_tank_multi() return end
	if IsBoomkin() then boomkin_multi() return end
	if IsHybridDruid() then dru_heal_multi() return end
	if IsDruidHealer() then dru_heal_multi() return end
	dru_cat_single()
end
function dru_aoe()
	local name,realm=UnitName("player")
	if FindInTable(MB_tankinraid,name) then dru_tank_aoe() return end
	if IsBoomkin() then boomkin_multi() return end
	if IsHybridDruid() then dru_heal_multi() return end
	if IsDruidHealer() then dru_heal_multi() return end
	dru_cat_single()
end
function InnervateAHealer()
	if OnCooldown("Innervate") or not InCombat() then return end
	if MyMana()<62 then use("Major Mana Potion") end
	if MyMana()<62 then return end
	for _,name in MB_healerinraid do
		if IsAlive(MBID[name]) and UnitMana(MBID[name])<800 then
			TargetUnit(MBID[name])
			CancelForm()
			BuffCast("Innervate")
			MB_msg("<<INNERVATING "..name.." >>")
			TargetUnit("playertarget")
			return
		end
	end
	if IsAlive("player") and (IsDruidHealer() or IsHybridDruid()) and UnitMana("player")<1000 then
		cast("Innervate",1)
		MB_msg("<<INNERVATING myself, punks! Heal better! >>")
		return
	end
end
function dru_heal_single()
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	if TankTarget("Azuregos") and IsAltKeyDown() then return end
	CC()
	SaveAndorov(.8)
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if not buffed("Insect Swarm","target") then BuffCast("Insect Swarm(Rank 1)") end
	RaidHeal()
	--if ImBusy() then return ReportCPU("Dru heal single busy") end
	InnervateAHealer()
	if buffed("Last Stand","target") or buffed("Shield Wall","target") or buffed("Frenzied Regeneration","target") then
		CombatUse(13)
		CombatUse(14)
	end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	--if UnitHealth("player")/UnitHealthMax("player")<.6 then cast ("Barkskin") end
	--TargetUnit("player")
	--if (RaidHealth()<.6 ) and InCombat() and not OnCooldown("Tranquility") then
	--cast("Tranquility")
	--use("Major Mana Potion")
	--else
		--if not IAmFocus() then LockonTarget() end
		--if TargetInCombat() and InMeleeRange() then
			--if not IsCurrentAction(72) then UseAction(72) end
		--end
	--end
	ReportCPU("Dru heal single")
end
function dru_heal_multi()
	CC()
	SaveAndorov(.8)
	Decurse()
	RaidHeal()
	--if ImBusy() then return ReportCPU("Dru heal multi busy") end
	InnervateAHealer()
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if UnitHealth("player")/UnitHealthMax("player")<.6 then cast ("Barkskin") end
	if buffed("Last Stand","target") or buffed("Shield Wall","target") or buffed("Frenzied Regeneration","target") then
		CombatUse(13)
		CombatUse(14)
	end
	TargetUnit("player")
	if (RaidHealth()<.6 ) and InCombat() and not OnCooldown("Tranquility") then
		cast("Tranquility")
		use("Major Mana Potion")
	else
		if not IAmFocus() then LockonTarget() end
		if TargetInCombat() and InMeleeRange() then
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Dru heal multi")
end
function dru_tank_single()
	AnubAlert()
	if SpellExists("Dire Bear Form") then
		SelfBuff("Dire Bear Form")
	else
		SelfBuff("Bear Form")
	end
	if buffed("Enveloping Webs","player") then cast("Cat Form") end
	if TankTarget("Shazzrah") and not IAmFocus() then return ReportCPU("Dru tank single shazzrah") end
	if MyHealthPct()<.2 then cast("Frenzied Regeneration") end
	if IsControlKeyDown() then FeralInterrupt() ; end
	local tname=UnitName("target")
	if not tname then tname="" end
	--TAUNT CODE
	OT()
	ttname=UnitName("targettarget")
	if MB_My_ot_target then
		if tname and ttname and UnitIsEnemy("player","target") and ttname~=myname then
			BearTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	else
		if tname and ttname and UnitIsEnemy("player","target") and not FindInTable(MB_tankinraid,ttname) then
			BearTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	end
	--Force taunt on alt-2 if you are main tank, otherwise ctrl-3 if you are bot
	if IAmFocus() and IsAltKeyDown() and UnitIsEnemy("player","target") and UnitName("targettarget")~=myname then BearTaunt("TAUNT:alt-2 "..tname) end
	--END TAUNT CODE
	if not IAmFocus() and not MB_My_ot_target then LockonTarget() end
	if not IAmFocus() and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	if not UnitName("target") and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	--if IAmFocus() then CloseDistance() end
	if MyRage()>9 and SpellExists("Feral Charge") and (CooldownTime("Feral Charge")>.75 and CooldownTime("Feral Charge")<4) and InMeleeRange() then cast("Demoralizing Roar") end
	if UnitName("target")~="Kurinnaxx" and InMeleeRange() and TargetInCombat() then cast("Faerie Fire (Feral)()") end
	if UnitName("target")=="High Priestess Arlokk" then cast("Swipe") end
	--During panther boss fight, if you are not main tank, pick up all panthers not on you
	if not IAmFocus() and TankTarget("High Priestess Arlokk") then TargetNotOnTankNoAlt() cast("Swipe") end
	--Don't do anything if someone else is tanking and alt key down.
	--if not IAmFocus() and IsAltKeyDown() then return end
	--if not IsAltKeyDown() or IAmFocus() and TableLength(MB_My_ot_target)==0 then
	--if IAmFocus then CloseDistance() end
	if IAmFocus() or (not IAmFocus() and TargetInCombat() or IsAltKeyDown() ) then
		cast("Faerie Fire (Feral)()")
		--cast("Swipe")
		cast("Maul")
		if not IsAltKeyDown() then BuffCast("Demoralizing Roar") end
		if InMeleeRange() then
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Dru tank single")
end
function dru_cat_single()
	if not buffed("Frenzied Regeneration","player") and MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyHealthPct()<.2 and SpellExists("Dire Bear Form") and SpellExists("Frenzied Regeneration") then SelfBuff("Dire Bear Form") cast("Frenzied Regeneration") end
	--if IAmFocus() then CloseDistance() end
	if not buffed("Frenzied Regeneration","player") then SelfBuff("Cat Form") end
	if buffed("Dire Bear Form","player") or buffed("Bear Form","player") then
		if not IAmFocus() then LockonTarget() end
		if IsControlKeyDown() then FeralInterrupt() ; end
		if InMeleeRange() and (not IsAltKeyDown() or IAmFocus()) then
			cast("Maul")
			cast("Swipe")
			if not IsCurrentAction(72) then UseAction(72) end
		end
		if buffed("Enveloping Webs","player") then cast("Cat Form") end
		return ReportCPU("Dru cat single bear")
	end
	if buffed("Enveloping Webs","player") then cast("Cat Form") end
	if not IAmFocus() then LockonTarget() end
	if IsControlKeyDown() then FeralInterrupt() ; end
	if IAmFocus() or (TargetInCombat() and not IsAltKeyDown()) then
		if InMeleeRange() then
			if GetComboPoints()>=5 and not buffed("Rip","target") then cast("Rip") end
			if GetComboPoints()>=5 then cast("Ferocious Bite") end
			BuffCast("Faerie Fire (Feral)()")
			SelfBuff("Tiger's Fury")
			BuffCast("Rake")
			if IsUsableAction(71) then
				cast("Ravage")
				cast("Shred")
			else
				cast("Claw")
			end
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Dru cat single")
end
function dru_tank_multi()
	--Print("In Dru Tank multi")
	AnubAlert()
	if SpellExists("Dire Bear Form") then
		SelfBuff("Dire Bear Form")
	else
		SelfBuff("Bear Form")
	end
	if buffed("Enveloping Webs","player") then cast("Cat Form") end
	if MyHealthPct()<.2 then cast("Frenzied Regeneration") end
	if IsControlKeyDown() then cast("Challenging Roar") end
	local tname=UnitName("target")
	if not tname then tname="" end
	--TAUNT CODE
	OT()
	ttname=UnitName("targettarget")
	if MB_My_ot_target then
		if tname and ttname and UnitIsEnemy("player","target") and ttname~=myname then
			BearTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	else
		if tname and ttname and UnitIsEnemy("player","target") and not FindInTable(MB_tankinraid,ttname) then
			BearTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	end
	--END TAUNT CODE
	if not IAmFocus() and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	if IAmFocus() and IsAltKeyDown() then TargetNotOnMe() end
	if not UnitName("target") and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	--Now you have a target. If it's in combat, do your dru shit
	if UnitName("target") and TargetInCombat() then
		if not IAmFocus() and IsAltKeyDown() then return ReportCPU("Dru tank multi alt") end
		cast("Swipe")
		cast("Faerie Fire (Feral)()")
		if MyRage()>16 then cast("Maul") end
		if not IsAltKeyDown() then BuffCast("Demoralizing Roar") end
		if InMeleeRange() then
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Dru tank multi")
end
function dru_tank_aoe()
	--Print("In Dru Tank aoe")
	if SpellExists("Dire Bear Form") then
		SelfBuff("Dire Bear Form")
	else
		SelfBuff("Bear Form")
	end
	local tname=UnitName("target")
	if not tname then tname="" end
	if MyHealthPct()<.2 then cast("Frenzied Regeneration") end
	--TAUNT CODE
	OT()
	ttname=UnitName("targettarget")
	if MB_My_ot_target then
		if tname and ttname and UnitIsEnemy("player","target") and ttname~=myname then
			BearTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	else
		if tname and ttname and UnitIsEnemy("player","target") and not FindInTable(MB_tankinraid,ttname) then
			BearTaunt("AUTOTAUNT: "..tname.." attacking "..ttname)
		end
	end
	--END TAUNT CODE
	--This is CC, bot or not, you should be finding a target not on you unless you have an ot assignment
	if not MB_My_ot_target then TargetNotOnTankNoAlt() end
	if not UnitName("target") and not MB_My_ot_target then TargetNotOnTankNoAlt() end
	if not TargetInCombat() then if IsCurrentAction(72) then UseAction(72) end end
	if TargetInCombat() then
		if UnitIsDead("target") and MB_My_ot_target then
			MB_My_ot_target=nil
		end
		if not IsAltKeyDown() then BuffCast("Demoralizing Roar") end
		if MyRage()>16 then cast("Maul") end
		if InMeleeRange() then
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Dru tank aoe")
end
function UnitAttackingTank()
	if not TankName() then return true end
	if UnitName("targettarget")==TankName() then return true end
end
function CancelForm()
	if buffed("Moonkin Form","player") then cast("Moonkin Form") end
	if buffed("Dire Bear Form","player") then cast("Dire Bear Form") end
	if buffed("Cat Form","player") then cast("Cat Form") end
	if buffed("Bear Form","player") then cast("Bear Form") end
	if buffed("Travel Form","player") then cast("Travel Form") end
end
function boomkin_single()
	CC()
	if ImBusy() then return ReportCPU("Boomkin single busy") end
	if UnitHealth("player")/UnitHealthMax("player")<.6 then cast ("Barkskin") end
	SelfBuff("Moonkin Form")
	--SelfBuff("Omen of Clarity")
	--SelfBuff("Thorns")
	--if TankTarget("Lord Kazzak") and MyMana()<1000 then return end
	InnervateAHealer()
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if UnitName("target")=="Azuregos" and buffed("Magic Shield","target") then SpellStopCasting() return end
	if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
		if UnitAttackingTank() and not buffed("Moonfire","target") then BuffCast("Moonfire") end
		cast("Starfire")
		cast("Wrath")
		if not IsCurrentAction(72) then UseAction(72) end
	end
	ReportCPU("Boomkin single")
end
function boomkin_multi()
	CC()
	if ImBusy() then return ReportCPU("Boomkin multi busy") end
	if UnitHealth("player")/UnitHealthMax("player")<.6 then cast ("Barkskin") end
	SelfBuff("Moonkin Form")
	--SelfBuff("Omen of Clarity")
	--SelfBuff("Thorns")
	InnervateAHealer()
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
		if UnitAttackingTank() and not buffed("Moonfire","target") then BuffCast("Moonfire") end
		cast("Starfire")
		cast("Wrath")
		if not IsCurrentAction(72) then UseAction(72) end
	end
	ReportCPU("Boomkin multi")
end
function dru_hybrid_single()
	CC()
	if ImBusy() then return ReportCPU("Dru hybrid single busy") end
	if UnitHealth("player")/UnitHealthMax("player")<.6 then cast ("Barkskin") end
	InnervateAHealer()
	Decurse()
	RaidHeal()
	if not IAmFocus() then LockonTarget() end
	if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
		if UnitAttackingTank() and not buffed("Moonfire","target") then BuffCast("Moonfire") end
		cast("Wrath")
	end
	ReportCPU("Dru hybrid single")
end
function dru_hybrid_multi()
	CC()
	if ImBusy() then return ReportCPU("Dru hybrid multi busy") end
	if UnitHealth("player")/UnitHealthMax("player")<.6 then cast ("Barkskin") end
	InnervateAHealer()
	Decurse()
	RaidHeal()
	if not IAmFocus() and (not UnitName("target") or not TargetInCombat() or not IsAlive("target")) then LockonTarget() end
	if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
			if UnitAttackingTank() and not buffed("Moonfire","target") then BuffCast("Moonfire") end
			cast("Wrath")
	end
	ReportCPU("Dru hybrid multi")
end
----PRIEST (shadow and holy)
function priest_single()
	if IsShadow() then priest_shadow_single() return end
	priest_heal_single()
end
function priest_multi()
	if IsShadow() then priest_shadow_multi() return end
	priest_heal_multi()
end
function priest_aoe()
	if IsAltKeyDown() then return end
	if IsShadow() then priest_shadow_aoe() return end
	priest_heal_aoe()
end
----Warrior (arms/fury/prot)
function warrior_single()
	local name,realm=UnitName("player")
	if FindInTable(MB_tankinraid,name) then warrior_tank_single() return end
	if IsFury() then fury_single() return end
	if IsArms() then arms_single() return end
	warrior_tank_single()
end
function warrior_multi()
	local name,realm=UnitName("player")
	if FindInTable(MB_tankinraid,name) then warrior_tank_multi() return end
	if IsFury() then fury_multi() return end
	if IsArms() then arms_multi() return end
	warrior_tank_multi()
end
function warrior_aoe()
	local name,realm=UnitName("player")
	if FindInTable(MB_tankinraid,name) then warrior_tank_aoe() return end
	if IsFury() then fury_multi() return end
	if IsArms() then arms_multi() return end
	warrior_tank_aoe()
end
function ShieldBomb()
	if not TankTarget("Baron Geddon") then return end
	for i=1,GetNumRaidMembers() do
		if buffed("Living Bomb","raid"..i) and not buffed("Weakened Soul","raid"..i) then
				TargetUnit("raid"..i)
				cast("Power Word: Shield")
			return
		end
	end
end
function priest_heal_single()
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	ShieldBomb()
	CC()
	SaveAndorov(.8)
	if TankTarget("Obsidian Eradicator") or TankTarget("Moam") then MB_Assist() cast("Mana Burn") end
	if TankTarget("Azuregos") and IsAltKeyDown() then return end
	SelfBuff("Inner Fire")
	--if ImBusy() then return ReportCPU("Priest heal single busy") end
	Decurse()
	RaidHeal()
	Fade()
	CombatUse(12)
	if buffed("Last Stand","target") or buffed("Shield Wall","target") or buffed("Frenzied Regeneration","target") then
		CombatUse(13)
		CombatUse(14)
	end
	ReportCPU("Priest heal single")
end
function priest_heal_multi()
	CC()
	SelfBuff("Inner Fire")
	--if ImBusy() then return ReportCPU("Priest heal multi busy") end
	SaveAndorov(.8)
	Decurse()
	RaidHeal()
	Fade()
	if buffed("Last Stand","target") or buffed("Shield Wall","target") or buffed("Frenzied Regeneration","target") then
		CombatUse(13)
		CombatUse(14)
	end
	ReportCPU("Priest heal multi")
end
function SaveAndorov(thresh)
	--RAJAXX--Cast of characters
	--Captain Qeez-Intimidating shout
	--Captain Tuubid-Attack one person
	--Captain Drenn-Hurricane VERY DANGEROUS, STRAFE
	--Captain Zurrem-Shockwave (knockdown)
	--Major Yeggeth-BOP and Big cleave, Andorov killer, face him away
	--Major Pakkon-Sweeping Slam, face away.
	--Colonel Zerran-Casts dispellable enlarge on himself and adds. Extra damage
	--NOTE: If you are having a hard time in Rajaxx, use shift-F1 to fear adds
	--Try killing captains first in that strat.
	--Also, let Andorov tank Rajaxx--he's immune to knockback.
	--BACK UP YOUR RAID AGAINST WALL for Rajaxx. Back up your Rajaxx tank against other wall. Doesn't matter if you lose hunters against adds, back em up.
	--If none of that works, run away between fights on VG. The next fight won't start till you buff and heal and come back
	--Don't forget to buff and mark andorov before the fight!
	if TankTarget("Captain Qeez") or TankTarget("Captain Tuubid") or TankTarget("Major Yeggeth") or TankTarget("Captain Drenn") or TankTarget("Captain Xurrem") or TankTarget("Major Pakkon") or TankTarget("Colonel Zerran") or TankTarget("Qiraji Warrior") or TankTarget("Swarmguard Needler") or TankTarget("General Rajaxx") then 
		TargetByName("Lieutenant General Andorov",1)
		if UnitHealth("target")/UnitHealthMax("target")<=thresh then 
			RunLine("/yell Healing Andorov!")
			MBHeal("target")
		end
	end
end
function priest_heal_aoe()
	RaidHeal()
	if ImBusy() then return ReportCPU("Priest heal aoe busy") end
	if Jindo() then return ReportCPU("Priest heal aoe jindo") end
	cast("Holy Nova")
	--if PartyHurt(700,3) then cast("Prayer of Healing") end
	ReportCPU("Priest heal aoe")
end
function priest_shadow_single()
	if ImBusy() then return ReportCPU("Priest shadow single busy") end
	Fade()
	Decurse()
	SelfBuff("Shadowform")
	if HealSelf(.2) then return ReportCPU("Priest shadow single healself") end
	if not IAmFocus() then LockonTarget() end
	if UnitName("target")=="Azuregos" and buffed("Magic Shield","target") then SpellStopCasting() return end
	if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
		if UnitName("target")=="Shazzrah" and buffed("Deaden Magic","target") then cast("Dispel Magic") end
		if MyMana()>205 and buffed("Vampiric Embrace","target") or MyMana()>40 and not buffed("Vampiric Embrace","target") then
			ShadowStack()
			BuffCast("Vampiric Embrace")
			cast("Mind Blast")
			cast("Mind Flay")
			if UnitLevel("player")<13 then cast("Smite") end
		end
	end
	ReportCPU("Priest shadow single")
end
function priest_shadow_multi()
	if ImBusy() then return ReportCPU("Priest Shadow multi busy") end
	Fade()
	Decurse()
	SelfBuff("Shadowform")
	if not IsAltKeyDown() then
		--if PartyHurt(700,3) then cast("Prayer of Healing") end
		if HealSelf(.2) then return ReportCPU("Priest Shadow multi healself") end
		if not IAmFocus() and (not UnitName("target") or not TargetInCombat() or not IsAlive("target")) then LockonTarget() end
		if IAmFocus() or (not IsAltKeyDown() and TargetInCombat()) then
			if MyMana()>205 and buffed("Vampiric Embrace","target") or MyMana()>40 and not buffed("Vampiric Embrace","target") then
				ShadowStack()
				BuffCast("Vampiric Embrace")
				cast("Mind Blast")
				cast("Mind Flay")
				if UnitLevel("player")<13 then cast("Smite") end
			end
		end
	end
	ReportCPU("Priest Shadow multi")
end
function priest_shadow_aoe()
	if ImBusy() then return ReportCPU("Priest shadow aoe busy") end
	HealSelf(.2)
	if Jindo() then return ReportCPU("Priest shadow aoe jindo") end
	cast("Holy Nova")
	--if PartyHurt(700,3) then cast("Prayer of Healing") end
end
function priest_setup()
	if IsAltKeyDown() then Decurse() ReportCPU("priest decurse alt") end
	if IsAltKeyDown() then RaidHeal() return ReportCPU("priest setup alt") end
	if MB_tradeopen and GetTradeTargetItemLink(1) and string.find(GetTradeTargetItemLink(1), "Conjured.*Water") then AcceptTrade() return ReportCPU("Priest setup trade") end
	if ImBusy() then return ReportCPU("Priest setup busy") end
	if IsAltKeyDown() then MB_Assist() return ReportCPU("Priest setup alt") end
	if IsShiftKeyDown() or IsAltKeyDown() then return ReportCPU("Priest setup shift or alt") end
	if IsControlKeyDown() then return ReportCPU("Priest setup ctrl") end
	AutoDelete()
	if InCombat() then CancelTrade() end
	if MyMana()<3400 and buffed("Drink","player") then return ReportCPU("Priest setup drinking") end
	if not InCombat() then
		if UnitLevel("player")==60 then
			RaidBuff({"Prayer of Fortitude","Prayer of Spirit","Prayer of Shadow Protection"})
		else
			RaidBuff({"Power Word: Fortitude"})
		end
	end
	SelfBuff("Inner Fire")
	--Decurse()
	if not InCombat() then smartdrink() end
	ReportCPU("Priest setup")
end
function priest_turbo()
	if not InCombat() then return ReportCPU("Priest turbo notincomb") end
	if not TargetInCombat() then return ReportCPU("Priest turbo targnotincomb") end
	if IsShadow() then
		cast("Berserking")
		use(13)
		use(14)
	end
	ReportCPU("Priest turbo")
end
---
----MAGE
function mage_single()
	if IsFire() then mage_fire_single() return end
	mage_frost_single()
end
function mage_multi()
	if IsFire() then mage_fire_multi() return end
	mage_frost_multi()
end
function mage_aoe()
	if IsAltKeyDown() then return end
	if IsFire() then mage_fire_aoe() return end
	mage_frost_aoe()
end
function IsCombustion()
	n,ic,t,c,EM=GetTalentInfo(2,16)
	if EM>0 then return true else return nil end
end
function RollingIgnite()
	-- On Vanilla gaming, the fire mage that gets a crit and starts ignite will score 40% of damage over time of that crit.
	-- But he will also score the SAME 40% damage for ANY OTHER MAGE CRITS on that same target.
	-- So we arrange mages as Combustion Mages (guarantees a crit) and support mages.
	-- This function performs the automation of rolling ignites
	-- if buffed ignite and name = then do shit else return.
	local name,realm=UnitName("player")
	-- Cast Fireball. Hit burst to guarantee Ignite.
	-- once ignite is triggered, continue fireball spam with your main mage, the rest of the mages:
	-- should only cast scorch or fireblast to keep the ignite up and ticking.
	if not buffed("Ignite","target") then
		if IsCombustion() then
			use("Talisman of Ephemeral Power")
			cast("Combustion")
			cast("Fireball")
		else
			MB_ignited=false
			MB_castingfrost=true
			cast("Frostbolt")
		end
	else
		if IsCombustion() then
		use("Talisman of Ascendance")
			cast("Scorch")
		else
			MB_ignited=true
			MB_castingfrost=false
			if not MB_castingfrost and MB_stopcasting then MB_stopcasting=false end
			cast("Fire Blast")
			cast("Presence of Mind")
			cast("Scorch")
		end
	end
end
function mage_fire_single()
	if TankTarget("Gehennas") or TankTarget("Magmadar") then SelfBuff("Fire Ward") end
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	if not IsCombustion() and MB_castingfrost and not MB_stopcasting then SpellStopCasting() MB_stopcasting=true end
	if ImBusy() then return ReportCPU("Mage fire single busy") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	CC()
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if MyManaPct()<.1 and not OnCooldown("Evocation") then cast("Evocation") end
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	if TargetInCombat() or IAmFocus() then
		if not buffed("Detect Magic","player") and (UnitName("target")=="Anubisath Sentinel" or UnitName("target")=="Anubisath Guardian" or UnitName("target")=="Shazzrah") then BuffCast("Detect Magic") end
		if IsAltKeyDown() and not (UnitName("target")=="Anubisath Sentinel" or UnitName("target")=="Anubisath Guardian") then SpellStopCasting() end
		if not IsAltKeyDown() then
			--if UnitName("target")=="Ayamiss the Hunter" and (TargetHealthPct()<.75 and TargetHealthPct()>.69) then return end
			if UnitName("target")=="Powerful Healing Ward" then cast("Fire Blast") end
			if (UnitName("target")=="Anubisath Guardian" or UnitName("target")=="Anubisath Sentinel") and buffed("Arcane and Fire Reflect","target") then
				cast("Frostbolt")
			end
			if UnitName("target")=="Azuregos" then
				if buffed("Magic Shield","target") then SpellStopCasting() return end
				cast("Scorch")
			SelfBuff("Frost Ward")
			end
			if FireResistant() then
				cast("Frostbolt")
			end
			if Jindo() then
				cast("Scorch")
			else
				if UnitLevel("player")<60 then
					StackCast("Scorch",5)
					cast("Fireball")
				else
					RollingIgnite()
				end
			end
		end
	end
	ReportCPU("Mage fire single")
end
function mage_fire_multi()
	if TankTarget("Gehennas") or TankTarget("Magmadar") then SelfBuff("Fire Ward") end
	if not IsCombustion() and MB_castingfrost and not MB_stopcasting then SpellStopCasting() MB_stopcasting=true end
	if ImBusy() then return ReportCPU("Mage fire multi busy") end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	CC()
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if buffed("Evocation","player") then return ReportCPU("Mage fire multi evoc") end
	if MyManaPct()<.1 and not OnCooldown("Evocation") then cast("Evocation") end
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	if TargetInCombat() or IAmFocus() then
		if IsAltKeyDown() then SpellStopCasting() end
		if not IsAltKeyDown() then
			cast("Combustion")
			if InMeleeRange() then cast("Blast Wave") end
			if InMeleeRange() then cast("Frost Nova(Rank 1)") end
			if InMeleeRange() and frozen() then cast("Cone of Cold") end
			if FireResistant() then
				cast("Frostbolt")
			end
			if Jindo() then
				cast("Scorch")
			else
				if UnitLevel("player")<60 then
					--Use the following lines if you are not on vanilla gaming
					StackCast("Scorch",5)
					cast("Fireball")
				else
					RollingIgnite()
				end
			end
		end
	end
	ReportCPU("Mage fire multi")
end
function FireResistant()
	if UnitName("target")=="Golemagg the Incinerator" then return true end
	if UnitName("target")=="Molten Destroyer" then return true end
	if UnitName("target")=="Baron Geddon" then return true end
	if UnitName("target")=="Molten Giant" then return true end
	if UnitName("target")=="Ragnaros" then return true end
	if UnitName("target")=="Magmadar" then return true end
end
function mage_fire_aoe()
	if ImBusy() then return ReportCPU("Mage fire aoe busy") end
	--if buffed("Threatening Gaze","player") then return end
	if MyHealthPct()<.1 then RunLine("/use Major Healing Potion") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if InMeleeRange() and not frozen() then cast("Frost Nova(Rank 1)") end
	cast("Blast Wave")
	cast("Arcane Explosion")
	ReportCPU("Mage fire aoe")
end
function CancelAura(buff)
	for i=1,16 do
	buffname=GetPlayerBuff(i)
	if not buffname then return end
	if buffname==buff then CancelPlayerBuff(i) end
	end
end
function mage_frost_aoe()
	if buffed("Ice Block","player") and MyHealthPct()>.8 then CancelAura("Ice Block") end
	if InCombat() and MyHealthPct()<.20 and not buffed("Ice Block","player") then if OnCooldown("Ice Block") then cast("Cold Snap") end cast("Ice Block") end
	if ImBusy() then return ReportCPU("Mage frost aoe busy") end
	if MyManaPct()<.1 then RunLine("/use Major Mana Potion") end
	CC()
	if not IAmFocus() then LockonTarget() end
	if InMeleeRange() and not frozen() then cast("Frost Nova(Rank 1)") end
	cast("Arcane Explosion")
	ReportCPU("Mage frost aoe")
end
function mage_frost_single()
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	if buffed("Ice Block","player") and MyHealthPct()>.8 then CancelAura("Ice Block") end
	if InCombat() and MyHealthPct()<.20 and not buffed("Ice Block","player") then if OnCooldown("Ice Block") then cast("Cold Snap") end cast("Ice Block") end
	if TankTarget("Gehennas") or TankTarget("Flamewaker") and UnitName("player")=="Jenjja" then FollowByName("Cashme",1) end
	if TankTarget("Gehennas") or TankTarget("Flamewaker") and UnitName("player")=="Icefloes" then FollowByName("Refill",1) end
	if ImBusy() then return ReportCPU("Mage frost single busy") end
	if MyManaPct()<.8 and InCombat() then RunLine("/use Mana Ruby") end
	if MyManaPct()<.8 and InCombat() then RunLine("/use Mana Citrine") end
	if MyManaPct()<.1 and InCombat() then RunLine("/use Major Mana Potion") end
	if MyHealthPct()<.1 and InCombat() then RunLine("/use Major Healing Potion") end
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	CC()
	Decurse()
	if TankTarget("Gehennas") or TankTarget("Magmadar") then SelfBuff("Fire Ward") end
	if not IAmFocus() then LockonTarget() end
	--SelfBuff("Ice Barrier")
	if MyManaPct()<.1 and not OnCooldown("Evocation") then cast("Evocation") end
	--CrowdControl()
	--if TankTarget("Lord Kazzak") and MyMana()<1000 then return end
	if TargetInCombat() or IAmFocus() then
		if not buffed("Detect Magic","player") and (UnitName("target")=="Anubisath Guardian" or UnitName("target")=="Anubisath Sentinel" or UnitName("target")=="Shazzrah") then BuffCast("Detect Magic") end
		if IsAltKeyDown() then if (not MB_My_cc_target and not (UnitName("target")=="Anubisath Guardian" or UnitName("target")=="Anubisath Sentinel")) then SpellStopCasting() return ReportCPU("Mage frost single alt") end end
		if not IsAltKeyDown() and (TargetInCombat() or IAmFocus()) then
			--if UnitName("target")=="Ayamiss the Hunter" and (TargetHealthPct()<.75 and TargetHealthPct()>.69) then return end
			--if UnitName("target")=="Magmadar" then BuffCast("Detect Magic") end
			if Jindo() then cast("Scorch") end
			if (UnitName("target")=="Anubisath Guardian" or UnitName("target")=="Anubisath Sentinel") and buffed("Shadow and Frost Reflect","target") then
				cast("Fireball")
			end
			if UnitName("target")=="Azuregos" then
				if buffed("Magic Shield","target") then SpellStopCasting() return end
				cast("Scorch")
				SelfBuff("Frost Ward")
			end
			if MB_clearcastAM and buffed("Clearcasting") and not MB_blastarcane and not MB_isChanneling then SpellStopCasting() MB_blastarcane=true end
			if MB_blastarcane then
				cast("Arcane Missiles")
			else
				if InMeleeRange() and not frozen() then cast("Frost Nova(Rank 1)") end
				if InMeleeRange() and not frozen() then cast("Cone of Cold(Rank 1)") end
				cast("Frostbolt")
			end
		end
	end
	ReportCPU("Mage frost single")
end
function mage_frost_multi()
	if TankTarget("Gehennas") or TankTarget("Magmadar") then SelfBuff("Fire Ward") end
	if buffed("Ice Block","player") and MyHealthPct()>.8 then CancelAura("Ice Block") end
	if InCombat() and MyHealthPct()<.20 and not buffed("Ice Block","player") then if OnCooldown("Ice Block") then cast("Cold Snap") end cast("Ice Block") end
	if ImBusy() then return ReportCPU("Mage frost multi busy") end
	if MyManaPct()<.1 and InCombat() then RunLine("/use Mana Ruby") end
	if MyManaPct()<.1 and InCombat() then RunLine("/use Mana Citrine") end
	if MyManaPct()<.1 and InCombat() then RunLine("/use Major Mana Potion") end
	if MyHealthPct()<.1 and InCombat() then RunLine("/use Major Healing Potion") end
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	CC()
	Decurse()
	if not IAmFocus() then LockonTarget() end
	if buffed("Evocation","player") then return ReportCPU("Mage frost multi evoc") end
	if MyManaPct()<.1 and not OnCooldown("Evocation") then cast("Evocation") end
	if TargetInCombat() or IAmFocus() then
		if IsAltKeyDown() then SpellStopCasting() end
		if not IsAltKeyDown() and TargetInCombat() then
			if Jindo() then cast("Scorch") end
			if MB_clearcastAM and buffed("Clearcasting") and not MB_blastarcane and not MB_isChanneling then SpellStopCasting() MB_blastarcane=true end
			cast("Frostbolt")
			if MB_blastarcane then
				cast("Arcane Missiles")
			else
				if InMeleeRange() and frozen() then cast("Cone of Cold") end
				if InMeleeRange() and not frozen() then cast("Frost Nova(Rank 1)") end
				if InMeleeRange() and not frozen() then cast("Cone of Cold(Rank 1)") end
				cast("Frostbolt")
			end
		end
	end
	ReportCPU("Mage frost multi")
end
function frozen()
	if buffed("Frost Nova","target") or buffed("Frostbite","target") then return true end
end
function mage_turbo()
	if not TargetInCombat() then return ReportCPU("Mage turbo targnotincomb") end
	if not InCombat() then return ReportCPU("Mage turbo notincomb") end
	SpellStopCasting()
	cast("Combustion")
	use("Talisman of Ephemeral Power")
	cast("Berserking")
	cast("Presence of Mind")
	cast("Arcane Power")
	use(13)
	use(14)
end
function MyLevel()
	return UnitLevel("player")
end
function mage_setup()
	if MB_tradeopen and MageWater()>20 and GetTradePlayerItemLink(1) and string.find(GetTradePlayerItemLink(1), "Conjured.*Water") then Print("Accepting Trade") AcceptTrade() end
	if IsAltKeyDown() then MB_Assist() Decurse() return ReportCPU("Mage setup alt") end
	if IsControlKeyDown() or IsShiftKeyDown() then return ReportCPU("Mage setup ctrl") end
	AutoDelete()
	if InCombat() then CancelTrade() end
	if ImBusy() then return ReportCPU("Mage setup busy") end
	if MyLevel()>57 then
		if HasItem("Mana Ruby")==0 then cast("Conjure Mana Ruby") end
	end
	if MyLevel()>47 then
		if HasItem("Mana Citrine")==0 then cast("Conjure Mana Citrine") end
	end
	if SpellExists("Fire Ward") and TankTarget("Flame Imp") then SelfBuff("Fire Ward") end
	if SpellExists("Mage Armor") and MB_RealTanksInRaid then
		SelfBuff("Mage Armor")
	elseif SpellExists("Ice Armor") then
		SelfBuff("Ice Armor")
	elseif SpellExists("Frost Armor") then
		SelfBuff("Frost Armor")
	end
	if MageWater()>20 and UnitLevel("player")==60 then
		RaidBuff({"Arcane Brilliance"})
	elseif MageWater()>20 then
		RaidBuff({"Arcane Intellect"})
	else
		cast("Conjure Water")
	end
	if TankTarget("High Priest Thekal") then RaidBuff({"Amplify Magic"}) end
	if TankTarget("Bloodlord Mandokir") then RaidBuff({"Amplify Magic"}) end
	--if TankTarget("Moam") then RaidBuff({"Dampen Magic"}) end
	if TankTarget("Qiraji Gladiator") then RaidBuff({"Amplify Magic"}) end
	if TankTarget("Zulian Tiger") then RaidBuff({"Amplify Magic"}) end
	if TankTarget("Jin'do the Hexxer") then RaidBuff({"Amplify Magic"}) end
	if TankTarget("Kurinnaxx") then RaidBuff({"Amplify Magic"}) end
	if TankTarget("Lieutenant General Andorov") then RaidBuff({"Amplify Magic"}) end
	if TankTarget("Hakkar") then RaidBuff({"Amplify Magic"}) end
	if ManaDown()>100 and buffed("Drink","player") then return ReportCPU("Mage setup drinking") end
	if not InCombat() then smartdrink() end
	ReportCPU("Mage setup")
end
---
----ROGUE
function Stealthed()
	local buftype,isBuffed,bufname=buffed("Stealth","player")
	return isBuffed
end
function rogue_setup()
	if IsAltKeyDown() then MB_Assist() return ReportCPU("Rogue setup alt") end
	AutoDelete()
	if not IsControlKeyDown() and not IsAltKeyDown() then Follow() end
	if IsAltKeyDown() and Stealthed() then cast("Stealth") return ReportCPU("Rogue setup unstealth") end
	if Stealthed() then cast("Pick Pocket") end
	--if not Stealthed() then cast("Stealth") end
	--InstantPoisonMain()
	InstantPoisonOff()
	ReportCPU("Rogue setup")
end
function rogue_single()
	if InCombat() then RogueSurvive() end
	if IsAltKeyDown() then if IsCurrentAction(72) then UseAction(72) return ReportCPU("Rogue single altdpsout") end end
	if buffed("Living Bomb","player") then Follow_Dude(MB_bombfollow) end
	if buffed("Threatening Gaze","player") then Follow_Dude(MB_gazefollow) end
	INT()
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	if not IAmFocus() then LockonTarget() end
	if TargetInCombat() or IAmFocus() then
		if InMeleeRange() then
			if Stealthed() then cast("Garrote") end
			if GetComboPoints()>=1 and not buffed("Slice and Dice","player") then cast("Slice and Dice") end
			if GetComboPoints()>=5 then cast("Eviscerate") end
			--if IsUsableAction(71) then
				--cast("Backstab")
			--else
				cast("Sinister Strike")
			--end
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Rogue single")
end
function RogueSurvive()
	if MyHealthPct()<.6 then cast("Feint") end
	if MyHealthPct()<.5 then cast("Evasion") end
	if MyHealthPct()<.25 and InCombat() then cast("Vanish") end
end
function InnerFocus()
	if UnitClass("player") ~= "Priest" then return end
	if not OnCooldown("Inner Focus") and UnitClass("player")=="Priest" and UnitHealth("target")<800 and MyMana()<350 and InCombat() then cast("Inner Focus") end
end
function rogue_multi()
	if InCombat() then RogueSurvive() end
	if IsAltKeyDown() then if IsCurrentAction(72) then UseAction(72) return ReportCPU("Rogue multi altdpsout") end end
	if not IAmFocus() then LockonTarget() end
	if MB_do_an_interrupt then cast(MB_INT_spell[myclass]) MB_do_an_interrupt=nil end
	if TargetInCombat() or IAmFocus() then
		if InMeleeRange() then
			cast("Blade Flurry")
			if GetComboPoints()>=1 and not buffed("Slice and Dice","player") then cast("Slice and Dice") end
			if GetComboPoints()>=3 then cast("Eviscerate") end
			cast("Sinister Strike")
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Rogue multi")
end
function rogue_aoe()
	if InCombat() then RogueSurvive() end
	if not UnitName("target") then LockonTarget() end
	if TargetInCombat() or IAmFocus() then
		--RogueSpreadTargets()
		if InMeleeRange() then
			cast("Blade Flurry")
			if GetComboPoints()>=1 and not buffed("Slice and Dice","player") then cast("Slice and Dice") end
			if GetComboPoints()>=3 then cast("Eviscerate") end
			cast("Sinister Strike")
			if not IsCurrentAction(72) then UseAction(72) end
		end
	end
	ReportCPU("Rogue aoe")
end
function rogue_turbo()
	if not InCombat() then return ReportCPU("Rogue turbo notincombat") end
	if not TargetInCombat() then return ReportCPU("Rogue turbo targnotincomb") end
	cast ("Adrenaline Rush")
	cast ("Blood Fury")
	cast ("Berserking")
	use(13)
	use(14)
	ReportCPU("Rogue turbo")
end
-- LUA UTILITIES
function spairs(t, order)
	-- collect the keys
	local keys = {}
	local size
	for k in pairs(t) do size=TableLength(keys) keys[size+1] = k end
		-- if order function given, sort by it by passing the table and keys a, b,
		-- otherwise just sort the keys
		if order then
				table.sort(keys, function(a,b) return order(t, a, b) end)
		else
				table.sort(keys)
	end
	-- return the iterator function
	local i = 0
	return function()
		i = i + 1
		if keys[i] then
			return keys[i], t[keys[i]]
		end
	end
end
function TableConcat(t1,t2)
	for _,v in ipairs(t2) do
		table.insert(t1, v)
	end
end
function TableLength(tab)
	--This utility tells you how many elements are in a table
	--if table doesn't exist, it's 0.
	if not tab then return 0 end
	local len=0
	for _ in pairs(tab) do
		len=len+1
	end
	return len
end
function CC()
	if not MB_My_cc_target then Fear() return end
	for i=1,10 do
		if GetRaidTargetIndex("target")==MB_My_cc_target and not UnitIsDead("target") then
			Print("CC spell is ")
			Print(MB_CC_spell[UnitClass("player")])
			if UnitName("target") and not buffed(MB_CC_spell[UnitClass("player")],"target") then
				MB_msg("Sheeping "..UnitName("target"))
				BuffCast(MB_CC_spell[UnitClass("player")])
				--SpellStopCasting()
				--CooldownCast(MB_CC_spell[UnitClass("player")],28)
				TargetUnit("playertarget")
				return
			end
		end
		if GetRaidTargetIndex("target")==MB_My_cc_target and UnitIsDead("target") then
			MB_My_cc_target=""
			TargetUnit("playertarget")
			return
		end
		TargetNearestEnemy()
	end
end
function Fear()
	if not MB_My_fear_target then return end
	for i=1,10 do
		if GetRaidTargetIndex("target")==MB_My_fear_target and not UnitIsDead("target") then
			if UnitName("target") and not buffed(MB_Fear_spell[UnitClass("player")],"target") then
				MB_msg("Fearing "..UnitName("target"))
				BuffCast(MB_Fear_spell[UnitClass("player")])
				--SpellStopCasting()
				--CooldownCast(MB_Fear_spell[UnitClass("player")],28)
				TargetUnit("playertarget")
				return
			end
		end
		if GetRaidTargetIndex("target")==MB_My_fear_target and UnitIsDead("target") then
			MB_My_fear_target=""
			TargetUnit("playertarget")
			return
		end
		TargetNearestEnemy()
	end
end
function OT_multi()
	local numtargs=TableLength(MB_My_ot_target)
	if numtargs==0 then return end
	local class=UnitClass("player")
	--If you are only tanking one target, and you are on that target, then just exit this function!
	if numtargs==1 and GetRaidTargetIndex("target") and GetRaidTargetIndex("target")==MB_My_ot_target[1] then Print("I'm on my OT target") return end
	for i=1,10 do
		for k,ottarg in pairs(MB_My_ot_target) do
			if GetRaidTargetIndex("target")==ottarg and not UnitIsDead("target") then
				if not UnitIsUnit("player","targettarget") then return end
				numtargs=numtargs-1
			end
			if GetRaidTargetIndex("target")==ottarg and UnitIsDead("target") then
				table.remove(MB_My_ot_target,ottarg)
				TargetUnit("playertarget")
				numtargs=numtargs-1
			end
		end
		if numtargs==0 then
			return
		end
		--if numtargs==0 then TargetUnit("playertarget") return end
		--if numtargs>0 then TargetNearestEnemy() end
		if numtargs>0 then TargetNearestEnemy() end
	end
end
function OT()
	if not MB_My_ot_target then return end
	local class=UnitClass("player")
	if numtargs==1 and GetRaidTargetIndex("target") and GetRaidTargetIndex("target")==MB_My_ot_target then Print("I'm on my OT target") return end
	for i=1,10 do
		if GetRaidTargetIndex("target")==MB_My_ot_target and not UnitIsDead("target") then return end
		if GetRaidTargetIndex("target")==MB_My_ot_target and UnitIsDead("target") then
			MB_My_ot_target=nil
			TargetUnit("playertarget")
			return
		end
		TargetNearestEnemy()
	end
end
function INT()
	if not MB_My_int_target then return end
	local class=UnitClass("player")
	--If you are only tanking one target, and you are on that target, then just exit this function!
	for i=1,10 do
		if GetRaidTargetIndex("target")==MB_My_int_target and not UnitIsDead("target") then return end
		if GetRaidTargetIndex("target")==MB_My_int_target and UnitIsDead("target") then
			MB_My_int_target=nil
			TargetUnit("playertarget")
		end
		TargetNearestEnemy()
	end
end
function printots()
	for k,ottarg in pairs(MB_My_ot_target) do
		Print(ottarg)
	end
end
function MB_clearraidtarget()
	if not IAmFocus() then return end
	local id=GetRaidTargetIndex("target")
	if UnitInRaid("player") then
		SendAddonMessage(MB_RAID.."CLR_TARG",UnitName("player"),"RAID")
	else
		SendAddonMessage(MB_RAID.."CLR_TARG",UnitName("player"))
	end
	SetRaidTarget("target",0)
end
function MB_assign_cc()
	if not IAmFocus() then return end
	if IsShiftKeyDown() then MB_assign_fear() return end
	if UnitCreatureType("target")=="Demon" or UnitCreatureType("target")=="Elemental" then
		if not GetRaidTargetIndex("target") or GetRaidTargetIndex("target")==0 then
			SetRaidTarget("target",MB_currentraidtarget)
			if MB_currentraidtarget==8 then MB_currentraidtarget=1 else MB_currentraidtarget=MB_currentraidtarget+1 end
		end
		Print("Banish that Demon")
		num_locks=TableLength(MB_classlist["Warlock"])
		--Print("num_locks="..num_locks)
		if num_locks>0 then
			if UnitInRaid("player") then
				SendAddonMessage(MB_RAID.."_CC",MB_classlist["Warlock"][MB_cc_current.Warlock].." "..UnitName("player"),"RAID")
			else
				SendAddonMessage(MB_RAID.."_CC",MB_classlist["Warlock"][MB_cc_current.Warlock].." "..UnitName("player"))
			end
			if MB_cc_current.Warlock==num_locks then
				MB_cc_current.Warlock=1
			else
				MB_cc_current.Warlock=MB_cc_current.Warlock+1
			end
		end
	elseif UnitCreatureType("target")=="Undead" then
		Print("Shackle that Zombie")
		if not GetRaidTargetIndex("target") or GetRaidTargetIndex("target")==0 then
			SetRaidTarget("target",MB_currentraidtarget)
			if MB_currentraidtarget==8 then MB_currentraidtarget=1 else MB_currentraidtarget=MB_currentraidtarget+1 end
		end
		num_priests=TableLength(MB_classlist["Priest"])
		--Print("num_priests="..num_priests)
		if num_priests>0 then
			if UnitInRaid("player") then
				SendAddonMessage(MB_RAID.."_CC",MB_classlist["Priest"][MB_cc_current.Priest].." "..UnitName("player"),"RAID")
			else
				SendAddonMessage(MB_RAID.."_CC",MB_classlist["Priest"][MB_cc_current.Priest].." "..UnitName("player"))
			end
			if MB_cc_current.Priest==num_priests then
				MB_cc_current.Priest=1
			else
				MB_cc_current.Priest=MB_cc_current.Priest+1
			end
		end
	elseif UnitCreatureType("target")=="Dragonkin" then
		-- NEVER assign tanks to CC
		--Print("Sleep that Dragon")
		if not GetRaidTargetIndex("target") or GetRaidTargetIndex("target")==0 then
			SetRaidTarget("target",MB_currentraidtarget)
			if MB_currentraidtarget==8 then MB_currentraidtarget=1 else MB_currentraidtarget=MB_currentraidtarget+1 end
		end
		num_druids=TableLength(MB_NonTankDruids)
		if num_druids>0 then
			if UnitInRaid("player") then
				SendAddonMessage(MB_RAID.."_CC",MB_NonTankDruids[MB_cc_current.Druid].." "..UnitName("player"),"RAID")
			else
				SendAddonMessage(MB_RAID.."_CC",MB_NonTankDruids[MB_cc_current.Druid].." "..UnitName("player"))
			end
		end
		if MB_cc_current.Druid==num_druids then
			MB_cc_current.Druid=1
		else
			MB_cc_current.Druid=MB_cc_current.Druid+1
		end
	elseif nil or UnitCreatureType("target")=="Beast" or UnitCreatureType("target")=="Humanoid" or UnitCreatureType("target")=="Critter" then
		--Print("Sheep that Beast")
		if not GetRaidTargetIndex("target") or GetRaidTargetIndex("target")==0 then
			SetRaidTarget("target",MB_currentraidtarget)
			if MB_currentraidtarget==8 then MB_currentraidtarget=1 else MB_currentraidtarget=MB_currentraidtarget+1 end
		end
		num_mages=TableLength(MB_classlist["Mage"])
		--Print("num_mages="..num_mages)
		if num_mages>0 then
			--Print("mage rotation at "..MB_cc_current.Mage)
			if UnitInRaid("player") then
				SendAddonMessage(MB_RAID.."_CC",MB_classlist["Mage"][MB_cc_current.Mage].." "..UnitName("player"),"RAID")
			else
				SendAddonMessage(MB_RAID.."_CC",MB_classlist["Mage"][MB_cc_current.Mage].." "..UnitName("player"))
			end
			if MB_cc_current.Mage==num_mages then
				MB_cc_current.Mage=1
			else
				MB_cc_current.Mage=MB_cc_current.Mage+1
			end
		end
	end
end
function MB_assign_fear()
	if not IAmFocus() then return end
	if not GetRaidTargetIndex("target") or GetRaidTargetIndex("target")==0 then
		SetRaidTarget("target",MB_currentraidtarget)
		if MB_currentraidtarget==8 then MB_currentraidtarget=1 else MB_currentraidtarget=MB_currentraidtarget+1 end
	end
	num_locks=TableLength(MB_classlist["Warlock"])
	--Print("num_locks="..num_locks)
	if num_locks>0 then
		Print("Fear that Fool")
		if UnitInRaid("player") then 
			SendAddonMessage(MB_RAID.."_FEAR",MB_classlist["Warlock"][MB_fear_current.Warlock].." "..UnitName("player"),"RAID")
		else
			SendAddonMessage(MB_RAID.."_FEAR",MB_classlist["Warlock"][MB_fear_current.Warlock].." "..UnitName("player"))
		end
		if MB_fear_current.Warlock==num_locks then 
			MB_fear_current.Warlock=1
		else
			MB_fear_current.Warlock=MB_fear_current.Warlock+1
		end
	end
	num_hunters=TableLength(MB_classlist["Hunter"])
	if num_hunters>0 and UnitCreatureType("target")=="Beast" then
		Print("Fear that beast")
		if UnitInRaid("player") then 
			SendAddonMessage(MB_RAID.."_FEAR",MB_classlist["Hunter"][MB_fear_current.Hunter].." "..UnitName("player"),"RAID")
		else
			SendAddonMessage(MB_RAID.."_FEAR",MB_classlist["Hunter"][MB_fear_current.Hunter].." "..UnitName("player"))
		end
		if MB_fear_current.Hunter==num_locks then 
			MB_fear_current.Hunter=1
		else
			MB_fear_current.Hunter=MB_fear_current.Hunter+1
		end
	end
end
function MB_assign_int()
	if not IAmFocus() then return end
	if not GetRaidTargetIndex("target") or GetRaidTargetIndex("target")==0 then
		SetRaidTarget("target",MB_currentraidtarget)
		if MB_currentraidtarget==8 then MB_currentraidtarget=1 else MB_currentraidtarget=MB_currentraidtarget+1 end
	end
	num_rogues=TableLength(MB_classlist["Rogue"])
	num_mages=TableLength(MB_classlist["Mage"])
	num_interrupters=TableLength(MB_classlist["Rogue"])
	num_interrupters=num_interrupters+TableLength(MB_classlist["Mage"])
	if num_interrupters==0 then return end
	Print("Interrupt that sucka")
	if num_rogues>0 then
		if UnitInRaid("player") then
			SendAddonMessage(MB_RAID.."_INT",MB_classlist["Rogue"][MB_int_current.Rogue].." "..UnitName("player"),"RAID")
		else
			SendAddonMessage(MB_RAID.."_INT",MB_classlist["Rogue"][MB_int_current.Rogue].." "..UnitName("player"))
		end
		if MB_int_current.Rogue==num_rogues then
			MB_int_current.Rogue=1
		else
			MB_int_current.Rogue=MB_int_current.Rogue+1
		end
	end
	if num_mages>0 then
		if UnitInRaid("player") then
			SendAddonMessage(MB_RAID.."_INT",MB_classlist["Mage"][MB_int_current.Mage].." "..UnitName("player"),"RAID")
		else
			SendAddonMessage(MB_RAID.."_INT",MB_classlist["Mage"][MB_int_current.Mage].." "..UnitName("player"))
		end
		if MB_int_current.Mage==num_mages then
			MB_int_current.Mage=1
		else
			MB_int_current.Mage=MB_int_current.Mage+1
		end
	end
end
function IncrementIndex(tab,len)
	if tab==len then return 1 end
	return tab+1
end
function DecrementIndex(tab,len)
	if tab==1 then return len end
	return tab-1
end
function MB_assign_ot()
	if not IAmFocus() or TableLength(MB_ots)==0 then return end
	if not GetRaidTargetIndex("target") or GetRaidTargetIndex("target")==0 then
		SetRaidTarget("target",MB_currentraidtarget)
		local thistargidx=MB_currentraidtarget
		if MB_currentraidtarget==8 then MB_currentraidtarget=1 else MB_currentraidtarget=MB_currentraidtarget+1 end
	else
		local thistargidx=GetRaidTargetIndex("target")
	end
	--Hold SHIFT to assign a second (and third, etc.) target to the tank!
	local thisot
	if IsShiftKeyDown() then
		local temp=DecrementIndex(MB_ot_index,TableLength(MB_ots))
		thisot=MB_ots[temp]
	else
		thisot=MB_ots[MB_ot_index]
	end
	if UnitInRaid("player") then
		SendAddonMessage(MB_RAID.."_OT",thisot.." "..UnitName("player"),"RAID")
	else
		SendAddonMessage(MB_RAID.."_OT",thisot.." "..UnitName("player"))
	end
	if not IsShiftKeyDown() then MB_ot_index=IncrementIndex(MB_ot_index,TableLength(MB_ots)) end
end
function PartyMana()
	--Currently unused
	--Used by Shaman to determine when to drop Mana Tide. Calculates total amount party is down in mana.
	--Probably not the best way to decide
	partyMP=0
	partyMPM=0
	lowestMP=1
	leastmana=""
	for i=1,5 do
		if i==5 then
			--give leastmana to first connected mana player
			if UnitIsConnected("player") and UnitPowerType("player")==0 then
				if leastmana=="" then leastmana="player" end
				lowsetMP=UnitMana("player")/UnitManaMax("player")
				break
			end
		else
			--give mosthurt to first connected player
			if UnitIsConnected("party"..i) and UnitPowerType("party"..i)==0 then
				if leastmana=="" then leastmana="party"..i end
				lowsetMP=UnitMana("party"..i)/UnitManaMax("party"..i)
				break
			end
		end
	end
	for i=1,5 do
		if i==5 then
			if UnitPowerType("player")==0 then
				mana=UnitMana("player")
				manam=UnitManaMax("player")
				if health~=1 and UnitIsConnected("player") then
					partyMP=partyMP+mana
					partyMPM=partyMPM+manam
					if mana/manam<lowestMP then lowestMP=mana/manam ; leastmana="player" end
				end
			end
		else
			if UnitPowerType("party"..i)==0 then
				mana=UnitMana("party"..i)
				manam=UnitManaMax("party"..i)
				if health~=1 and UnitIsConnected("party"..i) then
					partyMP=partyMP+mana
					partyMPM=partyMPM+manam
					if mana/manam<lowestMP then lowestMP=mana/manam ; leastmana="party"..i end
				end
			end
		end
	end
	return partyMP/partyMPM*100,leastmana
end
function NoRezzers()
	--Unused--meant to be used by soulstone code to find out if there are any rezzers to SS
	for i=1,GetNumRaidMembers() do
		class=UnitClass("raid"..i)
		dead=UnitIsDeadOrGhost("raid"..i) or UnitIsGhost("raid"..i)
		connected=UnitIsConnected("raid"..i)
		if (class=="Shaman" or class=="Priest" or class=="Druid") and conneced then
			if not dead then return nil end
		end
	end
	return true
end
function CooldownCast(spell,cooldown)
	local time=GetTime()
	if not MB_cooldowns[spell] then
		cast(spell)
		MB_cooldowns[spell]=time
		return
	end
	if MB_cooldowns[spell]+cooldown>time then
		--Print(spell.." is in cooldown for "..math.floor(MB_cooldowns[spell]+cooldown-time).." more seconds")
		return
	end
	if MB_cooldowns[spell]+cooldown<=time then
		cast(spell)
		MB_cooldowns[spell]=nil
	end
end
function GiveWater()
	--Unused--I use trade dispenser for this now.
	local class=UnitClass("player")
	if class=="Mage" then
		if GetTradePlayerItemLink(1) then
			AcceptTrade()
		else
			if not CursorHasItem() then
				pickupwater()
			else
				DropItemOnUnit("target")
			end
		end
	else
	AcceptTrade()
	end
end
function PickupWater()
	--pick up a stack of the best water in your bags
	local waterranks=table.invert(MB_mywater)
	local amount=0
	local mycarriedwater={}
	local bestrank=0
	local bag,slot,link
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag) do
		local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
		if texture then
			link=GetContainerItemLink(bag,slot)
			local bsnum=string.gsub(link,".-\124H([^\124]*)\124h.*", "%1")
			local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
			FindInTable(waterranks,itemName)
			if FindInTable(MB_mywater,itemName) then
				if waterranks[itemName]>bestrank then
					bestrank=waterranks[itemName]
					bestwater=itemName.." "..bag.." "..slot
				end
			end
		end
	end end
	if bestrank>0 then
		_,_,water,bag,slot=string.find(bestwater,"(Conjured.*Water) (%d+) (%d+)")
		--Print("Trying to pick up "..bag..","..slot)
		PickupContainerItem(bag,slot)
		return water
	end
end
function HasMajorHealthstone()
	--Unused but working code to check for the big HS.
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag)
		do local link=GetContainerItemLink(bag,slot)
		if link==nil then link="" end
		if string.find(link, "Major Healthstone") then return 1 end
		-- To sell to vendor if quality==2 then UseContainerItem(bag,slot) end
	end end
	return nil
end
function HasHealthstone()
	--Unused but working code to check for the small HS.
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag)
		do local link=GetContainerItemLink(bag,slot)
		if link==nil then link="" end
		--%p means punctuation character
		if string.find(link, "%pHealthstone") then return 1 end
	end end
	return nil
end
function HasGreaterHealthstone()
	--Unused but working code to check for the medium HS.
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag)
		do local link=GetContainerItemLink(bag,slot)
		if link==nil then link="" end
		if string.find(link, "Greater Healthstone") then return 1 end
	end end
	return nil
end
function RequestedTap(modifier)
	if not modifier then return not IsShiftKeyDown() and not IsControlKeyDown() and not IsAltKeyDown() end
	if modifier=="Alt" then return IsAltKeyDown() end
	if modifier=="Control" then return IsControlKeyDown() end
	if modifier=="Shift" then return IsShiftKeyDown() end
end
--The following tap fuctions are replacement for level 60 prep functions..they are meant to tap a leveling mob
--notice the low level buffs
function dru_tap(modifier)
	MB_raidleader=MB_powerleveler
	Follow()
	RunLine("/assist "..MB_powerleveler)
	if Mounted() then return end
	if not RequestedTap(modifier) then return end
	local name,realm=UnitName("player")
	Print(name.." is casting moonfire")
	cast("Moonfire(Rank 1)")
	if not IsCurrentAction(72) then UseAction(72) end
end
function paladin_tap(modifier)
	MB_raidleader=MB_powerleveler
	Follow()
	if Mounted() then return end
	PartyBuff({"Blessing of Kings"})
	SelfBuff("Retribution Aura")
	TargetByName(MB_powerleveler,1)
	BuffCast("Blessing of Might")
	TargetUnit("playertarget")
	if not RequestedTap(modifier) then return end
	RunLine("/assist "..MB_powerleveler)
	Print(myname.." is casting Judgement")
	if InCombat() and InMeleeRange() then cast("Consecration") end
	SelfBuff("Seal of Righteousness")
	cast("Judgement")
	--TargetByName(MB_powerleveler,1)
	--if UnitHealth("target")/UnitHealthMax("target")<1 then cast("Flash of Light") end
	if not IsCurrentAction(72) then UseAction(72) end;
	QuickHeal()
end
function lock_tap(modifier)
	--SelfBuff("Demon Skin")
	MB_raidleader=MB_powerleveler
	Follow()
	RunLine("/assist "..MB_powerleveler)
	SelfBuff("Demon Armor")
	if Mounted() then return end
	if not RequestedTap(modifier) then return end
	local name,realm=UnitName("player")
	Print(name.." is casting Searing Pain or Corruption")
	cast("Searing Pain(Rank 1)")
	cast("Corruption(Rank 1)")
	if not IsCurrentAction(71) then UseAction(71) end
end
function mage_tap(modifier)
	MB_raidleader=MB_powerleveler
	Follow()
	RunLine("/assist "..MB_powerleveler)
	if Mounted() then return end
	--SelfBuff("Frost Armor")
	if SpellExists("Mage Armor") then
		SelfBuff("Mage Armor")
	elseif SpellExists("Ice Armor") then
		SelfBuff("Ice Armor")
	elseif SpellExists("Frost Armor") then
		SelfBuff("Frost Armor")
	end
	if not RequestedTap(modifier) then return end
	local name,realm=UnitName("player")
	Print(name.." is casting Fire Blast")
	cast("Fire Blast(Rank 1)")
	if not UnitIsDead("target") and UnitIsEnemy("target","player") and InMeleeRange() then cast("Frost Nova(Rank 1)") end
	if not UnitIsDead("target") and UnitIsEnemy("target","player") and InMeleeRange() then cast("Cone of Cold(Rank 1)") end
	if not UnitIsDead("target") and UnitIsEnemy("target","player") and InMeleeRange() then cast("Blast Wave(Rank 1)") end
	if not UnitIsDead("target") and UnitIsEnemy("target","player") and InMeleeRange() then cast("Arcane Explosion(Rank 1)") end
	if not IsCurrentAction(71) then UseAction(71) end
end
function rogue_tap(modifier)
	MB_raidleader=MB_powerleveler
	Follow()
	RunLine("/assist "..MB_powerleveler)
	if Mounted() then return end
	if not RequestedTap(modifier) then return end
	local name,realm=UnitName("player")
	Print(name.." is STABBIN', ha HA!")
	if not IsCurrentAction(72) then UseAction(72) end
end
function warrior_tap(modifier)
	MB_raidleader=MB_powerleveler
	Follow()
	RunLine("/assist "..MB_powerleveler)
	if Mounted() then return end
	SelfBuff("Bloodrage")
	SelfBuff("Battle Shout")
	if not RequestedTap(modifier) then return end
	local name,realm=UnitName("player")
	Print(name.." is POUNDIN', ha HA!")
	if not IsCurrentAction(72) then UseAction(72) end
	InstantPoisonMain()
	InstantPoisonOff()
end
function hunter_tap(modifier)
	MB_raidleader=MB_powerleveler
	Follow()
	RunLine("/assist "..MB_powerleveler)
	--cast("Call Pet")
	if Mounted() then return end
	if not RequestedTap(modifier) then return end
	local name,realm=UnitName("player")
	Print(name.." is SHOOTIN', ha HA!")
	cast("Arcane Shot(Rank 1)")
	if InMeleeRange() then
		if not IsCurrentAction(71) then UseAction(71) end
	end
	if not IsAutoRepeatAction(72) then cast("Auto Shot") end
end
function shammy_tap(modifier)
	MB_raidleader=MB_powerleveler
	Follow()
	RunLine("/assist "..MB_powerleveler)
	if Mounted() then return end
	if not RequestedTap(modifier) then return end
	cast("Earth Shock")
	if not IsCurrentAction(71) then UseAction(71) end
end
function priest_tap(modifier)
	MB_raidleader=MB_powerleveler
	Follow()
	RunLine("/assist "..MB_powerleveler)
	if Mounted() then return end
	SelfBuff("Inner Fire")
	if not RequestedTap(modifier) then return end
	HealLowbies()
	cast("Smite(Rank 1)")
	if not IsCurrentAction(71) then UseAction(71) end
end
function HealLowbies()
	--HealLowbies is a function I wrote to target a list of nearby NON-RAID members and keep them alive!
	for squadie in MB_levelingparties do
		for _,squid in MB_levelingparties[squadie] do
			table.insert(MB_lowbies,squid)
		end
	end
	ClearTarget()
	lowestHP=100000
	mosthurt=MB_lowbies[1]
	for idx,lowbie in MB_lowbies do
		--Print(lowbie)
		TargetByName(lowbie,1)
		health=UnitHealth("target")
		healthm=UnitHealthMax("target")
		if health~=1 and UnitIsConnected("target") then
			healthp=health/healthm
			if healthp<lowestHP then lowestHP=healthp ; mosthurt=UnitName("target") end
		end
	end
	if lowestHP<1 then
		TargetByName(mosthurt,1)
		Print(mosthurt.." has a health of "..lowestHP)
		if UnitName("target") then QuickHeal("target") end
	end
end
function GetLink(item)
	for bag=0,4 do for slot=1,GetContainerNumSlots(bag) do
		local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
		if texture then
			link=GetContainerItemLink(bag,slot)
			--Print(link)
			if string.find(link,item) then return link end
		end
	end end
end
MB_mountnames={"Horn of the ", "Reins of the Swift Stormsaber", "Swift White Steed", "Warhorse"," Mare","Horse","Timber Wolf","Kodo","Raptor"," Ram"," Mechanostrider"," Bridle","Charger"," Frostsaber"," Nightsaber", "Swift Palomino"}
function MountUp()
	--Print("Mounting Up!")
	if ImBusy() then return end
	for _,mount in MB_mountnames do
		use(GetLink(mount))
	end
	cast("Summon Dreadsteed")
	cast("Summon Charger")
end
function Mounted()
	if buffed("Dreadsteed", "player") or buffed("Charger", "player") then return true end
	for _,mount in MB_mountnames do
		if buffed(mount,"player") then return true end
	end
end
function HunterDuel()
	--If you want to level your weapons fast, simply duel hunter pets.
	--Hunter pets count as legal targets for leveling weapons in 1.12
	--Use a grey weapon so you don't kill the pet fast, int buffs, too
	--Watch your health and remove gear if you kill pet faster than he kills you
	if UnitName("player")=="Everglades" then
		StartDuel("Olympic")
		TargetByName("Olympic",1)
		PetAttack("target")
		TargetByName("ItsJustAPet",1)
		if IsAutoRepeatAction(71) then cast("Attack") end
	end
	if UnitName("player")=="Olympic" then
		TargetByName("Everglades",1)
		PetAttack("target")
		TargetByName("BaconKills",1)
		if IsAutoRepeatAction(71) then cast("Attack") end
	end
	if UnitName("player")=="Monterey" then
		StartDuel("Badlands")
		TargetByName("Badlands",1)
		PetAttack("target")
		TargetByName("Draculia",1)
		if IsAutoRepeatAction(71) then cast("Attack") end
	end
	if UnitName("player")=="Badlands" then
		TargetByName("Monterey",1)
		PetAttack("target")
		TargetByName("Grubbs",1)
		if IsAutoRepeatAction(71) then cast("Attack") end
	end
	if buffed("Mend Pet","player") then return end
	if UnitHealth("pet")<1000 then cast("Mend Pet") end
	cast("Deterrence")
	SelfBuff("Aspect of the Monkey")
	if not IsAutoRepeatAction(71) then cast("Attack") end
end
function Shield(id)
	if not id then return end
	if UnitClass("player")=="Priest" and (UnitHealth(id)/UnitHealthMax(id))<.55 and not buffed("Weakened Soul",id) then TargetUnit(id) Print("Shielding "..UnitName(id)) cast("Power Word: Shield") end
end
function Bubble(id)
	if not id then return end
	if UnitClass("player")=="Paladin" and (UnitHealth(id)/UnitHealthMax(id))<.10 and not buffed("Forbearance",id) then TargetUnit(id) MB_msg("BUBBLING "..UnitName(id)) cast("Blessing of Protection") end
end
function ImDH()
	MB_dedicated_targets=table.invert(MB_dedicated_healers)
	if TankTarget("Anubisath Sentinel") and FindInTable(MB_dedicated_healers,myname) and IsAlive(MBID[MB_dedicated_targets[myname]]) then return true end
end
function RaidGroup()
	--Returns what raid group you are in.
	local raidlist= {}
	for i=1,GetNumRaidMembers() do
		local name,rank,subgroup=GetRaidRosterInfo(i)
		raidlist[name]=subgroup
	end
	return raidlist[UnitName("player")]
end
function RaidHeal()
	if not IsHealer() then return end
	--if 1 then QuickHeal() return end
	if Sulfuron() or TankTarget("Shazzrah") or TankTarget("Ragnaros") or not InRaid() then QuickHeal() return end
	if Jindo() then
		MB_maxheal={Druid=11,Priest=3,Shaman=5,Paladin=5}
	else
		--MB_maxheal={Druid=11,Priest=11,Shaman=11,Paladin=11}
		MB_maxheal={Druid=4,Priest=2,Shaman=5,Paladin=4}
	end
	--for parties just quickheal
	if GetNumRaidMembers()<6 then QuickHeal() return end
	if not buffed("Sprit of Redemption","player") and (UnitIsDead("player") or UnitIsGhost("player")) then return end
	if ManaDown()>0 and buffed("Drink","player") then return end
	local i,name,dmg,x
	MB_raid_damage={}
	MB_healer_mana={}
	MB_chumps_introuble={}
	MB_healers_introuble={}
	MB_tanks_introuble={}
	MB_hurt_list={}
	------ A dedicated healer is a toon who will ONLY heal a certain other toon. The other healers won't help. Unless he's out of mana or dead.
	MB_dedicated_targets=table.invert(MB_dedicated_healers)
	if ImDH() then
		local id=MBID[MB_dedicated_targets[myname]]
		if IsAlive(id) and (UnitHealth(id)/UnitHealthMax(id))<1 then
			NS(id)
			Shield(id)
			Bubble(id)
			Print("I am a dedicated healer, healing "..MB_dedicated_targets[myname])
			QuickHeal(id)
			return true
		end
	end
	----=============NORMAL HEALING ROUTINE===================----------
	--For everyone else, make several lists.
	--1) List of tanks below healtank_threshold (default 50%)
	--2) List of normies below healchump threshold (default 33%)
	--3) List of everyone else
	--4) a list of healers who are ready to heal and their mana.
	for name,id in MBID do
		local h_max=UnitHealthMax(id) ; h=UnitHealth(id)
		local hdown=h_max-h ; hpct=h/h_max
		if name==UnitName("player") and hpct<MB_healself_threshold then NS("player") Shield("player") QuickHeal("player") return end
		-- Make a healer list.
		-- If the healer is a dedicated healer, leave him out.
		-- If the healer has less than 500 mana leave him out. He can just do emergency healing
		-- If the healer has less than .3 health, leave him out. He'll be healing himself.
		-- If the healer is silenced by a known debuff, leave him out.
		-- Despite all this, put YOURSELF in the list no matter what. You're gonna be healing somebody, maybe yourself.
		if FindInTable(MB_healerinraid,name) and IsAlive(id) and RaiderHealthP(id)>MB_healself_threshold and not buffed ("Drink",id) and not buffed("Sonic Burst",id) and not DedicatedHealing(name) and (UnitMana(id)>500 or name==myname) then MB_healer_mana[name]=UnitMana(id) end
		--Make a hurt list.
		--If he's alive he goes on the list
		--If he has a dedicated healer, he does NOT go on the list. His dedicated healer needs to save him.
		if IsAlive(id) and not DHActive(id) then
			if hdown>0 and FindInTable(MB_tankinraid,name) and hpct<MB_healtank_threshold then
				MB_tanks_introuble[name]=h
			elseif hdown>0 and FindInTable(MB_healerinraid,name) and hpct<MB_savechump_threshold then
				MB_healers_introuble[name]=h
			elseif hdown>0 and (hpct<MB_savechump_threshold or (buffed("Hellfire",id) and hpct<.7)) then
				MB_chumps_introuble[name]=h
			end
			if hdown>0 then MB_raid_damage[name]=h end
		end
	end
	--order the three lists of hurt people into an ordered list of hurt people. introuble toons might be listed twice.
	--Printt(MB_raid_damage)
	--Printt(MB_tanks_introuble)
	--Printt(MB_healers_introuble)
	--Printt(MB_chumps_introuble)
	i=1
	if TableLength(MB_tanks_introuble)>0 then
		for name,dmg in spairs(MB_tanks_introuble, function(t,a,b) return t[b] > t[a] end) do
			MB_hurt_list[i]=name
			i=i+1
		end
	elseif TableLength(MB_healers_introuble)>0 then
		for name,dmg in spairs(MB_healers_introuble, function(t,a,b) return t[b] > t[a] end) do
			MB_hurt_list[i]=name
			i=i+1
		end
	elseif TableLength(MB_chumps_introuble)>0 then
		for name,dmg in spairs(MB_chumps_introuble, function(t,a,b) return t[b] > t[a] end) do
			MB_hurt_list[i]=name
			i=i+1
		end
	elseif TableLength(MB_raid_damage)>0 then
		for name,dmg in spairs(MB_raid_damage, function(t,a,b) return t[b] > t[a] end) do
			MB_hurt_list[i]=name
			i=i+1
		end
	end
	--Go through each healer list by most mana first.
	--This will effectively:
	--If there are any tanks in trouble, they get healed first (and only)
	--If there are any chumps in trouble, they get healed second (and only)
	--If no tanks in trouble or chumps in trouble, normal healing order, wrapping around to the top if excess healers.
	--If the healer list is longer than the hurt list, loop around to double up the healers on the hurt list. But only double up. Don't triple up. That wastes MP5 canceling out of spells.
	local hurt_idx=1 ; num_hurt=TableLength(MB_hurt_list)
	if num_hurt==0 then return end
	local healer_idx=1 ; num_healers=TableLength(MB_healer_mana)
	local num_damaged=TableLength(MB_hurt_list)
	for name,mana in spairs(MB_healer_mana, function(t,a,b) return t[b] < t[a] end) do
	--Print("Checking healer "..healer_idx.." . "..name.." "..mana)
	--Print("On hurt list --hurt_idx")
	--Print(hurt_idx)
	--Print(MB_hurt_list[hurt_idx])
		if name==myname and MB_hurt_list[hurt_idx] then
			local id=MBID[MB_hurt_list[hurt_idx]]
			Print("My healing order is "..healer_idx.." Healing "..MB_hurt_list[hurt_idx].." who is down "..(UnitHealthMax(id)-UnitHealth(id)))
			NS(id)
			Shield(id)
			Bubble(id)
			QuickHeal(id)
			return
		end
		--circle around to the top of the hurt list when every hurt has a heal.
		if healer_idx==num_healers then healer_idx=1 else healer_idx=healer_idx+1 end
		if hurt_idx==num_hurt then hurt_idx=1 else hurt_idx=hurt_idx+1 end
		--if hurt_idx==num_hurt then break end
	end
end
function ReportCPU(mystring)
	if not MB_reportcpu then return end
	local time=(round((GetTime()-MB_cpustart)*1000,0))
	if (time>0 or MB_reportzerotime) and (not string.find(mystring,"busy") or MB_reportbusy) then
		Print(time.." =clicktime: "..mystring)
	end
end
function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end
function SummonOutOfRange()
	if not IsAlive("player") then return end
	ConfirmSummon()
	StaticPopup_Hide("CONFIRM_SUMMON");
	if myclass~="Warlock" then return end
	outofrangelist = {}
	outofrangelist_summoners = {}
	summonerlist = {}
	if MB_SummonTargetId and MB_SummonTargetId ~= "" then TargetUnit(MB_SummonTargetId) end
	if MB_isCasting or MB_isChanneling then
		FsR_SummoningLastCast = GetTime() + 1
		return
	end
	if GetTime() > FsR_SummoningLastCast then
		-- If YOU are out of range of raid leader and not in range of EVERYONE else then YOU need summoning, sucka. Return from this function
		local allinrange=true
		for raider,id in MBID do
			if not MB_raidleader then allinrange=nil break end
			if raider~=MB_raidleader and raider~=myname then
				if not CheckInteractDistance(id,4) then allinrange=nil break end
			end
		end
		if not MB_raidleader then Print("You must pick a raid leader with alt-4 or alt-1, or I won't know if I'm distant.") end
		if not MB_raidleader or (not CheckInteractDistance(MBID[MB_raidleader],4) and not allinrange) then Print("I'm a distant lock") return end
		--Summon if you are not distant
		if ManaDown()>0 and buffed("Drink","player") then return end
		if ImBusy() then return end
		--Create a table of ready summoners.
		if UnitInRaid("player") then
			for name,id in MBID do
				local isSummoner=UnitClass(id)=="Warlock"
				if IsAlive(id) then
					--summon summoners first by adding to seperate table
					if not CheckInteractDistance(id,4) then
						if isSummoner then
							table.insert(outofrangelist_summoners,name)
						else
							table.insert(outofrangelist,name)
						end
					else
						local manaleft=UnitMana(id)
						if not buffed("Drink",id) and (UnitClass(id)=="Warlock" and UnitMana(id)>300 and FsR_TrackedMaterial["Soul Shard"] and FsR_TrackedMaterial["Soul Shard"][name] and FsR_TrackedMaterial["Soul Shard"][name]> 0 ) or name==myname then table.insert(summonerlist,name) end
					end
				end
			end
			table.sort(outofrangelist_summoners)
			Print("out of range summoners")
			Printt(outofrangelist_summoners)
			table.sort(outofrangelist)
			Print("out of rangenonsummoner")
			Printt(outofrangelist)
			TableConcat(outofrangelist_summoners,outofrangelist)
			outofrangelist=outofrangelist_summoners
			Print("out of range all")
			Printt(outofrangelist)
			table.sort(summonerlist,
			function(a,b)
				if FsR_TrackedMaterial["Soul Shard"][a] == FsR_TrackedMaterial["Soul Shard"][b] then
					return a>b
				else
					return FsR_TrackedMaterial["Soul Shard"][a]>FsR_TrackedMaterial["Soul Shard"][b]
				end
			end)
			myorder=FindInTable(summonerlist,myname)
			Print("Summoning order is "..myorder)
			numtosummon=TableLength(outofrangelist)
			if numtosummon>=myorder then
				if MB_SummonTargetId == MBID[outofrangelist[myorder]] then
					MB_SummonTargetId = nil
				else
					MB_msg("Summoning "..outofrangelist[myorder])
					TargetUnit(MBID[outofrangelist[myorder]])
					MB_SummonTargetId = MBID[outofrangelist[myorder]]
					CastSpellByName("Ritual of Summoning")
				end
			end
		elseif GetNumPartyMembers() > 0 then
			for i=1, GetNumPartyMembers() do
				if (not CheckInteractDistance("party"..i,4)) then
					TargetUnit("party"..i)
					cast("Ritual of Summoning")
					break
				end
			end
		end
	end
end
function findSpell(spellName)
	local bookType=BOOKTYPE_SPELL
	local i, s;
	local found = false;
	for i = 1, MAX_SKILLLINE_TABS do
		local name, texture, offset, numSpells = GetSpellTabInfo(i);
		if (not name) then break; end
		for s = offset + 1, offset + numSpells do
			local spell, rank = GetSpellName(s, bookType);
			if (spell == spellName) then found = true; end
			if (found and spell ~=spellName) then return s-1; end
		end
	end
	if (found) then return s; end
	return nil;
end
--Fs*
function FsR_RequestMaterialUpdate()
	if (not UnitInRaid("player")) and (GetNumPartyMembers() == 0) then return end
	SendAddonMessage(MB_RAID.."_Materials" , "Update me!" ,"RAID")
end
function FsR_ReceivingMaterialChatMessage(message, sender)
	if (message == "Update me!") then
		FsR_AnnounceMaterials()
	else
		local ItemName = string.sub(message, 1, string.find(message,":") - 1)
		local ItemCount = tonumber(string.sub(message, string.find(message,":") + 1))
		if not FsR_TrackedMaterial[ItemName] then FsR_TrackedMaterial[ItemName] = {} end
		FsR_TrackedMaterial[ItemName][sender] = ItemCount
		FsR_ItemTrade.LastItemUpdate = GetTime()
 	end
end
function FsR_AnnounceMaterials()
	if (not UnitInRaid("player")) and (GetNumPartyMembers() == 0) then return end
	local currTime = GetTime()
	for item, itemInfo in pairs(FsR_Stuff2Track) do
		if (itemInfo.itemkind == "item") then
			SendAddonMessage(MB_RAID.."_Materials", item .. ":" .. HasExactItem(item), "RAID")
		elseif (itemInfo.itemkind == "itemGrp") then
			SendAddonMessage(MB_RAID.."_Materials", item .. "_grp:" .. HasItem(item), "RAID")
		else
			if (item == "Gold") then
				SendAddonMessage(MB_RAID.."_Materials", item .. "_gold:" .. GetMoney(), "RAID")
			elseif (item == "EmptyBagSlots") then
				SendAddonMessage(MB_RAID.."_Materials", item .. "_slots:" .. FsR_GetAllContainerFreeSlots(), "RAID")
			end
		end
	end
end
function FsR_GetItemsFromStuff2Track()
	FsR_UpdateSumInRaidValues()
	local shoppingList = {}
	for item, itemInfo in pairs(FsR_Stuff2Track) do
		if(itemInfo.itemkind == "item") then
			if(itemInfo.class[UnitClass("player")]) then
				Printt(itemInfo.class[UnitClass("player")])
			end
		end
	end
end
function FsR_GetAllContainerFreeSlots()
	local sum = 0
	for i=0,4 do
	sum = sum + GetContainerNumFreeSlots(i)
	end
	return sum
end
function FsR_UpdateTradeList()
	if not TradeFrame:IsVisible() then
		FsR_ItemTrade.PlayerToTradeWith = {}
		for item,playerlist in pairs(FsR_TrackedMaterial) do
			if FsR_TrackedMaterial[item] then
				local SumInRaid = 0
				local myShareOfit = 0
				local TotalSharesOfIt = 0
				local itemNameINStuff2Track = item
				local myAmmout = 0
				if string.find(item, "_") then
					itemNameINStuff2Track = string.sub(item, 1, string.find(item, "_") - 1)
				end
				--How much do i have
				myAmmount = FsR_TrackedMaterial[item][UnitName("player")]
				if not myAmmount then FsR_RequestMaterialUpdate() FsR_AnnounceMaterials() return end -- List not ready yet
				--myshare is the relative ammount i should have for example 3 hunter 2 warrior will trade arrows so for every 10 arrows a hunter got the warrior has 1
				if FsR_Stuff2Track[itemNameINStuff2Track] and FsR_Stuff2Track[itemNameINStuff2Track].class then
					if FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass("player")] then
						if FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass("player")].Ratio then
							myShareOfit = FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass("player")].Ratio
						else
							myShareOfit = 1
						end
					end
				elseif FsR_Stuff2Track[itemNameINStuff2Track] and FsR_Stuff2Track[itemNameINStuff2Track].collector then
					for i, collector in ipairs(FsR_Stuff2Track[itemNameINStuff2Track].collector) do
						if MBID[collector] and CheckInteractDistance(MBID[collector], 2) and FsR_TrackedMaterial["EmptyBagSlots_slots"][collector] and FsR_TrackedMaterial["EmptyBagSlots_slots"][collector] > 1 then
							if collector ==UnitName("player") then
								myShareOfit = 1
							end
							break
						end
					end
				end
				--count how many resources are available
				for player, amount in pairs(FsR_TrackedMaterial[item]) do
					if MBID[player] and CheckInteractDistance(MBID[player], 2) and FsR_TrackedMaterial["EmptyBagSlots_slots"][player]	and FsR_TrackedMaterial["EmptyBagSlots_slots"][player] > 1 then
						if FsR_Stuff2Track[itemNameINStuff2Track].class then
							if FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass(MBID[player])] then
								if FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass(MBID[player])].Ratio then
									TotalSharesOfIt = TotalSharesOfIt + FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass(MBID[player])].Ratio
								else
									TotalSharesOfIt = TotalSharesOfIt + 1
								end
							end
						elseif FsR_Stuff2Track[itemNameINStuff2Track].collector then
							for i, collector in ipairs(FsR_Stuff2Track[itemNameINStuff2Track].collector) do
								if MBID[collector] and CheckInteractDistance(MBID[collector], 2) and FsR_TrackedMaterial["EmptyBagSlots_slots"][collector] and FsR_TrackedMaterial["EmptyBagSlots_slots"][collector] > 1 then
									TotalSharesOfIt = 1
									break
								end
							end
						end
						SumInRaid = SumInRaid + tonumber(amount)
					end
				end
		--something anyone is interested in?
		if TotalSharesOfIt > 0 then
			FsR_TrackedMaterial[item].AmmountForMe = math.floor(SumInRaid * myShareOfit / TotalSharesOfIt)
			FsR_TrackedMaterial[item].AmmountToSpare = myAmmount - FsR_TrackedMaterial[item].AmmountForMe
			if (FsR_TrackedMaterial[item][UnitName("player")] > (FsR_TrackedMaterial[item].AmmountForMe)) then
				for player, amount in pairs(FsR_TrackedMaterial[item]) do
					if MBID[player] and CheckInteractDistance(MBID[player], 2) and FsR_TrackedMaterial["EmptyBagSlots_slots"][player] > 1 then
						local HisShare = 0
							if FsR_Stuff2Track[itemNameINStuff2Track].class then
								if FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass(MBID[player])] then
									if FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass(MBID[player])].Ratio then
										HisShare = FsR_Stuff2Track[itemNameINStuff2Track].class[UnitClass(MBID[player])].Ratio
									else
										HisShare = 1
									end
								end
							elseif FsR_Stuff2Track[itemNameINStuff2Track].collector then
								for i, collector in ipairs(FsR_Stuff2Track[itemNameINStuff2Track].collector) do
									if MBID[collector] and CheckInteractDistance(MBID[collector], 2) and FsR_TrackedMaterial["EmptyBagSlots_slots"][collector] > 1 then
										if player == collector then
											HisShare = 1
										end
										break
									end
								end
							end
							if ((myShareOfit > 0) and (amount + 1 < (HisShare * SumInRaid / TotalSharesOfIt))) or ((myShareOfit == 0) and (HisShare > 0)) then
								if not FsR_ItemTrade.PlayerToTradeWith[player] then FsR_ItemTrade.PlayerToTradeWith[player] = {} end
								local ammountHeNeeds = math.floor((HisShare * SumInRaid / TotalSharesOfIt) - amount)
								if ammountHeNeeds == 0 then ammountHeNeeds = 1 end
								if (ammountHeNeeds > FsR_TrackedMaterial[item].AmmountToSpare) then
									FsR_ItemTrade.PlayerToTradeWith[player][item] = FsR_TrackedMaterial[item].AmmountToSpare
								else
									FsR_ItemTrade.PlayerToTradeWith[player][item] = ammountHeNeeds
								end
							end
						end
					end
				end
			end
			end
			--Printt(FsR_ItemTrade.PlayerToTradeWith)
		end
	end
end
function FsR_StartTradingPeriod()
	FsR_ItemTrade.TradingWindowCloseTime = GetTime() + 30
end
function FsR_DoTrades()
	if FsR_ItemTrade.TradingWindowCloseTime > GetTime() and (GetTime() > FsR_ItemTrade.LastItemUpdate + 0.1) then
		local ItemIndexYou = 0
		local ItemIndexPartner = 0
		local RequestTime
		if TradeFrame:IsVisible() then
			for i=1,6 do
				if GetTradePlayerItemLink(i) then ItemIndexYou = i end
				if GetTradeTargetItemLink(i) then ItemIndexPartner = i end
			end
			local TradingPartner = TradeFrameRecipientNameText:GetText()
			if TradingPartner then
				if FsR_ItemTrade.PlayerToTradeWith[TradingPartner] and (ItemIndexYou < 6) and (ItemIndexYou < (FsR_TrackedMaterial["EmptyBagSlots_slots"][TradingPartner] - 1)) then
					local item2TradeCounter = ItemIndexYou
					for item, amount in pairs (FsR_ItemTrade.PlayerToTradeWith[TradingPartner]) do
						while (FsR_ItemTrade.PlayerToTradeWith[TradingPartner][item] > 0) do
							local thisAmount = FsR_PutItemInTrade(item, FsR_ItemTrade.PlayerToTradeWith[TradingPartner][item], TradingPartner)
							item2TradeCounter = item2TradeCounter + 1
							ItemIndexYou = 0 --Do not accept Trade yet
							ItemIndexPartner = 0 --Do not accept Trade yet
							if thisAmount then
								FsR_ItemTrade.PlayerToTradeWith[TradingPartner][item] = FsR_ItemTrade.PlayerToTradeWith[TradingPartner][item] - thisAmount
								if (item2TradeCounter > 5) or (item2TRadeCounter == FsR_TrackedMaterial["EmptyBagSlots_slots"][TradingPartner]) then
									break
								end
							else
								break
							end
						end
						if (item2TradeCounter > 5) or (item2TRadeCounter == FsR_TrackedMaterial["EmptyBagSlots_slots"][TradingPartner]) then
							break
						end
					end
				end
				if (TradeHighlightRecipient:IsVisible()) or (ItemIndexYou == FsR_ItemTrade.IndexYouLast) and (ItemIndexPartner == FsR_ItemTrade.IndexPartnerLast) and ((ItemIndexYou > 0) or (ItemIndexPartner > 0)) or (GetTime() > FsR_ItemTrade.TradingStarted) then
					if FsR_ItemTrade.TradeAcceptUpdate < GetTime() then
						AcceptTrade()
						FsR_ItemTrade.TradeAcceptUpdate = GetTime()+ 0.5
					end
				else
					FsR_ItemTrade.TradeAcceptUpdate = GetTime()+ 0.5
				end
				FsR_ItemTrade.IndexPartnerLast = ItemIndexPartner
				FsR_ItemTrade.IndexYouLast = ItemIndexYou
			end
		else
			FsR_ItemTrade.TradingStarted = GetTime() + 3
			FsR_UpdateTradeList()
			if GetTime() > FsR_ItemTrade.NextRequestTime then
				local AskNow = not FsR_ItemTrade.LastRequestTarget
				for player, items in pairs(FsR_ItemTrade.PlayerToTradeWith) do
					if AskNow then
						if MBID[player] and CheckInteractDistance(MBID[player],2) then
							InitiateTrade(MBID[player])
							FsR_ItemTrade.NextRequestTime = GetTime() + 1
							FsR_ItemTrade.LastRequestTarget = player
							return
						end
					else
						if player == FsR_ItemTrade.LastRequestTarget then
							AskNow = true
						end
					end
				end
				FsR_ItemTrade.LastRequestTarget = nil
			else
				FsR_ReStackStuff()
			end
		end
	end
end
function FsR_ReStackStuff()
	for i1 = 0,4 do
		for j1=1, GetContainerNumSlots(i1) do
			for i2 = i1,4 do
				for j2=1, GetContainerNumSlots(i2) do
					if not ((i1 == i2) and (j2 <= j1)) then
						icon1,count1,locked1=GetContainerItemInfo(i1,j1)
						icon2,count2, locked2 =GetContainerItemInfo(i2,j2)
						if icon1 and icon2 and not locked1 and not locked2 then
							local itemLink = GetContainerItemLink(i1, j1)
							local itemLink2 = GetContainerItemLink(i2, j2)
							if itemLink and (itemLink == itemLink2) then
								local bsnum=string.gsub(itemLink,".-\124H([^\124]*)\124h.*", "%1")
								local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
								if count1 < itemCount then
									Print(itemName .. i2 .. "/" .. j2 .. " to " .. i1 .. "/" .. j1)
									ClearCursor()
									PickupContainerItem(i2, j2)
									PickupContainerItem(i1, j1)
									ClearCursor()
									return true
								end
							end
						end
					end
				end
			end
		end
	end
end
function FsR_PutItemInTrade(itemIn, amount, partner)
	for bag=0,4 do
		for slot=1,GetContainerNumSlots(bag) do
			local texture,itemCount,locked,quality,readable,lootable,link=GetContainerItemInfo(bag,slot)
			Print(locked)
			if texture and not locked then
				link=GetContainerItemLink(bag,slot)
				local bsnum=string.gsub(link,".-\124H([^\124]*)\124h.*", "%1")
				local itemName, itemNo, itemRarity, itemReqLevel, itemType, itemSubType, _itemCount, itemEquipLoc, itemIcon = GetItemInfo(bsnum)
				local found = false
				local item = itemIn
				if string.find(item, "_grp") then
					item = string.gsub(item, "_grp", "")
					found = string.find(itemName,item)
				else
					found = (item == itemName)
				end
				if found then
					ClearCursor()
					Print (amount.."=>"..itemCount)
					if amount >= itemCount then
						PickupContainerItem(bag,slot)
						DropItemOnUnit(MBID[partner])
						return itemCount
					else
						SplitContainerItem(bag, slot, itemCount - amount)
						local picked = false
						for bagempty=0,4 do
							for slotempty=1, GetContainerNumSlots(bagempty) do
								if not GetContainerItemInfo(bagempty,slotempty) and ((bag ~= bagempty) or (slot ~= slotempty)) then
									PickupContainerItem(bagempty,slotempty)
									return false
								end
							end
						end
					end
				end
			end
		end
	end
	ClearCursor()
end
--Fs*
function MBHeal(targ)
	MB_classheals={Druid="Healing Touch",Priest="Heal",Shaman="Healing Wave",Paladin="Holy Light"}
	if RaidHealth()<.65 then MB_classheals["Shaman"]="Chain Heal" end
	if PartyHurt(800,3) then MB_classheals["Priest"]="Prayer of Healing" end
	class=UnitClass("player")
	TargetUnit(targ)
	NS()
	if UnitName("target") then Print("Healing "..UnitName("target").."  with "..MB_classheals[class]) end
	--if UnitHealth(targ)/UnitHealthMax(targ)==1 then SpellStopCasting() return end
	for i=0,MB_maxheal[class]-1 do
		spell=MB_classheals[class].."(Rank "..MB_maxheal[class]-i..")"
		cast(spell)
	end
end
function RezzersInGroup()
	--Returns name of random rezzer in the raid or party
	local rezzers={}
	for name,id in MBID do 
		local class=UnitClass(id)
		if (class=="Shaman"  or class=="Priest" or class=="Druid" or class=="Paladin") then table.insert(rezzers,name) end
	end
	if TableLength(rezzers)==0 then
		return nil
	else
		return(rezzers[math.random(TableLength(rezzers))])
	end
end
