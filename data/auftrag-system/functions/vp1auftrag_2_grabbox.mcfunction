
execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~14 ~-50.5 {Duration:-1,Age:1,Particle:"minecraft:block minecraft:air",Tags:["EtiAufS.p1Alle","EtiAufS.p1Position"]}

execute at @e[tag=EtiAufS.p1Position] run summon minecraft:zombie ~ ~ ~ {CustomNameVisible:true,CustomName:'{"text":"Beerdiger"}',Tags:["EtiAufS.p1Alle","EtiAufS.p1Beerdiger"],DeathLootTable:"minecraft:chests/simple_dungeon",HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}],HandDropChances:[0.0f,0.0f],ArmorItems:[{id:"minecraft:nether_star",Count:1b,tag:{berndseele:true,display:{Name:'{"text":"Seele von Bernd"}'}}},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[1.0f,0.0f,0.0f,0.0f]}

execute at @e[tag=EtiAufS.p1Position] run summon minecraft:villager ~1 ~ ~ {Profession:1,CustomNameVisible:true,CustomName:'{"text":"Bernd"}',Offers:{Recipes:[]},Attributes:[{Name:"generic.movementSpeed",Base:"0.0f"}],Tags:["EtiAufS.p1Alle","EtiAufS.p1Bernd"],VillagerData:{level:2147483647},ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,1.0f]}

execute at @e[tag=EtiAufS.p1Position] run summon minecraft:villager ~12 ~ ~10 {CustomNameVisible:true,Invulnerable:true,Profession:4,CustomName:'{"text":"Martin"}',VillagerData:{level:2147483647},Offers:{Recipes:[]},Attributes:[{Name:"generic.movementSpeed",Base:"0.0f"}],Tags:["EtiAufS.p1Alle","EtiAufS.p1Martin"]}

title @s title ["",{"text":"Ein Abenteuer beginnt..."}]
title @s subtitle ["",{"text":"Beerdige Bernd","color":"yellow","bold":true}]

tag @s remove EtiAufS.p1Grabbox
