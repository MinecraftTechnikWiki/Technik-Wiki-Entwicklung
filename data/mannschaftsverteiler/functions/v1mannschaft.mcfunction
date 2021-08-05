
scoreboard players set VarManSV.1Zaehler PZManSV.1Wert 15

execute store result score VarManSV.1Uebrig PZManSV.1Wert run scoreboard players operation VarManSV.1Aufteilung PZManSV.1Wert = @s PZManSV.1Wert
scoreboard players operation VarManSV.1Aufteilung PZManSV.1Wert /= KonstManSV.1ZWEI PZManSV.1Wert
scoreboard players operation VarManSV.1Uebrig PZManSV.1Wert %= KonstManSV.1ZWEI PZManSV.1Wert

scoreboard players set VarManSV.1Nummer PZManSV.1Wert 0
execute as @a[tag=EtiManSV.1AufPlattform,sort=random] store result score @s PZManSV.1Wert run scoreboard players add VarManSV.1Nummer PZManSV.1Wert 1

team join TMManSV.1Team1 @a[tag=EtiManSV.1AufPlattform]
execute as @a[team=TMManSV.1Team1] if score @s PZManSV.1Wert > VarManSV.1Aufteilung PZManSV.1Wert run team join TMManSV.1Team2 @s

execute if score VarManSV.1Uebrig PZManSV.1Wert matches 1 run function mannschaftsverteiler:v1uebrig

replaceitem entity @a[team=TMManSV.1Team1] armor.head minecraft:leather_helmet{EigManSV.1Alle:true,display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1s}]}

replaceitem entity @a[team=TMManSV.1Team2] armor.head minecraft:leather_helmet{EigManSV.1Alle:true,display:{color:255},Enchantments:[{id:"binding_curse",lvl:1s}]}

title @a[team=TMManSV.1Team1] title ["",{"text":"Mannschaft 1!","color":"red","bold":true}]
title @a[team=TMManSV.1Team2] title ["",{"text":"Mannschaft 2!","color":"blue","bold":true}]

spreadplayers ~ ~ 2 4 true @a[tag=EtiManSV.1AufPlattform]
