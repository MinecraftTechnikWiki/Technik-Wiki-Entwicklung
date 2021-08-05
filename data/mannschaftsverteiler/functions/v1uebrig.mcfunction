
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiManSV.1Alle","EtiManSV.1Zufall"]}
execute store result score VarManSV.1Zufallszahl PZManSV.1Wert run data get entity @e[type=minecraft:area_effect_cloud,tag=EtiManSV.1Zufall,sort=nearest,limit=1] UUID[0]
scoreboard players operation VarManSV.1Zufallszahl PZManSV.1Wert %= KonstManSV.1ZWEI PZManSV.1Wert

execute if score VarManSV.1Zufallszahl PZManSV.1Wert matches 1 run team join TMManSV.1Team1 @r[team=TMManSV.1Team2]
