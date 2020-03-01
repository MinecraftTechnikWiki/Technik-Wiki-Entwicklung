# Bevor das Flugzeug in die neue Richtung bewegt wird, werden alle Blöcke durch Luft ersetzt, die beim normalen Ersetzen droppen würden.
fill ~15 ~15 ~15 ~-15 ~-4 ~-15 minecraft:air replace #flugzeug:v2drop-bloecke

# Wenn der Spieler das Flugzeug um 90° oder 180° dreht, würden manche Teile davon weiterhin in der Luft bleiben, diese werden überprüft und entfernt.
execute rotated ~ 0 run fill ^-6 ^3 ^-22 ^6 ^9 ^-26 minecraft:air replace

execute rotated ~ 0 if block ^16 ^ ^ minecraft:red_concrete run fill ^6 ^-2 ^14 ^22 ^8 ^-6 minecraft:air replace
execute rotated ~ 0 if block ^-16 ^ ^ minecraft:red_concrete run fill ^-6 ^-2 ^14 ^-22 ^8 ^-6 minecraft:air replace

execute rotated ~ 0 if block ^ ^-1 ^7 minecraft:red_concrete run fill ^-15 ^-4 ^7 ^15 ^9 ^21 minecraft:air replace

# Der Copilot wird an die Position des Spielers teleportiert, wenn dieser in der Nähe ist und nicht in der Aussenansicht sich befindet.
execute at @p[distance=..10,team=TMFlugz.2Pilot] run teleport @e[type=minecraft:villager,tag=EtiFlugz.2PilotenSteuer] ~ ~ ~ ~ ~

# Der Flugzeug-Rüstungsständer wie auch der Spieler werden von ihrer Position, entsprechend der Neigung, um einen Meter nach vorne teleportiert
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,name="Oben"] run teleport @s ^ ^1 ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,name="Oben"] run teleport @p[distance=..10,team=TMFlugz.2Pilot] ~ ~ ~

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,name="Geradeaus"] rotated ~ 0 run teleport @s ^ ^ ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,name="Geradeaus"] rotated ~ 0 run teleport @p[distance=..10,team=TMFlugz.2Pilot] ^ ^ ^1

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,name="Unten"] run teleport @s ^ ^-1 ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,name="Unten"] run teleport @p[distance=..10,team=TMFlugz.2Pilot] ~ ~ ~

# Je nach Blickrichtung des Spielers wird ein Konstruktionsblock mit entsprechender Rotation platziert.
execute if entity @s[name="Osten"] run setblock ~ ~-4 ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-21,posY:0,posZ:-15,name:"flugzeug:v2flugzeug"} replace
execute if entity @s[name="Süden"] run setblock ~ ~-4 ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:15,posY:0,posZ:-21,name:"flugzeug:v2flugzeug"} replace
execute if entity @s[name="Westen"] run setblock ~ ~-4 ~ minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:21,posY:0,posZ:15,name:"flugzeug:v2flugzeug"} replace
execute if entity @s[name="Norden"] run setblock ~ ~-4 ~ minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-15,posY:0,posZ:21,name:"flugzeug:v2flugzeug"} replace

# Neben dem Konstruktionsblock wird ein Redstone-Block platziert um diesen zu aktivieren.
setblock ~1 ~-4 ~ minecraft:redstone_block replace
