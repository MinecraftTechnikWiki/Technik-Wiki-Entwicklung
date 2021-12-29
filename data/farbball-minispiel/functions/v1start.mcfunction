
scoreboard objectives add PZFarBMi.1Leben dummy ["Farbball-Minispiel.1: ",{"text":"Leben","bold":true}]
scoreboard objectives add PZFarBMi.1Wert dummy ["Farbball-Minispiel.1: ",{"text":"Zeit","bold":true}]
scoreboard players set VarFarBMi.1Wartezeit PZFarBMi.1Wert -1

team add TMFarBMi.1Rot ["Farbball-Minispiel.1: ",{"text":"rote Mannschaft","color":"red","bold":true}]
team modify TMFarBMi.1Rot color dark_red
team modify TMFarBMi.1Rot friendlyFire false
team modify TMFarBMi.1Rot nametagVisibility hideForOtherTeams
team modify TMFarBMi.1Rot deathMessageVisibility never

team add TMFarBMi.1Blau ["Farbball-Minispiel.1: ",{"text":"blaue Mannschaft","color":"blue","bold":true}]
team modify TMFarBMi.1Blau color dark_blue
team modify TMFarBMi.1Blau friendlyFire false
team modify TMFarBMi.1Blau nametagVisibility hideForOtherTeams
team modify TMFarBMi.1Blau deathMessageVisibility never

summon minecraft:armor_stand ~10 ~1 ~ {NoBasePlate:true,NoGravity:true,Marker:true,Invisible:true,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["EtiFarBMi.1Alle","EtiFarBMi.1Rot","EtiFarBMi.1Beitreten","EtiFarBMi.1Farbe"],CustomNameVisible:true,CustomName:'{"text":"Beitrittsbereich für Rot","color":"red","bold":true}'}

summon minecraft:armor_stand ~-10 ~1 ~ {NoBasePlate:true,NoGravity:true,Marker:true,Invisible:true,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["EtiFarBMi.1Alle","EtiFarBMi.1Blau","EtiFarBMi.1Beitreten","EtiFarBMi.1Farbe"],CustomNameVisible:true,CustomName:'{"text":"Beitrittsbereich für Blau","color":"blue","bold":true}'}

summon minecraft:armor_stand ~ ~1 ~-10 {NoBasePlate:true,NoGravity:true,Marker:true,Invisible:true,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}],Tags:["EtiFarBMi.1Alle","EtiFarBMi.1Verlassen","EtiFarBMi.1Farbe"],CustomNameVisible:true,CustomName:'{"text":"Verlassen","color":"yellow","bold":true}'}

summon minecraft:armor_stand ~21 ~2 ~-36 {NoBasePlate:true,NoGravity:true,Small:true,Marker:true,Invisible:true,Tags:["EtiFarBMi.1Alle","EtiFarBMi.1Rot","EtiFarBMi.1Startpunkt"],CustomName:'{"text":"Spawnbereich für Rot","color":"red","bold":true}'}

summon minecraft:armor_stand ~-21 ~-2 ~-66 {NoBasePlate:true,NoGravity:true,Small:true,Marker:true,Invisible:true,Tags:["EtiFarBMi.1Alle","EtiFarBMi.1Blau","EtiFarBMi.1Startpunkt"],CustomName:'{"text":"Spawnbereich für Blau","color":"blue","bold":true}'}

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Rot] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:red_concrete replace

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Blau] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:blue_concrete replace

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Verlassen] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:white_concrete replace

summon minecraft:marker ~ ~ ~-50 {Tags:["EtiFarBMi.1Alle","EtiFarBMi.1Bauwerk","EtiFarBMi.1Spielfeld"]}
execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-1,name:"farbball-minispiel:v1gebiet1"} replace
execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run setblock ~-1 ~ ~ minecraft:structure_block{mode:"LOAD",posX:-30,posY:0,posZ:0,name:"farbball-minispiel:v1gebiet2"} replace

execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run setblock ~ ~ ~-2 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:0,posY:0,posZ:1,name:"farbball-minispiel:v1gebiet1"} replace
execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run setblock ~1 ~ ~-2 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:30,posY:0,posZ:0,name:"farbball-minispiel:v1gebiet2"} replace

execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run fill ~-2 ~ ~ ~2 ~ ~-2 minecraft:redstone_block replace minecraft:air

forceload add ~ ~
