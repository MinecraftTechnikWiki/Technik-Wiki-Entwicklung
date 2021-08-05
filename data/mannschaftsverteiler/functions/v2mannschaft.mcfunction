
scoreboard players set VarManSV.2Zaehler PZManSV.2Wert 15

execute store result score VarManSV.2Uebrig PZManSV.2Wert run scoreboard players operation VarManSV.2Aufteilung PZManSV.2Wert = @s PZManSV.2Wert
scoreboard players operation VarManSV.2Aufteilung PZManSV.2Wert /= VarManSV.2Mannschaften PZManSV.2Ausl
scoreboard players operation VarManSV.2Uebrig PZManSV.2Wert %= VarManSV.2Mannschaften PZManSV.2Ausl

scoreboard players set VarManSV.2Reihenfolge PZManSV.2Wert 0
scoreboard players set @a[tag=EtiManSV.2AufPlattform] PZManSV.2Ausl 0
execute as @a[tag=EtiManSV.2AufPlattform,sort=random] store result score @s PZManSV.2Wert run scoreboard players add VarManSV.2Reihenfolge PZManSV.2Wert 1

scoreboard players set VarManSV.2Verteilung PZManSV.2Wert 0
scoreboard players operation VarManSV.2Schleife PZManSV.2Wert = VarManSV.2Mannschaften PZManSV.2Ausl
execute if score @s PZManSV.2Wert >= VarManSV.2Mannschaften PZManSV.2Ausl run function mannschaftsverteiler:v2verteilung

scoreboard players operation VarManSV.2Schleife PZManSV.2Wert = VarManSV.2Mannschaften PZManSV.2Ausl
execute if score VarManSV.2Uebrig PZManSV.2Wert matches 1.. run function mannschaftsverteiler:v2uebrig

scoreboard players set VarManSV.2Reihenfolge PZManSV.2Wert 0
execute as @e[type=minecraft:area_effect_cloud,tag=EtiManSV.2Reihenfolge,sort=random] store result score @s PZManSV.2Ausl run scoreboard players add VarManSV.2Reihenfolge PZManSV.2Wert 1

execute as @e[type=minecraft:area_effect_cloud,tag=EtiManSV.2Reihenfolge] at @a[scores={PZManSV.2Ausl=0}] if score @s PZManSV.2Wert = @p PZManSV.2Wert run scoreboard players operation @p PZManSV.2Ausl = @s PZManSV.2Ausl

team join TMManSV.2Team1 @a[scores={PZManSV.2Ausl=1}]
team join TMManSV.2Team2 @a[scores={PZManSV.2Ausl=2}]
team join TMManSV.2Team3 @a[scores={PZManSV.2Ausl=3}]
team join TMManSV.2Team4 @a[scores={PZManSV.2Ausl=4}]

title @a[team=TMManSV.2Team1] title ["",{"text":"Mannschaft 1!","color":"red","bold":true}]
title @a[team=TMManSV.2Team2] title ["",{"text":"Mannschaft 2!","color":"blue","bold":true}]
title @a[team=TMManSV.2Team3] title ["",{"text":"Mannschaft 3!","color":"green","bold":true}]
title @a[team=TMManSV.2Team4] title ["",{"text":"Mannschaft 4!","color":"yellow","bold":true}]

replaceitem entity @a[team=TMManSV.2Team1] armor.head minecraft:leather_helmet{EigManSV.2Alle:true,display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1s}]}

replaceitem entity @a[team=TMManSV.2Team2] armor.head minecraft:leather_helmet{EigManSV.2Alle:true,display:{color:255},Enchantments:[{id:"binding_curse",lvl:1s}]}

replaceitem entity @a[team=TMManSV.2Team3] armor.head minecraft:leather_helmet{EigManSV.2Alle:true,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1s}]}

replaceitem entity @a[team=TMManSV.2Team4] armor.head minecraft:leather_helmet{EigManSV.2Alle:true,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1s}]}

scoreboard players set @a[tag=EtiManSV.2AufPlattform] PZManSV.2Ausl 0
spreadplayers ~ ~ 2 4 true @a[tag=EtiManSV.2AufPlattform]
