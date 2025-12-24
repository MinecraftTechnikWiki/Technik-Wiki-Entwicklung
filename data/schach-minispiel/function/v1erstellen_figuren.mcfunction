
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

execute as @e[tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=1}] store result entity @s equipment.feet.components.minecraft:dyed_color int 1 store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 store result entity @s equipment.body.components.minecraft:dyed_color int 1 run scoreboard players get KonstSchMS.1TUERKIS PZSchMS.1Farbe
execute as @e[tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=2}] store result entity @s equipment.feet.components.minecraft:dyed_color int 1 store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 store result entity @s equipment.body.components.minecraft:dyed_color int 1 run scoreboard players get KonstSchMS.1SCHWARZ PZSchMS.1Farbe
execute as @e[tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=3}] store result entity @s equipment.feet.components.minecraft:dyed_color int 1 store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 store result entity @s equipment.body.components.minecraft:dyed_color int 1 run scoreboard players get KonstSchMS.1ORANGE PZSchMS.1Farbe

scoreboard players set @e[tag=EtiSchMS.1Anklickbar] PZSchMS.1Spielz 0
