
team add TMGildSMS.1Rot ["Gildenschlacht-Minispiel.1: ",{"text":"Rote Gilde","bold":true}]
team modify TMGildSMS.1Rot color red
bossbar add gildenschlacht-minispiel:v1teamrot ["",{"text":"Rote Gilde","bold":true}]
bossbar set gildenschlacht-minispiel:v1teamrot color red

team add TMGildSMS.1Blau ["Gildenschlacht-Minispiel.1: ",{"text":"Blaue Gilde","bold":true}]
team modify TMGildSMS.1Blau color blue
bossbar add gildenschlacht-minispiel:v1teamblau ["",{"text":"Blaue Gilde","bold":true}]
bossbar set gildenschlacht-minispiel:v1teamblau color blue

scoreboard objectives add PZGildSMS.1Spiel dummy ["Gildenschlacht-Minispiel.1: ",{"text":"Spielzeit","bold":true}]
bossbar add gildenschlacht-minispiel:v1lobbyzeit ["",{"text":"Zeit bis zum Spielstart","bold":true}]
bossbar set gildenschlacht-minispiel:v1lobbyzeit color white
bossbar set gildenschlacht-minispiel:v1lobbyzeit visible true
bossbar set gildenschlacht-minispiel:v1lobbyzeit max 30

scoreboard objectives add PZGildSMS.1Verl minecraft.dropped:minecraft.red_bed ["Gildenschlacht-Minispiel.1: ",{"text":"Spiel verlassen","bold":true}]
scoreboard objectives add PZGildSMS.1Tod deathCount ["Gildenschlacht-Minispiel.1: ",{"text":"Tode","bold":true}]

summon minecraft:armor_stand ~ ~ ~-30 {Invisible:true,NoGravity:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Spielfeld"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-23,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1teil1"}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run setblock ~1 ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1teil2"}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run setblock ~1 ~ ~-1 minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-24,name:"gildenschlacht-minispiel:v1teil3"}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run setblock ~ ~ ~-1 minecraft:structure_block{mode:"LOAD",posX:-23,posY:0,posZ:-24,name:"gildenschlacht-minispiel:v1teil4"}

summon minecraft:armor_stand ~ ~ ~10 {Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Lobbyportal","color":"dark_purple","bold":true}',Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Lobbyportal"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Lobbyportal] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2,sizeX:5,sizeY:1,sizeZ:5,name:"gildenschlacht-minispiel:v1lobbyportal"}

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Alle] run fill ~1 ~ ~1 ~-2 ~ ~-2 minecraft:redstone_block replace minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run summon minecraft:falling_block ~ ~ ~ {Time:0,Tags:["EtiGildSMS.1Alle"],Passengers:[{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]},{id:"minecraft:armor_stand",Invisible:true,NoGravity:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run spreadplayers ~ ~ 0 15 false @e[distance=..2,type=minecraft:armor_stand,tag=EtiGildSMS.1Beutetruhe]
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Beutetruhe] run setblock ~ ~ ~ minecraft:chest{LootTable:"gildenschlacht-minispiel:v1truhen"} replace
