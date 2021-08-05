
scoreboard objectives add PZGildSMS.1Verl minecraft.dropped:minecraft.red_bed ["Gildenschlacht-Minispiel.1: ",{"text":"Spiel verlassen","bold":true}]
scoreboard objectives add PZGildSMS.1Tod deathCount ["Gildenschlacht-Minispiel.1: ",{"text":"Tode","bold":true}]

scoreboard objectives add PZGildSMS.1Spiel dummy ["Gildenschlacht-Minispiel.1: ",{"text":"Spielzeit","bold":true}]
bossbar add gildenschlacht-minispiel:v1lobbyzeit ["",{"text":"Zeit bis zum Spielstart","bold":true}]
bossbar set gildenschlacht-minispiel:v1lobbyzeit color white
bossbar set gildenschlacht-minispiel:v1lobbyzeit visible true
bossbar set gildenschlacht-minispiel:v1lobbyzeit max 30

team add TMGildSMS.1Rot ["Gildenschlacht-Minispiel.1: ",{"text":"Rote Gilde","bold":true}]
team modify TMGildSMS.1Rot color red
bossbar add gildenschlacht-minispiel:v1teamrot ["",{"text":"Rote Gilde","bold":true}]
bossbar set gildenschlacht-minispiel:v1teamrot color red

team add TMGildSMS.1Blau ["Gildenschlacht-Minispiel.1: ",{"text":"Blaue Gilde","bold":true}]
team modify TMGildSMS.1Blau color blue
bossbar add gildenschlacht-minispiel:v1teamblau ["",{"text":"Blaue Gilde","bold":true}]
bossbar set gildenschlacht-minispiel:v1teamblau color blue

summon minecraft:armor_stand ~ ~ ~-30 {Invisible:true,NoGravity:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Bauwerk","EtiGildSMS.1Spielfeld"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-23,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1gebiet1"}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run setblock ~1 ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:0,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1gebiet2"}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run setblock ~2 ~ ~-1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:23,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1gebiet1"}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run setblock ~1 ~ ~-1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:0,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1gebiet2"}

summon minecraft:armor_stand ~ ~ ~10 {Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Lobbyportal","color":"dark_purple","bold":true}',Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Bauwerk","EtiGildSMS.1Vorhalle"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Vorhalle] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2,name:"gildenschlacht-minispiel:v1portal"}

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Bauwerk] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:redstone_block replace minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run spreadplayers ~ ~ 5 20 false @e[distance=..2,type=minecraft:armor_stand,tag=EtiGildSMS.1Beutetruhe]
