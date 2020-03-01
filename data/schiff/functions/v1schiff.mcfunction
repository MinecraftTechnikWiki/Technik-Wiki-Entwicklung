# Bevor das Luftschiff in die neue Richtung bewegt wird, werden alle Blöcke durch Luft ersetzt, die beim normalen Ersetzen droppen würden
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace #schiff:v1drop-bloecke

# Wenn der Spieler das Luftschiff um 90° oder 180° dreht, würden manche Teile davon weiterhin in der Luft bleiben, diese werden überprüft und entfernt
execute rotated ~ 0 run fill ^-10 ^-1 ^-11 ^10 ^14 ^-14 minecraft:air replace
execute rotated ~ 0 if block ^13 ^1 ^ minecraft:spruce_planks run fill ^13 ^1 ^-1 ^14 ^2 ^1 minecraft:air replace
execute rotated ~ 0 if block ^-13 ^1 ^ minecraft:spruce_planks run fill ^-13 ^1 ^-1 ^-14 ^2 ^1 minecraft:air replace

# Der Luftschiff-Rüstungsständer wie auch der Spieler werden von ihrer Position um einen Meter nach vorne teleportiert.
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchiff.1Neigung,name="Oben"] run teleport @s ~ ~1 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchiff.1Neigung,name="Geradeaus"] rotated ~ 0 run teleport @s ^ ^ ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchiff.1Neigung,name="Unten"] run teleport @s ~ ~-1 ~
execute rotated ~ 0 run teleport @p[distance=..10,team=TMSchiff.1Kap] ^ ^ ^1

# Je nach Blickrichtung des Spielers wird ein Konstruktionsblock mit entsprechender Rotation platziert
execute if entity @s[name="Westen"] run setblock ~ ~-4 ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-15,posY:0,posZ:-6,name:"schiff:v1schiff"} replace
execute if entity @s[name="Norden"] run setblock ~ ~-4 ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:6,posY:0,posZ:-15,name:"schiff:v1schiff"} replace
execute if entity @s[name="Osten"] run setblock ~ ~-4 ~ minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:15,posY:0,posZ:6,name:"schiff:v1schiff"} replace
execute if entity @s[name="Süden"] run setblock ~ ~-4 ~ minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-6,posY:0,posZ:15,name:"schiff:v1schiff"} replace

# Neben dem Konstruktionsblock wird ein Redstone-Block platziert um diesen zu aktivieren
setblock ~ ~-3 ~ minecraft:redstone_block replace
