
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern,scores={PZKugelG.1Hor=1..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.1Erstellen] at @s run function kugelgenerator:v1erstellen

execute at @e[type=armor_stand,tag=EtiKugelG.1Flamme] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern,scores={PZKugelG.1Hor=0..}] at @e[distance=..3,type=minecraft:armor_stand,tag=EtiKugelG.1Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt
execute as @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kugel] at @s run teleport @s ~-1 ~ ~
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern] PZKugelG.1Hor 1
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern,scores={PZKugelG.1Hor=7..}] PZKugelG.1Vert 1

execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern,scores={PZKugelG.1Vert=7..}] run tellraw @a[distance=..50] ["Kugelgenerator.1: ",{"text":"Kugel generiert","bold":true}]

execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern,scores={PZKugelG.1Hor=7..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kugel] at @s run teleport @s ~7 ~1 ~
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern,scores={PZKugelG.1Vert=7..}] run kill @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kugel]

tag @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern,scores={PZKugelG.1Vert=7..}] remove EtiKugelG.1Kern

scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKugelG.1Kern,scores={PZKugelG.1Hor=7..}] PZKugelG.1Hor 0
