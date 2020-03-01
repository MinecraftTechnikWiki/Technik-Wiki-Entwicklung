# Bevor das Luftschiff in die neue Richtung bewegt wird, werden alle Blöcke durch Luft ersetzt, die beim normalen Ersetzen droppen würden
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace #luftschiff:v2drop-bloecke

# Wenn der Spieler das Luftschiff um 90° oder 180° dreht, würden manche Teile davon weiterhin in der Luft bleiben, diese werden überprüft und entfernt
execute rotated ~ 0 run fill ^-4 ^1 ^-15 ^4 ^15 ^-18 minecraft:air replace
execute rotated ~ 0 unless block ^11 ^3 ^-1 minecraft:air run fill ^11 ^1 ^4 ^17 ^15 ^-6 minecraft:air replace
execute rotated ~ 0 unless block ^-11 ^3 ^-1 minecraft:air run fill ^-11 ^1 ^4 ^-17 ^15 ^-6 minecraft:air replace

# Wenn der spieler nach oben oder unten geschaut hat, während er das Luftschiff in eine Richtung bewegt hatte, so wird dieser, wie auch der Luftschiff-Rüstungsständer in die Richtung mit teleportiert
execute as @e[distance=..2,type=minecraft:armor_stand,tag=EtiLuftS.2Neigung,name=!"Geradeaus"] run tellraw @p[distance=..1.5,team=TMLuftS.2Pilot,tag=EtiLuftS.2Steuer] ["Luftschiff.2: ",{"selector":"@s"}]
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiLuftS.2Neigung,name="Oben"] as @p[distance=..1.5,team=TMLuftS.2Pilot,tag=EtiLuftS.2Steuer] at @s run teleport @s ~ ~1 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiLuftS.2Neigung,name="Oben"] run teleport @s ~ ~1 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiLuftS.2Neigung,name="Unten"] as @p[distance=..1.5,team=TMLuftS.2Pilot,tag=EtiLuftS.2Steuer] at @s run teleport @s ~ ~-1 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiLuftS.2Neigung,name="Unten"] run teleport @s ~ ~-1 ~

# Je nach Blickrichtung des Spielers wird ein Konstruktionsblock mit entsprechender Rotation platziert
execute at @s if entity @s[name="Westen"] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-17,posY:0,posZ:-10,name:"luftschiff:v2luftschiff"} replace
execute at @s if entity @s[name="Norden"] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:10,posY:0,posZ:-17,name:"luftschiff:v2luftschiff"} replace
execute at @s if entity @s[name="Osten"] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:17,posY:0,posZ:10,name:"luftschiff:v2luftschiff"} replace
execute at @s if entity @s[name="Süden"] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-10,posY:0,posZ:17,name:"luftschiff:v2luftschiff"} replace

# Neben dem Konstruktionsblock wird ein Redstone-Block platziert um diesen zu aktivieren
execute at @s run setblock ~ ~-3 ~1 minecraft:redstone_block replace
