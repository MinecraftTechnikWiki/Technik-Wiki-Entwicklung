
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:water run summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Westen","color":"gold","bold":true}',Tags:["EtiSchiff.1Alle","EtiSchiff.1Schiff","EtiSchiff.1Richtung"],Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Geradeaus","color":"aqua","bold":true}',Tags:["EtiSchiff.1Alle","EtiSchiff.1Neigung"] } ] }

execute unless block ~ ~1 ~ minecraft:water run tag @s add EtiSchiff.1Erstellt

execute if entity @s[tag=EtiSchiff.1Erstellt,y_rotation=135..-135] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchiff.1Schiff,sort=nearest,limit=1] {Rotation:[180.0f,0.0f]}
execute if entity @s[tag=EtiSchiff.1Erstellt,y_rotation=-135..-45] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchiff.1Schiff,sort=nearest,limit=1] {Rotation:[-90.0f,0.0f]}
execute if entity @s[tag=EtiSchiff.1Erstellt,y_rotation=45..135] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchiff.1Schiff,sort=nearest,limit=1] {Rotation:[90.0f,0.0f]}

execute if entity @s[tag=EtiSchiff.1Erstellt] as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchiff.1Schiff,sort=nearest,limit=1] at @s run function schiff:v1schiff

execute if entity @s[tag=!EtiSchiff.1Erstellt] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:water if block ^6 ^ ^ minecraft:water if block ^-6 ^ ^ minecraft:water run function schiff:v1erstellen_hoehe
