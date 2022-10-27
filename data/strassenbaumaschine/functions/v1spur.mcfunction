# Die Baumaschine wird nach vorne bewegt und bei automatischer Neigung auch deren Richtung nach oben oder unten.
teleport @s ^ ^ ^1
data modify entity @s CustomName set from entity @s data."EigStraBM.1Neigung"
execute at @s[name="Automatisch"] unless block ^ ^ ^4 minecraft:air run teleport @s ~ ~1 ~
execute at @s[name="Automatisch"] if block ^ ^-1 ^4 minecraft:air run teleport @s ~ ~-1 ~

# Bei einer Einstellung der Neigung wird die Baumaschine entsprechend bewegt.
execute at @s[name="Oben"] run teleport @s ~ ~1 ~ ~ 0
execute at @s[name="Unten"] run teleport @s ~ ~-1 ~ ~ 0

# Befindet sich die Baumaschine unter Wasser oder unter der Erde, so wird eine Glasfassade errichtet.
execute positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,sort=nearest,limit=3] run fill ^4 ^1 ^2 ^-4 ^9 ^3 minecraft:glass replace #strassenbaumaschine:v1umwelt
execute positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,sort=nearest,limit=1] run fill ^4 ^1 ^2 ^-4 ^8 ^2 minecraft:air replace

# Wenn der Spieler eine der drei Optionen gewählt hat, die nicht geradeaus laufen, so wird ein größerer Bereich ausgehöhlt.
execute if entity @s[name=!"Geradeaus"] positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,sort=nearest,limit=3] run fill ^4 ^ ^ ^-4 ^13 ^1 minecraft:glass replace #strassenbaumaschine:v1umwelt
execute if entity @s[name=!"Geradeaus"] positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,sort=nearest,limit=1] run fill ^4 ^1 ^ ^-4 ^12 ^1 minecraft:air replace

# Ist die Zweierspur aktiv, so wird eine größere Glasfassade errichtet.
data modify entity @s CustomName set from entity @s data."EigStraBM.1Zweierspur"
execute if entity @s[name="wahr"] positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,sort=nearest,limit=3] run fill ^5 ^ ^2 ^-5 ^9 ^3 minecraft:glass replace #strassenbaumaschine:v1umwelt
execute if entity @s[name="wahr"] positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,sort=nearest,limit=1] run fill ^6 ^1 ^2 ^-6 ^8 ^2 minecraft:air replace

# Je nach Einstellung der Zweierspur wird mehr oder weniger Beton platziert.
execute if entity @s[name="falsch"] positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,sort=nearest,limit=3] run setblock ~ ~ ~ minecraft:gray_concrete replace
execute if entity @s[name="wahr"] positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,sort=nearest,limit=3] run fill ^1 ^ ^ ^-1 ^ ^ minecraft:gray_concrete replace

# Die restliche Spur wird platziert.
execute positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1SpurRand,sort=nearest,limit=2] run setblock ~ ~ ~ minecraft:quartz_block replace
execute positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1GehSteig,sort=nearest,limit=4] run setblock ~ ~ ~ minecraft:stone_brick_slab replace

# Wenn die Zweierspur aktiv ist, wird ein Punktestand bis drei gezählt und anschließend eine Strichlinie eingebaut.
execute if entity @s[name="wahr"] run scoreboard players add @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1Mitte,sort=nearest,limit=1] PZStraBM.1Wert 1
execute if entity @s[name="wahr"] positioned as @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1Mitte,scores={PZStraBM.1Wert=3..},sort=nearest,limit=1] run fill ^ ^-1 ^ ^ ^1 ^-1 minecraft:quartz_block replace minecraft:gray_concrete
execute if entity @s[name="wahr"] run scoreboard players set @e[distance=..10,type=minecraft:armor_stand,tag=EtiStraBM.1Mitte,scores={PZStraBM.1Wert=3..},sort=nearest,limit=1] PZStraBM.1Wert 0
