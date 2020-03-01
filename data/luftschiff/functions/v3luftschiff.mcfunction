# Der Punktestand des Spielers wird wieder auf null gesetzt.
scoreboard players set @s PZLuftS.3Steuer 0

# Das Holzschwert das geworfen wurde bekommt die Eigenschaft, dass es sofort wieder aufgehoben werden kann.
data merge entity @e[distance=..3,type=item,nbt={Item:{tag:{luftschiff:"v3gegenstand"} } },sort=nearest,limit=1] {PickupDelay:0s}

# Bevor das Luftschiff in die neue Richtung bewegt wird, werden alle Blöcke durch Luft ersetzt, die beim normalen Ersetzen droppen würden.
execute at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace #luftschiff:v3drop-bloecke

# Der Luftschiff-Rüstungsständer besitzt einen Wert welcher jedes mal um eins verringert wird und immer dann wenn er null erreicht wird der Wert wieder aufgefüllt und dem Spieler wird ein Kohlestück aus dem Inventar entfernt.
scoreboard players remove @e[distance=..3,type=minecraft:armor_stand,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1,scores={PZLuftS.3Steuer=1..}] PZLuftS.3Steuer 1
execute if entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1,scores={PZLuftS.3Steuer=..0}] run clear @s minecraft:coal 1
execute as @e[distance=..3,type=minecraft:armor_stand,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1,scores={PZLuftS.3Steuer=..0}] run scoreboard players set @s PZLuftS.3Steuer 28

# Wenn der Spieler das Luftschiff um 90° oder 180° dreht würden manche Teile davon weiterhin in der Luft einige Fetzen noch sichtbar bleiben, diese werden überprüft und entfernt.
execute positioned as @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] rotated ~ 0 if block ^-7 ^5 ^ minecraft:white_wool run fill ^-7 ^-2 ^4 ^-17 ^13 ^-6 minecraft:air replace
execute positioned as @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] rotated ~ 0 if block ^7 ^5 ^ minecraft:white_wool run fill ^7 ^-2 ^4 ^17 ^13 ^-6 minecraft:air replace
execute positioned as @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] rotated ~ 0 if block ^ ^7 ^-15 minecraft:white_wool run fill ^1 ^6 ^-15 ^-1 ^10 ^-20 minecraft:air replace

# Der Luftschiff-Rüstungsständer wie auch der Spieler werden von ihrer Position um einen Meter nach vorne teleportiert.
execute rotated ~ 0 run teleport @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] ^ ^ ^1
execute rotated ~ 0 run teleport @s ^ ^ ^1

# Je nach Blickrichtung des Spielers wird ein Konstruktionsblock mit entsprechender Rotation platziert
execute if entity @s[y_rotation=45..135] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-15,posY:0,posZ:-6,name:"luftschiff:v3luftschiff"} replace
execute if entity @s[y_rotation=135..-135] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:6,posY:0,posZ:-15,name:"luftschiff:v3luftschiff"} replace
execute if entity @s[y_rotation=-135..-45] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:15,posY:0,posZ:6,name:"luftschiff:v3luftschiff"} replace
execute if entity @s[y_rotation=-45..45] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-6,posY:0,posZ:15,name:"luftschiff:v3luftschiff"} replace

# Neben dem Konstruktionsblock werden Redstone-Blöcke platziert, welche diesen aktivieren.
execute at @s[team=TMLuftS.3Pilot] run fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 minecraft:redstone_block replace
