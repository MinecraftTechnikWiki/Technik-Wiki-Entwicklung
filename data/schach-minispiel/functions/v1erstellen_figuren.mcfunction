
scoreboard players set VarSchMS.1Rotation PZSchMS.1Brett 0
scoreboard players set VarSchMS.1Farbe PZSchMS.1Farbe 0
scoreboard players set VarSchMS.1FigurenRandPosition PZSchMS.1Brett 0
execute align xz positioned ~1.5 ~1 ~1.5 rotated 0 0 run function schach-minispiel:v1erstellen_figuren_zeilen

execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1.. run scoreboard players set VarSchMS.1Rotation PZSchMS.1Brett 1
execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1.. run scoreboard players set VarSchMS.1Farbe PZSchMS.1Farbe 1
execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1.. run scoreboard players operation VarSchMS.1FigurenRandPosition PZSchMS.1Brett = VarSchMS.1Groesse PZSchMS.1Brett
execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1.. align xz positioned ~1.5 ~1 ~1.5 rotated 90 0 run function schach-minispiel:v1erstellen_figuren_zeilen

scoreboard players set VarSchMS.1Rotation PZSchMS.1Brett 2
scoreboard players set VarSchMS.1Farbe PZSchMS.1Farbe 2
scoreboard players operation VarSchMS.1FigurenRandPosition PZSchMS.1Brett = VarSchMS.1Groesse PZSchMS.1Brett
execute align xz positioned ~1.5 ~1 ~1.5 rotated 0 0 run function schach-minispiel:v1erstellen_figuren_zeilen

execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1.. run scoreboard players set VarSchMS.1Rotation PZSchMS.1Brett 3
execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1.. run scoreboard players set VarSchMS.1Farbe PZSchMS.1Farbe 3
execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1.. run scoreboard players set VarSchMS.1FigurenRandPosition PZSchMS.1Brett 0
execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1.. align xz positioned ~1.5 ~1 ~1.5 rotated 90 0 run function schach-minispiel:v1erstellen_figuren_zeilen

execute if score VarSchMS.1Variante PZSchMS.1Brett matches 2 align xyz positioned ~18.5 ~ ~18.5 rotated 0 0 run function schach-minispiel:v1erstellen_festung

execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 as @e[tag=EtiSchMS.1Figur] run data merge entity @s {HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}}],ActiveEffects:[{Id:14b,ShowParticles:false,Duration:2147483647}]}

execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 run replaceitem entity @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Anklickbar] armor.head minecraft:leather_chestplate{Unbreakable:true,Damage:1,display:{color:16383998}}
execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 run replaceitem entity @e[tag=EtiSchMS.1Turm,tag=EtiSchMS.1Anklickbar] armor.head minecraft:leather_chestplate{Unbreakable:true,Damage:2,display:{color:16383998}}
execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 run replaceitem entity @e[tag=EtiSchMS.1Springer,tag=EtiSchMS.1Anklickbar] armor.head minecraft:leather_chestplate{Unbreakable:true,Damage:3,display:{color:16383998}}
execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 run replaceitem entity @e[tag=EtiSchMS.1Laeufer,tag=EtiSchMS.1Anklickbar] armor.head minecraft:leather_chestplate{Unbreakable:true,Damage:4,display:{color:16383998}}
execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 run replaceitem entity @e[tag=EtiSchMS.1Dame,tag=EtiSchMS.1Anklickbar] armor.head minecraft:leather_chestplate{Unbreakable:true,Damage:5,display:{color:16383998}}
execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 run replaceitem entity @e[tag=EtiSchMS.1Koenig,tag=EtiSchMS.1Anklickbar] armor.head minecraft:leather_chestplate{Unbreakable:true,Damage:6,display:{color:16383998}}

execute as @e[tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=1}] store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get KonstSchMS.1TUERKIS PZSchMS.1Farbe
execute as @e[tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=2}] store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get KonstSchMS.1SCHWARZ PZSchMS.1Farbe
execute as @e[tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=3}] store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get KonstSchMS.1ORANGE PZSchMS.1Farbe

execute as @e[tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=1..3}] store result entity @s ArmorItems[1].tag.display.color int 1 store result entity @s ArmorItems[2].tag.display.color int 1 run data get entity @s ArmorItems[3].tag.display.color 1

scoreboard players set @e[tag=EtiSchMS.1Anklickbar] PZSchMS.1Spielz 0
