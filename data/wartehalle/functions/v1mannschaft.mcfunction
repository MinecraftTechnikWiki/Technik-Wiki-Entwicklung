
scoreboard players operation VarWartH.1Aufteilung PZWartH.1Wert = VarWartH.1Anzahl PZWartH.1Wert
scoreboard players operation VarWartH.1Aufteilung PZWartH.1Wert /= KonstWartH.1ZWEI PZWartH.1Wert
#scoreboard players operation VarWartH.1TeamGroesse PZWartH.1Wert = VarWartH.1Aufteilung PZWartH.1Wert

tag @a[team=TMWartH.1Lobby] add EtiWartH.1Spielstart

scoreboard players set VarWartH.1Nummer PZWartH.1Nr 0
execute as @a[team=TMWartH.1Lobby,sort=random] store result score @s PZWartH.1Nr run scoreboard players add VarWartH.1Nummer PZWartH.1Nr 1

team join TMWartH.1Team1 @a[team=TMWartH.1Lobby]
execute as @a[team=TMWartH.1Team1] if score @s PZWartH.1Nr > VarWartH.1Aufteilung PZWartH.1Wert run team join TMWartH.1Team2

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiWartH.1Alle"]}
execute store result score VarWartH.1Zufallszahl PZWartH.1Wert run data get entity @e[type=minecraft:area_effect_cloud,tag=EtiWartH.1Alle,sort=nearest,limit=1] UUID[0]
scoreboard players operation VarWartH.1Zufallszahl PZWartH.1Wert %= KonstWartH.1ZWEI PZWartH.1Wert

#tellraw @a [{"score":{"name":"VarWartH.1Zufallszahl","objective":"PZWartH.1Wert"}}]

scoreboard players operation VarWartH.1Aufteilung PZWartH.1Wert = VarWartH.1Anzahl PZWartH.1Wert
scoreboard players operation VarWartH.1Aufteilung PZWartH.1Wert %= KonstWartH.1ZWEI PZWartH.1Wert
execute if score VarWartH.1Aufteilung PZWartH.1Wert matches 1 if score VarWartH.1Zufallszahl PZWartH.1Wert matches 1 run team join TMWartH.1Team1 @r[team=TMWartH.1Team2]

#execute if score VarWartH.1Teams PZWartH.1Wert matches 3..4 run scoreboard players operation VarWartH.1TeamGroesse PZWartH.1Wert += VarWartH.1Aufteilung PZWartH.1Wert
#execute if score VarWartH.1Teams PZWartH.1Wert matches 3..4 as @a[team=TMWartH.1Team2] if score @s PZWartH.1Nr > VarWartH.1TeamGroesse PZWartH.1Wert run team join TMWartH.1Team3

#execute if score VarWartH.1Teams PZWartH.1Wert matches 4 run scoreboard players operation VarWartH.1TeamGroesse PZWartH.1Wert += VarWartH.1Aufteilung PZWartH.1Wert
#execute if score VarWartH.1Teams PZWartH.1Wert matches 4 as @a[team=TMWartH.1Team3] if score @s PZWartH.1Nr > VarWartH.1TeamGroesse PZWartH.1Wert run team join TMWartH.1Team4

#scoreboard players operation $odd temp %= 2 temp
#execute if score $odd temp matches 1 if predicate (50%) run team join team1 @r[team=team2]

title @a[tag=EtiWartH.1Spielstart,team=TMWartH.1Team1] title ["",{"text":"Spiel startet!","color":"red","bold":true}]
title @a[tag=EtiWartH.1Spielstart,team=TMWartH.1Team2] title ["",{"text":"Spiel startet!","color":"blue","bold":true}]
#title @a[tag=EtiWartH.1Spielstart,team=TMWartH.1Team3] title ["",{"text":"Spiel startet!","color":"green","bold":true}]
#title @a[tag=EtiWartH.1Spielstart,team=TMWartH.1Team4] title ["",{"text":"Spiel startet!","color":"yellow","bold":true}]

clear @a[tag=EtiWartH.1Spielstart] minecraft:red_bed{EigWartH.1Alle:true}

item replace entity @a[team=TMWartH.1Team1] armor.head with minecraft:leather_helmet{EigWartH.1Alle:true,display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1s}]}

item replace entity @a[team=TMWartH.1Team2] armor.head with minecraft:leather_helmet{EigWartH.1Alle:true,display:{color:255},Enchantments:[{id:"binding_curse",lvl:1s}]}

#item replace entity @a[team=TMWartH.1Team3] armor.head with minecraft:leather_helmet{EigWartH.1Alle:true,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1s}]}

#item replace entity @a[team=TMWartH.1Team4] armor.head with minecraft:leather_helmet{EigWartH.1Alle:true,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1s}]}

scoreboard players set @a[tag=EtiWartH.1Spielstart] PZWartH.1Nr 0
spreadplayers ~ ~ 5 2 true @a[tag=EtiWartH.1Spielstart]
tag @a[tag=EtiWartH.1Spielstart] remove EtiWartH.1Spielstart
