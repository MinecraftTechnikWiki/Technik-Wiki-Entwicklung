
team add TMMiniSS.1Rot ["Minispiel-System.1: ",{"text":"Rote Gilde","bold":true}]
team modify TMMiniSS.1Rot color red
bossbar add minispiel-system:v1teamrot ["",{"text":"Rote Gilde","bold":true}]
bossbar set minispiel-system:v1teamrot color red

team add TMMiniSS.1Blau ["Minispiel-System.1: ",{"text":"Blaue Gilde","bold":true}]
team modify TMMiniSS.1Blau color blue
bossbar add minispiel-system:v1teamblau ["",{"text":"Blaue Gilde","bold":true}]
bossbar set minispiel-system:v1teamblau color blue

scoreboard objectives add PZMiniSS.1Spiel dummy ["Minispiel-System.1: ",{"text":"Spielzeit","bold":true}]
bossbar add minispiel-system:v1lobbyzeit ["",{"text":"Zeit bis zum Spielstart","bold":true}]
bossbar set minispiel-system:v1lobbyzeit color white
bossbar set minispiel-system:v1lobbyzeit visible true
bossbar set minispiel-system:v1lobbyzeit max 30

scoreboard objectives add PZMiniSS.1Verl minecraft.dropped:minecraft.red_bed ["Minispiel-System.1: ",{"text":"Spiel verlassen","bold":true}]
scoreboard objectives add PZMiniSS.1Tod deathCount ["Minispiel-System.1: ",{"text":"Tode","bold":true}]

summon minecraft:armor_stand ~ ~ ~-30 {Invisible:true,NoGravity:true,Tags:["EtiMiniSS.1Alle","EtiMiniSS.1Spielfeld"]}
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-23,posY:0,posZ:0,name:"minispiel-system:v1teil1"}
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run setblock ~1 ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:0,name:"minispiel-system:v1teil2"}
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run setblock ~1 ~ ~-1 minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-24,name:"minispiel-system:v1teil3"}
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run setblock ~ ~ ~-1 minecraft:structure_block{mode:"LOAD",posX:-23,posY:0,posZ:-24,name:"minispiel-system:v1teil4"}

summon minecraft:armor_stand ~ ~ ~10 {Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Lobbyportal\",\"color\":\"dark_purple\",\"bold\":true}",Tags:["EtiMiniSS.1Alle","EtiMiniSS.1Lobbyportal"]}
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Lobbyportal] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2,sizeX:5,sizeY:1,sizeZ:5,name:"minispiel-system:v1lobbyportal"}

execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Alle] run fill ~1 ~ ~1 ~-2 ~ ~-2 minecraft:redstone_block replace minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run summon minecraft:falling_block ~ ~ ~ {Time:0,Tags:["EtiMiniSS.1Alle"],Passengers:[{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiMiniSS.1Alle","EtiMiniSS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiMiniSS.1Alle","EtiMiniSS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiMiniSS.1Alle","EtiMiniSS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiMiniSS.1Alle","EtiMiniSS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiMiniSS.1Alle","EtiMiniSS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiMiniSS.1Alle","EtiMiniSS.1Beutetruhe"]}]}
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run spreadplayers ~ ~ 0 15 false @e[distance=..2,type=minecraft:armor_stand,tag=EtiMiniSS.1Beutetruhe]
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Beutetruhe] run setblock ~ ~ ~ minecraft:chest{LootTable:"minispiel-system:v1truhen"} replace
