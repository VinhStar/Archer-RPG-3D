cfg_char = {
	[1] = { monsterID = 1, monsterName = nil, avatar = "thief", scale = nil, moveSpeed = 4, bodyMass = 10, animState = "Animation_hero_bow", stateLogic = "hero", aiLogic = "BrainHero", weaponID = 1000, skills = nil, attack = 200, maxHP = 10000, bodyHit = 0, critRate = 0.15, missRate = 0, exp = 1000},
	[101] = { monsterID = 101, monsterName = "游侠弓手", avatar = "sparcher", scale = nil, moveSpeed = 4, bodyMass = 2, animState = "Animation_char", stateLogic = "monster_act_sparcher", aiLogic = "monster_sparcher", weaponID = 1000, skills = nil, attack = 200, maxHP = 1000, bodyHit = 200, critRate = 0, missRate = 0, exp = 12},
	[102] = { monsterID = 102, monsterName = "蘑菇妹", avatar = "magic_plant", scale = nil, moveSpeed = 2.75, bodyMass = 2, animState = "Animation_char", stateLogic = "monster_act_magic_plant", aiLogic = "monster_magic_plant", weaponID = 2005, skills = nil, attack = 200, maxHP = 800, bodyHit = 200, critRate = 0, missRate = 0, exp = 12},
	[103] = { monsterID = 103, monsterName = "老国王", avatar = "king", scale = nil, moveSpeed = 2, bodyMass = 2, animState = "Animation_char", stateLogic = "monster_act_magic_plant", aiLogic = "monster_magic_plant", weaponID = 2011, skills = {1000004,1000006}, attack = 200, maxHP = 2000, bodyHit = 200, critRate = 0, missRate = 0, exp = 12},
	[104] = { monsterID = 104, monsterName = "黑男巫", avatar = "shaman", scale = nil, moveSpeed = 3, bodyMass = 2, animState = "Animation_char", stateLogic = "monster_act_shaman", aiLogic = "monster_shaman", weaponID = 2015, skills = nil, attack = 200, maxHP = 1500, bodyHit = 200, critRate = 0, missRate = 0, exp = 15},
	[105] = { monsterID = 105, monsterName = "大法师", avatar = "wizard", scale = nil, moveSpeed = 4, bodyMass = 2, animState = "Animation_char", stateLogic = "monster_act_wizard", aiLogic = "monster_wizard", weaponID = 2020, skills = nil, attack = 200, maxHP = 1200, bodyHit = 200, critRate = 0, missRate = 0, exp = 18},
	[106] = { monsterID = 106, monsterName = "海盗", avatar = "pirate", scale = nil, moveSpeed = 4, bodyMass = 3, animState = "Animation_char", stateLogic = "guai", aiLogic = "monster_pirate", weaponID = 1005, skills = {1000006}, attack = 200, maxHP = 1800, bodyHit = 200, critRate = 0, missRate = 0, exp = 15},
	[107] = { monsterID = 107, monsterName = "死神", avatar = "undeath_2", scale = nil, moveSpeed = 2, bodyMass = 3, animState = "Animation_char", stateLogic = "monster_act_undeath_2", aiLogic = "monster_undeath_2", weaponID = 1006, skills = {1000006,1000008}, attack = 200, maxHP = 1600, bodyHit = 200, critRate = 0, missRate = 0, exp = 18},
	[201] = { monsterID = 201, monsterName = "红帽蘑菇怪", avatar = "mon01", scale = nil, moveSpeed = 2.2, bodyMass = 2, animState = "Animation_char", stateLogic = "monster_act_mogumon1", aiLogic = "monster_mogumon1", weaponID = 1000, skills = nil, attack = 200, maxHP = 800, bodyHit = 300, critRate = 0, missRate = 0, exp = 5},
	[202] = { monsterID = 202, monsterName = "萝卜怪(无子弹）", avatar = "mon03", scale = 1.5, moveSpeed = 2.5, bodyMass = 2, animState = "Animation_char", stateLogic = "monster_act_Radishmon3", aiLogic = "monster_radish_mon3", weaponID = 2006, skills = nil, attack = 200, maxHP = 800, bodyHit = 200, critRate = 0, missRate = 0, exp = 6},
	[203] = { monsterID = 203, monsterName = "小石头怪", avatar = "mon05", scale = 2, moveSpeed = 2.3, bodyMass = 5, animState = "Animation_char", stateLogic = "monster_act_rockmon5", aiLogic = "monster_rock_mon05", weaponID = 1007, skills = {1000004}, attack = 200, maxHP = 900, bodyHit = 200, critRate = 0, missRate = 0, exp = 8},
	[301] = { monsterID = 301, monsterName = "盒子怪人", avatar = "box_man", scale = nil, moveSpeed = 2.2, bodyMass = 2, animState = "Animation_char", stateLogic = "guai", aiLogic = "monster_boxman", weaponID = 1000, skills = nil, attack = 200, maxHP = 1000, bodyHit = 300, critRate = 0, missRate = 0, exp = 8},
	[302] = { monsterID = 302, monsterName = "青蛙人", avatar = "fogaman", scale = nil, moveSpeed = 2.2, bodyMass = 2, animState = "Animation_char", stateLogic = "guai", aiLogic = "monster_fogaman", weaponID = 1000, skills = nil, attack = 200, maxHP = 1000, bodyHit = 300, critRate = 0, missRate = 0, exp = 8},
	[303] = { monsterID = 303, monsterName = "黑斧头", avatar = "greenwar", scale = nil, moveSpeed = 2, bodyMass = 3, animState = "Animation_char", stateLogic = "monster_act_greenwar", aiLogic = "monster_greenwar", weaponID = 1000, skills = nil, attack = 200, maxHP = 1500, bodyHit = 300, critRate = 0, missRate = 0, exp = 10},
	[305] = { monsterID = 305, monsterName = "十字军骑士", avatar = "knight", scale = nil, moveSpeed = 2.3, bodyMass = 5, animState = "Animation_char", stateLogic = "guai", aiLogic = "monster_knight", weaponID = 1000, skills = nil, attack = 200, maxHP = 1600, bodyHit = 300, critRate = 0, missRate = 0, exp = 12},
	[309] = { monsterID = 309, monsterName = "警察", avatar = "police", scale = nil, moveSpeed = 2.5, bodyMass = 3, animState = "Animation_char", stateLogic = "guai", aiLogic = "monster_police", weaponID = 1000, skills = nil, attack = 200, maxHP = 1200, bodyHit = 300, critRate = 0, missRate = 0, exp = 12},
	[310] = { monsterID = 310, monsterName = "铠甲枪兵", avatar = "roman", scale = nil, moveSpeed = 1.8, bodyMass = 5, animState = "Animation_char", stateLogic = "monster_act_roman", aiLogic = "monster_roman", weaponID = 1000, skills = nil, attack = 200, maxHP = 1900, bodyHit = 300, critRate = 0, missRate = 0, exp = 12},
	[314] = { monsterID = 314, monsterName = "僵尸", avatar = "surgeon_zombie", scale = nil, moveSpeed = 2, bodyMass = 3, animState = "Animation_char", stateLogic = "monster_act_zombie", aiLogic = "monster_zombie", weaponID = 1000, skills = nil, attack = 200, maxHP = 1000, bodyHit = 300, critRate = 0, missRate = 0, exp = 8},
	[319] = { monsterID = 319, monsterName = "斧头兵", avatar = "warrior", scale = nil, moveSpeed = 1.8, bodyMass = 5, animState = "Animation_char", stateLogic = "monster_act_warriorAXE", aiLogic = "monster_warrior_axe", weaponID = 1000, skills = nil, attack = 200, maxHP = 1200, bodyHit = 300, critRate = 0, missRate = 0, exp = 8},
	[5102] = { monsterID = 5102, monsterName = "boss_蘑菇妹", avatar = "magic_plant", scale = 1.5, moveSpeed = 3, bodyMass = 10, animState = "Animation_char", stateLogic = "monster_act_magic_plant", aiLogic = "boss_magic_plant", weaponID = 2005, skills = nil, attack = 200, maxHP = 10000, bodyHit = 300, critRate = 0, missRate = 0, exp = 30},
	[5103] = { monsterID = 5103, monsterName = "boss_老国王", avatar = "king", scale = 1.5, moveSpeed = 3, bodyMass = 10, animState = "Animation_char", stateLogic = "boss_act_king", aiLogic = "boss_king", weaponID = 2011, skills = {1000004,2000001}, attack = 200, maxHP = 10000, bodyHit = 300, critRate = 0, missRate = 0, exp = 30},
	[5105] = { monsterID = 5105, monsterName = "boss_大法师", avatar = "wizard", scale = 1.5, moveSpeed = 4, bodyMass = 10, animState = "Animation_char", stateLogic = "monster_act_wizard", aiLogic = "boss_wizard", weaponID = 2020, skills = nil, attack = 200, maxHP = 10000, bodyHit = 300, critRate = 0, missRate = 0, exp = 30},
	[5104] = { monsterID = 5104, monsterName = "boss_黑男巫", avatar = "shaman", scale = 1.5, moveSpeed = 4, bodyMass = 10, animState = "Animation_char_shaman", stateLogic = "boss_act_shaman", aiLogic = "boss_shaman", weaponID = 2015, skills = {2000035}, attack = 200, maxHP = 10000, bodyHit = 300, critRate = 0, missRate = 0, exp = 30},
	[5106] = { monsterID = 5106, monsterName = "boss_海盗", avatar = "pirate", scale = 1.5, moveSpeed = 4, bodyMass = 10, animState = "Animation_char_pirate", stateLogic = "boss_act_pirate", aiLogic = "boss_pirate", weaponID = 1005, skills = {2000035}, attack = 200, maxHP = 10000, bodyHit = 300, critRate = 0, missRate = 0, exp = 30},
	[5107] = { monsterID = 5107, monsterName = "boss_死神", avatar = "undeath_2", scale = 1.5, moveSpeed = 4, bodyMass = 10, animState = "Animation_char", stateLogic = "boss_act_undeath", aiLogic = "boss_undeath", weaponID = 1009, skills = {1000006,1000008}, attack = 200, maxHP = 10000, bodyHit = 300, critRate = 0, missRate = 0, exp = 30}
}