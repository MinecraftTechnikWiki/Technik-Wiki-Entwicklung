# Das Gleisbett, samt Gleisen wird in Blickrichtung des Gleisbaumaschines platziert
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGleisB.2Gleisbett,sort=nearest,limit=2] rotated ~ 0 run fill ^2 ^2 ^ ^-2 ^4 ^ minecraft:light_gray_stained_glass replace minecraft:cave_air
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGleisB.2Gleisbett,sort=nearest,limit=2] rotated ~ 0 run fill ^1 ^2 ^ ^-1 ^3 ^ minecraft:air replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGleisB.2Gleisbett,sort=nearest,limit=2] rotated ~ 0 run setblock ~ ~ ~ minecraft:andesite replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGleisB.2Gleisspur,sort=nearest,limit=3] rotated ~ 0 run setblock ~ ~ ~ minecraft:smooth_stone replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGleisB.2Gleis,sort=nearest,limit=2] rotated ~ 0 run setblock ~ ~1 ~ minecraft:rail replace

# Die verlegten Gleise werden gezählt, damit beim 14. Gleis eine Antriebsschiene samt Oberleitung durch die aufgerufene Funktion entsteht
scoreboard players add @s PZGleisB.2Schl 1
execute if entity @s[scores={PZGleisB.2Schl=14..}] run function gleisbaumaschine:v2gleis_verlegen_2
scoreboard players set @s[scores={PZGleisB.2Schl=14..}] PZGleisB.2Schl 0

# Der Gleisbaumaschine wird einen Block nach vorne teleportiert und es wird geprüft ob er noch auf festen Untergrund steht, falls nicht, wird er entsprechend neu positioniert
execute rotated ~ 0 run teleport @s ^ ^ ^1
execute at @s rotated ~ 0 unless block ^ ^ ^1 minecraft:air unless block ^ ^ ^1 #minecraft:rails run teleport @s ~ ~1 ~
execute at @s rotated ~ 0 if block ^ ^-1 ^1 minecraft:air run teleport @s ~ ~-1 ~
execute at @s rotated ~ 0 if block ^ ^-1 ^-1 #minecraft:rails run teleport @s ~ ~-1 ~
