
execute at @e[type=minecraft:text_display,tag=EtiAufTraS.2Auftrag,name="wahr"] run particle minecraft:happy_villager ~ ~-1 ~ 0.2 0.2 0.2 0.1 1 force @a[distance=..10]

execute as @a[scores={PZAufTraS.2Antwort=0..}] at @s run function auftrag-system:v2antwort with entity @s

execute as @e[type=minecraft:interaction,tag=EtiAufTraS.2Reden] if data entity @s interaction at @s run function auftrag-system:v2reden with entity @s interaction

scoreboard players add #VarAufTraS.2Tick PZAufTraS.2Reden 1
execute if score #VarAufTraS.2Tick PZAufTraS.2Reden matches 1..9 run return 0
scoreboard players set #VarAufTraS.2Tick PZAufTraS.2Reden 0

execute as @e[type=minecraft:villager,tag=EtiAufTraS.2Reden] at @s facing entity @p[distance=..3] feet run teleport @s ~ ~ ~ ~ ~
