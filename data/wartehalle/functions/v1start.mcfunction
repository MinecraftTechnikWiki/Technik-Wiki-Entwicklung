# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZWartH.1Wert dummy ["Wartehalle.1: ",{"text":"Auslöser für Optionen","bold":true}]
scoreboard objectives add PZWartH.1Nr minecraft.custom:minecraft.leave_game ["Wartehalle.1: ",{"text":"Verlassen und Nummerierung der Spieler","bold":true}]

scoreboard players set VarWartH.1Min PZWartH.1Wert 2
scoreboard players set VarWartH.1Max PZWartH.1Wert 10

scoreboard players set KonstWartH.1ZWEI PZWartH.1Wert 2
scoreboard players set KonstWartH.1ZWANZIG PZWartH.1Wert 20

team add TMWartH.1Lobby ["Wartehalle.1: ",{"text":"Lobby","bold":true}]
team add TMWartH.1Team1 ["Wartehalle.1: ",{"text":"Mannschaft 1","color":"red","bold":true}]
team add TMWartH.1Team2 ["Wartehalle.1: ",{"text":"Mannschaft 2","color":"blue","bold":true}]
#team add TMWartH.1Team3 ["Wartehalle.1: ",{"text":"Team3","color":"green","bold":true}]
#team add TMWartH.1Team4 ["Wartehalle.1: ",{"text":"Team4","color":"yellow","bold":true}]

team modify TMWartH.1Lobby friendlyFire false

team modify TMWartH.1Lobby color white
team modify TMWartH.1Team1 color red
team modify TMWartH.1Team2 color blue
#team modify TMWartH.1Team3 color green
#team modify TMWartH.1Team4 color yellow

team modify TMWartH.1Lobby friendlyFire false
team modify TMWartH.1Team1 friendlyFire false
team modify TMWartH.1Team2 friendlyFire false
#team modify TMWartH.1Team3 friendlyFire false
#team modify TMWartH.1Team4 friendlyFire false

#give @a[distance=..15] minecraft:stick{EigWartH.1Alle:true,EigWartH.1Lobby:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Lobby","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Lobby"','"entsprechend einzustellen."'] } }

summon minecraft:armor_stand ~ ~2 ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["EtiWartH.1Alle"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:true,Invulnerable:true,CustomName:'{"text":"Optionen","color":"dark_green","bold":true}',Tags:["EtiWartH.1Alle","EtiWartH.1GUI"]},{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,Tags:["EtiWartH.1Alle"],CustomNameVisible:true,CustomName:'{"text":"Optionen","color":"dark_green","bold":true}'}]}

summon minecraft:armor_stand ~ ~1 ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["EtiWartH.1Alle","EtiWartH.1Schild"]}

summon minecraft:armor_stand ~-30 ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiWartH.1Alle","EtiWartH.1Bauwerk","EtiWartH.1Wartehalle"]}

summon minecraft:armor_stand ~10 ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiWartH.1Alle","EtiWartH.1Bauwerk","EtiWartH.1Teleporter"]}

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-10,posY:0,posZ:-10,name:"wartehalle:v1wartehalle"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Schild] run setblock ~ ~ ~ minecraft:oak_sign[rotation=12] replace

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Teleporter] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2,name:"wartehalle:v1teleporter"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Teleporter] run summon minecraft:armor_stand ~ ~3 ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Lobby","color":"yellow","bold":true}',Tags:["EtiWartH.1Alle","EtiWartH.1Tafel"]}

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Teleporter] run summon minecraft:armor_stand ~ ~2.6 ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":""}',Tags:["EtiWartH.1Alle","EtiWartH.1Belegungen"]}

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Bauwerk] run setblock ~-1 ~ ~ minecraft:redstone_block replace
