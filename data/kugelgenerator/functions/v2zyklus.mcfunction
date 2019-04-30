
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.2Hor=0}] run scoreboard players enable @s PZKugelG.2Hor
execute if entity @a[distance=..150,scores={PZKugelG.2Hor=1}] run scoreboard players add VarKugelG.2Variante PZKugelG.2Hor 1
execute if entity @a[distance=..150,scores={PZKugelG.2Hor=1}] if score VarKugelG.2Variante PZKugelG.2Hor matches 4.. run scoreboard players set VarKugelG.2Variante PZKugelG.2Hor 1
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.2Hor=0}] at @s run tellraw @a[distance=..25] ["Speicherzelle.1: ",{"text":"\nKugelvariante = ","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Tippe um die Variante zu wechseln"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.2Hor set 1"} },{"score":{"name":"VarKugelG.2Variante","objective":"PZKugelG.2Hor"},"bold":true}]
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.2Hor=0}] run scoreboard players set @s PZKugelG.2Hor 0

execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Hor=1..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.2Erstellen] at @s run function kugelgenerator:v2erstellen

execute at @e[type=armor_stand,tag=EtiKugelG.2Flamme] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

execute if score VarKugelG.2Variante PZKugelG.2Hor matches 1 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Hor=0..}] at @e[distance=2..3,type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt
execute if score VarKugelG.2Variante PZKugelG.2Hor matches 2 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Hor=0..}] at @e[distance=3..4,type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt
execute if score VarKugelG.2Variante PZKugelG.2Hor matches 3 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Hor=0..}] at @e[distance=4..5,type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt
execute as @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] at @s run teleport @s ~-1 ~ ~
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern] PZKugelG.2Hor 1
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Hor=11..}] PZKugelG.2Vert 1

execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Vert=11..}] run tellraw @a[distance=..50] ["Kugelgenerator.2: ",{"text":"Kugel generiert","bold":true}]

execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Hor=11..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] at @s run teleport @s ~11 ~1 ~
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Vert=11..}] run kill @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kugel]

tag @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Vert=11..}] remove EtiKugelG.2Kern

scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kern,scores={PZKugelG.2Hor=11..}] PZKugelG.2Hor 0
