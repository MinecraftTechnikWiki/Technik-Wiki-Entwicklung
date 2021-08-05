
scoreboard objectives remove PZTranPR.1Ausl

clear @a minecraft:armor_stand{EigTranPR.1Alle:true}

tag @a[tag=EtiTranPR.1Auswahl] remove EtiTranPR.1Auswahl
tag @a[tag=EtiTranPR.1Klempner] remove EtiTranPR.1Klempner
tag @a[tag=EtiTranPR.1Vertikal] remove EtiTranPR.1Vertikal

kill @e[type=minecraft:armor_stand,tag=EtiTranPR.1Alle]

forceload remove ~ ~

#execute as @e[distance=..50] at @s if block ~ ~1 ~ minecraft:white_stained_glass run teleport @s ~1 ~ ~
#execute as @e[distance=..50] at @s if block ~ ~1 ~ minecraft:orange_stained_glass run teleport @s ~ ~ ~1
#execute as @e[distance=..50] at @s if block ~ ~1 ~ minecraft:magenta_stained_glass run teleport @s ~ ~1 ~
#execute as @e[distance=..50] at @s if block ~ ~1 ~ minecraft:light_blue_stained_glass run teleport @s ~-1 ~ ~
#execute as @e[distance=..50] at @s if block ~ ~1 ~ minecraft:yellow_stained_glass run teleport @s ~ ~ ~-1
#execute as @e[distance=..50] at @s if block ~ ~1 ~ minecraft:lime_stained_glass run teleport @s ~ ~-1 ~
#execute at @e[distance=..50] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 minecraft:air replace minecraft:barrier
#execute as @e[distance=..50] if block ~ ~1 ~ #minecraft:impermeable run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:barrier replace minecraft:air
#execute as @e[distance=..50] at @s if block ~ ~-1 ~ minecraft:diamond_block if block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=1] run teleport @s ~ ~1.2 ~
#execute as @e[distance=..50] at @s if block ~ ~1 ~ #minecraft:impermeable run effect give @s minecraft:slow_falling 1 10 true
#execute as @a at @s if block ~ ~1 ~ #minecraft:impermeable run effect give @s minecraft:levitation 1 255 true



#execute as @a at @s rotated ~ 0 if block ^1 ^ ^1 minecraft:glass if block ^1 ^1 ^1 minecraft:glass if block ^1 ^2 ^1 minecraft:glass if blocks ^1 ^ ^1 ^1 ^2 ^1 ^-1 ^ ^1 all if block ^ ^ ^1 minecraft:glass if block ^ ^2 ^1 minecraft:glass run teleport @s ^ ^1 ^0.2
#execute as @a at @s if block ~ ~-1 ~ minecraft:glass if block ~ ~1 ~ minecraft:glass if block ^1 ^ ^ minecraft:glass if block ^-1 ^ ^ minecraft:glass run teleport @s ^ ^ ^0.2

#execute as @a anchored eyes at @s positioned ^ ^ ^ positioned ~ ~-0.5 ~ if entity @s[distance=..0.1] run say I'm in a swimming position

#execute as @a anchored eyes at @s rotated as @s positioned ~ ~-0.5 ~ if entity @s[distance=..0.1] run say I'm in a swimming position

#execute as @a anchored eyes at @s rotated ~ 0 positioned ^ ^-0.4 ^ if entity @s[distance=..0.1] run say I'm in a swimming position

#execute as @a at @s anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ if entity @s[distance=..0.1] run say I'm in a swimming position


#execute as @a at @s rotated ~ 0 if block ^1 ^ ^1 minecraft:glass if block ^1 ^1 ^1 minecraft:glass if block ^1 ^2 ^1 minecraft:glass if blocks ^1 ^ ^1 ^1 ^2 ^1 ^-1 ^ ^1 all if block ^ ^ ^1 minecraft:glass if block ^ ^2 ^1 minecraft:glass run teleport @s ^ ^1 ^0.2
#execute as @a anchored eyes at @s rotated ~ 0 positioned ^ ^-0.5 ^ if entity @s[distance=..0.1] run effect give @s minecraft:speed 1 255 false
