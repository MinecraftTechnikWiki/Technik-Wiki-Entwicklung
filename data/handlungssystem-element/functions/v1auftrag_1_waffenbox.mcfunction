
summon minecraft:zombie ~10 ~14 ~-65 {IsVillager:true,CustomNameVisible:true,CustomName:"{\"text\":\"Vergifteter Klaus\"}",Tags:["EtiHanSE.1Alle","EtiHanSE.1ZombieKlaus"],DeathLootTable:"chests:simple_dungeon",ArmorItems:[{},{id:"minecraft:nether_star",Count:1b,tag:{Klaus:true,display:{Name:"{\"text\":\"Übereste von Klaus\"}"} } },{id:"minecraft:apple",Count:1b,tag:{Apfelfrucht:true,display:{Name:"{\"text\":\"Apfelfrucht\"}",Lore:["Ein sehr guter Apfel,","den Klaus bestimmt","wieder haben möchte"] } } },{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.0f,1.0f,1.0f,1.0f],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[1.0f,0.0f]}

title @s title ["",{"text":"Ein Abenteuer beginnt..."}]
title @s subtitle ["",{"text":"Besiege Klaus den vergifteten Zombie","color":"yellow","bold":true}]

tag @s remove EtiHanSE.1Waffenbox
