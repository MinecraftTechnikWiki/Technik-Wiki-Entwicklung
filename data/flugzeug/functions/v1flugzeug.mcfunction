# Bevor das Flugzeug in die neue Richtung bewegt wird, werden Akaziendruckplatten durch Luft ersetzt, die beim normalen Ersetzen droppen würden.
fill ~15 ~15 ~15 ~-15 ~-4 ~-15 minecraft:air replace minecraft:acacia_pressure_plate

# Wenn der Spieler das Flugzeug um 90° oder 180° dreht würden manche Teile davon weiterhin in der Luft bleiben, diese werden überprüft und entfernt
execute rotated ~ 0 run fill ^-1 ^-1 ^-15 ^1 ^4 ^-18 minecraft:air replace

execute rotated ~ 0 if block ^11 ^ ^ minecraft:white_concrete run fill ^3 ^-2 ^-3 ^15 ^4 ^10 minecraft:air replace
execute rotated ~ 0 if block ^-11 ^ ^ minecraft:white_concrete run fill ^-3 ^-2 ^-3 ^-15 ^4 ^10 minecraft:air replace

execute rotated ~ 0 if block ^ ^-1 ^5 minecraft:white_concrete run fill ^-7 ^-2 ^5 ^7 ^4 ^15 minecraft:air replace

# Der Flugzeug-Rüstungsständer wie auch der Spieler werden von ihrer Position je nach Neigung entsprechend nach vorne teleportiert.
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,name="Oben"] run teleport @s ^ ^1 ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,name="Oben"] run teleport @p[distance=..10,team=TMFlugz.1Pilot] ~ ~ ~

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,name="Geradeaus"] rotated ~ 0 run teleport @s ^ ^ ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,name="Geradeaus"] rotated ~ 0 run teleport @p[distance=..10,team=TMFlugz.1Pilot] ^ ^ ^1

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,name="Unten"] run teleport @s ^ ^-1 ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,name="Unten"] run teleport @p[distance=..10,team=TMFlugz.1Pilot] ~ ~ ~

# Je nach Name des Rüstungsständers, welcher von dem Blickwinkel abhängt, wird ein Konstruktionsblock mit entsprechender Rotation platziert
execute if entity @s[name="Osten"] run setblock ~ ~-2 ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-14,posY:0,posZ:-10,name:"flugzeug:v1flugzeug"} replace
execute if entity @s[name="Süden"] run setblock ~ ~-2 ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:10,posY:0,posZ:-14,name:"flugzeug:v1flugzeug"} replace
execute if entity @s[name="Westen"] run setblock ~ ~-2 ~ minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:14,posY:0,posZ:10,name:"flugzeug:v1flugzeug"} replace
execute if entity @s[name="Norden"] run setblock ~ ~-2 ~ minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-10,posY:0,posZ:14,name:"flugzeug:v1flugzeug"} replace

# Neben dem Konstruktionsblock wird ein Redstone-Block platziert um diesen zu aktivieren
setblock ~1 ~-2 ~ minecraft:redstone_block replace
