
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.3Hor=0}] run scoreboard players enable @s PZKugelG.3Hor
execute if entity @a[distance=..150,scores={PZKugelG.3Hor=1}] run scoreboard players add VarKugelG.3Groesse PZKugelG.3Hor 1
execute if entity @a[distance=..150,scores={PZKugelG.3Hor=1}] if score VarKugelG.3Groesse PZKugelG.3Hor matches 25.. run scoreboard players set VarKugelG.3Groesse PZKugelG.3Hor 1
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.3Hor=0}] at @s run tellraw @a[distance=..25] ["Speicherzelle.1: ",{"text":"\nKugelvariante = ","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Tippe um die Variante zu wechseln"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 1"} },{"score":{"name":"VarKugelG.3Groesse","objective":"PZKugelG.3Hor"},"bold":true}]
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.3Hor=0}] run scoreboard players set @s PZKugelG.3Hor 0

execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kern,scores={PZKugelG.3Hor=1..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.3Erstellen] at @s run function kugelgenerator:v3erstellen

execute at @e[type=armor_stand,tag=EtiKugelG.3Flamme] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

execute as @e[type=armor_stand,tag=EtiKugelG.3Kern] at @s run function kugelgenerator:v3kugel

execute as @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kugel] at @s run teleport @s ~-1 ~ ~
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kern] PZKugelG.3Hor 1
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kern,scores={PZKugelG.3Hor=25..}] PZKugelG.3Vert 1

execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kern,scores={PZKugelG.3Vert=25..}] run tellraw @a[distance=..100] ["Kugelgenerator.3: ",{"text":"Kugel generiert","bold":true}]

execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kern,scores={PZKugelG.3Hor=25..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kugel] at @s run teleport @s ~25 ~1 ~
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kern,scores={PZKugelG.3Vert=25..}] run kill @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kugel]

tag @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kern,scores={PZKugelG.3Vert=25..}] remove EtiKugelG.3Kern

scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kern,scores={PZKugelG.3Hor=25..}] PZKugelG.3Hor 0
