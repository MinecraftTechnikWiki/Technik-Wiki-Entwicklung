
scoreboard players operation VarVorH.1Aufteilung PZVorH.1Wert = VarVorH.1Anzahl PZVorH.1Wert
scoreboard players operation VarVorH.1Aufteilung PZVorH.1Wert /= KonstVorH.1ZWEI PZVorH.1Wert
#scoreboard players operation VarVorH.1TeamGroesse PZVorH.1Wert = VarVorH.1Aufteilung PZVorH.1Wert

tag @a[team=TMVorH.1Lobby] add EtiVorH.1Spielstart

scoreboard players set VarVorH.1Nummer PZVorH.1Nr 0
execute as @a[team=TMVorH.1Lobby,sort=random] store result score @s PZVorH.1Nr run scoreboard players add VarVorH.1Nummer PZVorH.1Nr 1

team join TMVorH.1Team1 @a[team=TMVorH.1Lobby]
execute as @a[team=TMVorH.1Team1] if score @s PZVorH.1Nr > VarVorH.1Aufteilung PZVorH.1Wert run team join TMVorH.1Team2

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiVorH.1Alle"]}
execute store result score VarVorH.1Zufallszahl PZVorH.1Wert run data get entity @e[type=minecraft:area_effect_cloud,tag=EtiVorH.1Alle,sort=nearest,limit=1] UUID[0]
scoreboard players operation VarVorH.1Zufallszahl PZVorH.1Wert %= KonstVorH.1ZWEI PZVorH.1Wert

#tellraw @a [{"score":{"name":"VarVorH.1Zufallszahl","objective":"PZVorH.1Wert"}}]

scoreboard players operation VarVorH.1Aufteilung PZVorH.1Wert = VarVorH.1Anzahl PZVorH.1Wert
scoreboard players operation VarVorH.1Aufteilung PZVorH.1Wert %= KonstVorH.1ZWEI PZVorH.1Wert
execute if score VarVorH.1Aufteilung PZVorH.1Wert matches 1 if score VarVorH.1Zufallszahl PZVorH.1Wert matches 1 run team join TMVorH.1Team1 @r[team=TMVorH.1Team2]

#execute if score VarVorH.1Teams PZVorH.1Wert matches 3..4 run scoreboard players operation VarVorH.1TeamGroesse PZVorH.1Wert += VarVorH.1Aufteilung PZVorH.1Wert
#execute if score VarVorH.1Teams PZVorH.1Wert matches 3..4 as @a[team=TMVorH.1Team2] if score @s PZVorH.1Nr > VarVorH.1TeamGroesse PZVorH.1Wert run team join TMVorH.1Team3

#execute if score VarVorH.1Teams PZVorH.1Wert matches 4 run scoreboard players operation VarVorH.1TeamGroesse PZVorH.1Wert += VarVorH.1Aufteilung PZVorH.1Wert
#execute if score VarVorH.1Teams PZVorH.1Wert matches 4 as @a[team=TMVorH.1Team3] if score @s PZVorH.1Nr > VarVorH.1TeamGroesse PZVorH.1Wert run team join TMVorH.1Team4

#scoreboard players operation $odd temp %= 2 temp
#execute if score $odd temp matches 1 if predicate (50%) run team join team1 @r[team=team2]

title @a[tag=EtiVorH.1Spielstart,team=TMVorH.1Team1] title ["",{"text":"Spiel startet!","color":"red","bold":true}]
title @a[tag=EtiVorH.1Spielstart,team=TMVorH.1Team2] title ["",{"text":"Spiel startet!","color":"blue","bold":true}]
#title @a[tag=EtiVorH.1Spielstart,team=TMVorH.1Team3] title ["",{"text":"Spiel startet!","color":"green","bold":true}]
#title @a[tag=EtiVorH.1Spielstart,team=TMVorH.1Team4] title ["",{"text":"Spiel startet!","color":"yellow","bold":true}]

clear @a[tag=EtiVorH.1Spielstart] minecraft:red_bed{EigVorH.1Alle:true}

replaceitem entity @a[team=TMVorH.1Team1] armor.head minecraft:leather_helmet{EigVorH.1Alle:true,display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1s}]}

replaceitem entity @a[team=TMVorH.1Team2] armor.head minecraft:leather_helmet{EigVorH.1Alle:true,display:{color:255},Enchantments:[{id:"binding_curse",lvl:1s}]}

#replaceitem entity @a[team=TMVorH.1Team3] armor.head minecraft:leather_helmet{EigVorH.1Alle:true,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1s}]}

#replaceitem entity @a[team=TMVorH.1Team4] armor.head minecraft:leather_helmet{EigVorH.1Alle:true,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1s}]}

scoreboard players set @a[tag=EtiVorH.1Spielstart] PZVorH.1Nr 0
spreadplayers ~ ~ 5 2 true @a[tag=EtiVorH.1Spielstart]
tag @a[tag=EtiVorH.1Spielstart] remove EtiVorH.1Spielstart
