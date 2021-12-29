
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

summon minecraft:marker ~ ~ ~-30 {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Bauwerk","EtiGildSMS.1Spielfeld"]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-23,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1gebiet1"} replace
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run setblock ~1 ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:0,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1gebiet2"} replace
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run setblock ~2 ~ ~-1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:23,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1gebiet1"} replace
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run setblock ~1 ~ ~-1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:0,posY:0,posZ:0,name:"gildenschlacht-minispiel:v1gebiet2"} replace

summon minecraft:armor_stand ~ ~ ~10 {Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Lobbyportal","color":"dark_purple","bold":true}',Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Bauwerk","EtiGildSMS.1Wartehalle"]}
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Wartehalle,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2,name:"gildenschlacht-minispiel:v1portal"}

execute at @e[tag=EtiGildSMS.1Bauwerk,sort=nearest,limit=2] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:redstone_block replace minecraft:air

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beutetruhe"]}

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run spreadplayers ~ ~ 5 20 false @e[distance=..2,type=minecraft:marker,tag=EtiGildSMS.1Beutetruhe,sort=nearest,limit=6]
