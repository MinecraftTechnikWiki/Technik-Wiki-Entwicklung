scoreboard objectives add PBWartezeit dummy ["Farbball.1: ",{"text":""}]
scoreboard players set #PaintballWartezeit PBWartezeit -1
scoreboard objectives add PBAnzahlRot dummy ["Farbball.1: ",{"text":""}]
scoreboard objectives add PBAnzahlBlau dummy ["Farbball.1: ",{"text":""}]
scoreboard objectives add PBLeben dummy ["Farbball.1: ",{"text":""}]
scoreboard objectives add PBAlter dummy ["Farbball.1: ",{"text":""}]

team add PBTeamRot ["Farbball.1: ",{"text":"rotes Team"}]
team modify PBTeamRot color dark_red
team modify PBTeamRot friendlyFire false
team modify PBTeamRot nametagVisibility hideForOtherTeams
team modify PBTeamRot deathMessageVisibility never

team add PBTeamBlau ["Farbball.1: ",{"text":"blaues Team"}]
team modify PBTeamBlau color dark_blue
team modify PBTeamBlau friendlyFire false
team modify PBTeamBlau nametagVisibility hideForOtherTeams
team modify PBTeamBlau deathMessageVisibility never

summon minecraft:armor_stand ~10 ~1 ~ {NoBasePlate:true,NoGravity:true,Marker:true,Invisible:true,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["PaintballTeamRot","PaintballTeamBeitreten","EtiFarbB.1Farbe","EtiFarbB.1Alle"],CustomNameVisible:true,CustomName:'{"text":"Beitrittsbereich Team Rot"}'}

summon minecraft:armor_stand ~-10 ~1 ~ {NoBasePlate:true,NoGravity:true,Marker:true,Invisible:true,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["PaintballTeamBlau","PaintballTeamBeitreten","EtiFarbB.1Farbe","EtiFarbB.1Alle"],CustomNameVisible:true,CustomName:'{"text":"Beitrittsbereich Team Blau"}'}

summon minecraft:armor_stand ~ ~1 ~-10 {NoBasePlate:true,NoGravity:true,Marker:true,Invisible:true,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}],Tags:["PaintballVerlassen","EtiFarbB.1Farbe","EtiFarbB.1Alle"],CustomNameVisible:true,CustomName:'{"text":"PaintballVerlassen"}'}

summon minecraft:armor_stand ~21 ~2 ~-36 {NoBasePlate:true,NoGravity:true,Small:true,Marker:true,Invisible:true,Tags:["PaintballTeamRot","PaintballTeamStartpunkt","EtiFarbB.1Alle"],CustomName:'{"text":"Spawnbereich Team Rot"}'}

summon minecraft:armor_stand ~-21 ~-2 ~-66 {NoBasePlate:true,NoGravity:true,Small:true,Marker:true,Invisible:true,Tags:["PaintballTeamBlau","PaintballTeamStartpunkt","EtiFarbB.1Alle"],CustomName:'{"text":"Spawnbereich Team Blau"}'}

execute at @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamRot] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:red_concrete replace

execute at @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamBlau] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:blue_concrete replace

execute at @e[type=minecraft:armor_stand,tag=PaintballVerlassen] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:white_concrete replace

setblock ~ ~ ~-50 minecraft:structure_block{mode:"LOAD",mirror:"NONE",rotation:"NONE",posX:0,posY:0,posZ:-1,name:"farbball-minispiel:farbball_gebiet1"} replace
setblock ~-1 ~ ~-50 minecraft:structure_block{mode:"LOAD",mirror:"NONE",rotation:"NONE",posX:-30,posY:0,posZ:0,name:"farbball-minispiel:farbball_gebiet2"} replace

setblock ~ ~ ~-52 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:0,posY:0,posZ:1,name:"farbball-minispiel:farbball_gebiet1"} replace
setblock ~1 ~ ~-52 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:30,posY:0,posZ:0,name:"farbball-minispiel:farbball_gebiet2"} replace

fill ~-2 ~ ~-49 ~2 ~ ~-53 minecraft:redstone_block replace minecraft:air

forceload add ~ ~
