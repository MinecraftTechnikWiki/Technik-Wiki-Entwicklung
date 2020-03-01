# Das Gleisbett, samt Gleisen wird in Blickrichtung des Gleisbaumaschines platziert
fill ^3 ^2 ^ ^-3 ^8 ^ minecraft:light_gray_stained_glass replace minecraft:cave_air
fill ^2 ^2 ^1 ^-2 ^7 ^ minecraft:air replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Beton,sort=nearest,limit=3] rotated ~ 0 run setblock ~ ~ ~ minecraft:gray_concrete replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Quarz,sort=nearest,limit=2] rotated ~ 0 run setblock ~ ~ ~ minecraft:smooth_quartz replace

# Der Gleisbaumaschine wird einen Block nach vorne teleportiert und es wird geprüft ob sie noch auf festen Untergrund steht, falls nicht, wird sie entsprechend neu positioniert
execute rotated ~ 0 as @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Segment,sort=nearest,limit=6] positioned as @s run teleport @s ^ ^ ^1
execute at @s rotated ~ 0 unless block ^ ^ ^2 minecraft:air as @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Segment,sort=nearest,limit=6] positioned as @s run teleport @s ~ ~1 ~
execute at @s rotated ~ 0 if block ^ ^-1 ^2 minecraft:air as @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Segment,sort=nearest,limit=6] positioned as @s run teleport @s ~ ~-1 ~

tag @s[scores={PZStraB.1Schl=..1}] remove EtiStraB.1StrasseBauen
scoreboard players remove @s PZStraB.1Brenn 1
scoreboard players remove @s PZStraB.1Schl 1
