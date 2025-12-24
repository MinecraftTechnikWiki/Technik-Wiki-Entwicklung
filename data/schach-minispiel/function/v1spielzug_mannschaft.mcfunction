
scoreboard players operation VarSchMS.1Farbe PZSchMS.1Farbe = @n[distance=..5,type=minecraft:zombified_piglin,tag=EtiSchMS.1Koenig] PZSchMS.1Farbe

execute if score VarSchMS.1Farbe PZSchMS.1Farbe matches 0 run team join TMSchMS.1Weiss @p
execute if score VarSchMS.1Farbe PZSchMS.1Farbe matches 1 run team join TMSchMS.1Tuerkis @p
execute if score VarSchMS.1Farbe PZSchMS.1Farbe matches 2 run team join TMSchMS.1Schwarz @p
execute if score VarSchMS.1Farbe PZSchMS.1Farbe matches 3 run team join TMSchMS.1Orange @p

execute if score VarSchMS.1Farbe PZSchMS.1Farbe matches 0 run tellraw @p[team=TMSchMS.1Weiss] ["Schach-Minispiel.1:\n",{text:"Weiße Mannschaft",color:"white",bold:true}]
execute if score VarSchMS.1Farbe PZSchMS.1Farbe matches 1 run tellraw @p[team=TMSchMS.1Tuerkis] ["Schach-Minispiel.1:\n",{text:"Türkise Mannschaft",color:"blue",bold:true}]
execute if score VarSchMS.1Farbe PZSchMS.1Farbe matches 2 run tellraw @p[team=TMSchMS.1Schwarz] ["Schach-Minispiel.1:\n",{text:"Schwarze Mannschaft",color:"black",bold:true}]
execute if score VarSchMS.1Farbe PZSchMS.1Farbe matches 3 run tellraw @p[team=TMSchMS.1Orange] ["Schach-Minispiel.1:\n",{text:"Orange Mannschaft",color:"gold",bold:true}]

tag @s remove EtiSchMS.1ZugAuswahl
kill @e[distance=..3,tag=EtiSchMS.1Mannschaft,sort=nearest,limit=3]

execute store result score VarSchMS.1Anzahl PZSchMS.1Farbe if entity @e[type=minecraft:shulker,tag=EtiSchMS.1Mannschaft]
execute if score VarSchMS.1Anzahl PZSchMS.1Farbe matches 0 as @a unless entity @s[team=!TMSchMS.1Weiss,team=!TMSchMS.1Tuerkis,team=!TMSchMS.1Schwarz,team=!TMSchMS.1Orange] run tellraw @s ["",{text:"Spiel startet!",color:"dark_purple",bold:true}]
