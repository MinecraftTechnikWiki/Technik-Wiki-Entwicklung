# Die Richtung wird angepasst.
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0

# Da der Rüstungsständer immer exakt 180° in die andere Richtung schaut wird er umgedreht.
execute at @s run teleport @s ~ ~ ~ ~180 0

# Der eingestellte Wert des Spielers wird kopiert.
scoreboard players operation @s PZSchwB.p1Wert = @p PZSchwB.p1Wert

# Ein Quarzblock für das Fundament der Spur wird platziert und anschließend wird die Bauwerks-Höhen-Funktion geladen.
execute at @s[tag=EtiSchwB.p1Spuren] run setblock ^ ^ ^15 minecraft:quartz_block replace
execute at @s[tag=EtiSchwB.p1Spuren] positioned ^ ^ ^15 run function schwebebahn:vp1bauwerk_hoehe

# Wenn die Station platziert werden soll, wird geprüft ob sich darunter überhaupt eine Spur befindet und nur dann wird der Konstruktionsblock dafür platziert und der Rüstungsständer erhält dann den Wert eins.
execute at @s[tag=EtiSchwB.p1Station] store success score @s PZSchwB.p1Wert if block ~ ~-1 ~ minecraft:stone_brick_stairs[half=bottom] if block ^-1 ^-1 ^ minecraft:stone_brick_stairs[half=bottom] if block ^1 ^-1 ^ minecraft:stone_brick_stairs[half=bottom] run setblock ^-20 ^-2 ^3 minecraft:structure_block{mode:"LOAD",name:"schwebebahn:vp1station",posY:0} replace

# Je nach Blickrichtung des Rüstungsständers werden die benötigten Daten in den Konstruktionsblock gespeichert.
execute at @s[tag=EtiSchwB.p1Station,scores={PZSchwB.p1Wert=1},y_rotation=-135..-45] run data merge block ^-20 ^-2 ^3 {rotation:"NONE",posX:0,posZ:-40}
execute at @s[tag=EtiSchwB.p1Station,scores={PZSchwB.p1Wert=1},y_rotation=-45..45] run data merge block ^-20 ^-2 ^3 {rotation:"CLOCKWISE_90",posX:40,posZ:0}
execute at @s[tag=EtiSchwB.p1Station,scores={PZSchwB.p1Wert=1},y_rotation=45..135] run data merge block ^-20 ^-2 ^3 {rotation:"CLOCKWISE_180",posX:0,posZ:40}
execute at @s[tag=EtiSchwB.p1Station,scores={PZSchwB.p1Wert=1},y_rotation=135..-135] run data merge block ^-20 ^-2 ^3 {rotation:"COUNTERCLOCKWISE_90",posX:-40,posZ:0}

# Nur wenn der Konstruktionsblock platziert werden konnte, wird ein Redstone-Block daneben platziert um diesen zu aktivieren.
execute at @s[tag=EtiSchwB.p1Station,scores={PZSchwB.p1Wert=1}] run setblock ^-20 ^-1 ^3 minecraft:redstone_block replace

# Es wird eine rote Netherziegelstufe platziert, sodass die Bahn dort hält.
execute at @s[tag=EtiSchwB.p1Station,scores={PZSchwB.p1Wert=1}] run setblock ~ ~-1 ~ minecraft:red_nether_brick_slab replace

# Falls keine Spur gefunden wurde um die Station zu platzieren, wird eine Fehlermeldung ausgegeben.
execute at @s[tag=EtiSchwB.p1Station] unless entity @s[scores={PZSchwB.p1Wert=1}] run tellraw @a[distance=..5] ["Schwebebahn.erweitert.1:\n",{"text":"Unter dem Rüstungsständer wurde keine Spur gefunden!","color":"red","bold":true}]

# Der Rüstungsständer wird anschließend gelöscht.
kill @s
