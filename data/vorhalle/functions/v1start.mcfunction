# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZVorH.1Wert dummy ["Vorhalle.1: ",{"text":"Auslöser für Optionen","bold":true}]
scoreboard objectives add PZVorH.1Nr minecraft.custom:minecraft.leave_game ["Vorhalle.1: ",{"text":"Verlassen und Nummerierung der Spieler","bold":true}]

scoreboard players set VarVorH.1Min PZVorH.1Wert 2
scoreboard players set VarVorH.1Max PZVorH.1Wert 10

scoreboard players set KonstVorH.1ZWEI PZVorH.1Wert 2
scoreboard players set KonstVorH.1ZWANZIG PZVorH.1Wert 20

team add TMVorH.1Lobby ["Vorhalle.1: ",{"text":"Lobby","bold":true}]
team add TMVorH.1Team1 ["Vorhalle.1: ",{"text":"Mannschaft 1","color":"red","bold":true}]
team add TMVorH.1Team2 ["Vorhalle.1: ",{"text":"Mannschaft 2","color":"blue","bold":true}]
#team add TMVorH.1Team3 ["Vorhalle.1: ",{"text":"Team3","color":"green","bold":true}]
#team add TMVorH.1Team4 ["Vorhalle.1: ",{"text":"Team4","color":"yellow","bold":true}]

team modify TMVorH.1Lobby friendlyFire false

team modify TMVorH.1Lobby color white
team modify TMVorH.1Team1 color red
team modify TMVorH.1Team2 color blue
#team modify TMVorH.1Team3 color green
#team modify TMVorH.1Team4 color yellow

team modify TMVorH.1Lobby friendlyFire false
team modify TMVorH.1Team1 friendlyFire false
team modify TMVorH.1Team2 friendlyFire false
#team modify TMVorH.1Team3 friendlyFire false
#team modify TMVorH.1Team4 friendlyFire false

#give @a[distance=..25] minecraft:stick{EigVorH.1Alle:true,EigVorH.1Lobby:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Lobby","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Lobby"','"entsprechend einzustellen."'] } }

summon minecraft:armor_stand ~ ~2 ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["EtiVorH.1Alle"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:true,Invulnerable:true,CustomName:'{"text":"Optionen","color":"dark_green","bold":true}',Tags:["EtiVorH.1Alle","EtiVorH.1GUI"]},{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,Tags:["EtiVorH.1Alle"],CustomNameVisible:true,CustomName:'{"text":"Optionen","color":"dark_green","bold":true}'}]}

summon minecraft:armor_stand ~ ~1 ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["EtiVorH.1Alle","EtiVorH.1Schild"]}

summon minecraft:armor_stand ~-30 ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiVorH.1Alle","EtiVorH.1Bauwerk","EtiVorH.1Vorhalle"]}

summon minecraft:armor_stand ~10 ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiVorH.1Alle","EtiVorH.1Bauwerk","EtiVorH.1Teleporter"]}

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-10,posY:0,posZ:-10,name:"vorhalle:v1vorhalle"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Schild] run setblock ~ ~ ~ minecraft:oak_sign[rotation=12] replace

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Teleporter] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2,name:"vorhalle:v1teleporter"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Teleporter] run summon minecraft:armor_stand ~ ~3 ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Lobby","color":"yellow","bold":true}',Tags:["EtiVorH.1Alle","EtiVorH.1Tafel"]}

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Teleporter] run summon minecraft:armor_stand ~ ~2.6 ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":""}',Tags:["EtiVorH.1Alle","EtiVorH.1Belegungen"]}

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Bauwerk] run setblock ~-1 ~ ~ minecraft:redstone_block replace
