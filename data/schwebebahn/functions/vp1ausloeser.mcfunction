
execute if entity @s[scores={PZSchwB.p1Ausl=3}] run teleport @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid,sort=nearest,limit=1] ~ ~ ~ ~180 ~
scoreboard players set @s[scores={PZSchwB.p1Ausl=3}] PZSchwB.p1Ausl 2

execute if entity @s[scores={PZSchwB.p1Ausl=1}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Fahren,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}

execute if entity @s[tag=!EtiSchwB.p1SitztInLore] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Fahren,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}
execute if entity @s[scores={PZSchwB.p1Ausl=2}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Fahren,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

execute unless entity @s[tag=EtiSchwB.p1SitztInLore,scores={PZSchwB.p1Ausl=0}] run tellraw @s ["Schwebebahn.erweitert.1: ",{"text":"\nfahren = ","bold":true},{"text":"wahr","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Wert wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 1"} },{"text":"\nfahren = ","bold":true},{"text":"falsch","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Wert falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 2"} },{"text":"\nfahren == ","bold":true},{"entity":"@e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Fahren,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"text":"\nrichtungumkehren() == ","bold":true},{"text":"180°","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um den Zug umzudrehen"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 3"} }]

execute unless entity @s[scores={PZSchwB.p1Ausl=0}] run scoreboard players enable @s PZSchwB.p1Ausl
execute unless entity @s[scores={PZSchwB.p1Ausl=0}] run scoreboard players set @s PZSchwB.p1Ausl 0

tag @s add EtiSchwB.p1SitztInLore

execute as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Fahren,y_rotation=-135..135,name="wahr",sort=nearest,limit=1] unless entity @s[y_rotation=-45..45] at @s positioned ^ ^-1 ^22 if block ~ ~ ~ minecraft:air if block ^ ^-1 ^ minecraft:diorite_stairs[half=bottom] if block ^1 ^-1 ^ minecraft:polished_diorite_stairs[half=top] if block ^-1 ^-1 ^ minecraft:polished_diorite_stairs[half=top] positioned ^ ^ ^-22 positioned ~-20 ~ ~-1 as @e[dx=39,dy=3,dz=3,tag=!EtiSchwB.p1Sitz,tag=!EtiSchwB.p1SitztInLore] positioned as @s run teleport @s ^ ^ ^1

execute as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Fahren,y_rotation=135..45,name="wahr",sort=nearest,limit=1] unless entity @s[y_rotation=-135..-45] at @s positioned ^ ^-1 ^22 if block ~ ~ ~ minecraft:air if block ^ ^-1 ^ minecraft:diorite_stairs[half=bottom] if block ^1 ^-1 ^ minecraft:polished_diorite_stairs[half=top] if block ^-1 ^-1 ^ minecraft:polished_diorite_stairs[half=top] positioned ^ ^ ^-22 positioned ~-1 ~ ~-20 as @e[dx=3,dy=3,dz=39,tag=!EtiSchwB.p1Sitz,tag=!EtiSchwB.p1SitztInLore] positioned as @s run teleport @s ^ ^ ^1

execute as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Fahren,name="wahr",sort=nearest,limit=1] run function schwebebahn:vp1transrapid
