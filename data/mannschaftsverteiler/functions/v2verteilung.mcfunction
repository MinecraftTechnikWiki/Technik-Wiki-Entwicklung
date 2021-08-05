
scoreboard players operation VarManSV.2Verteilung PZManSV.2Wert += VarManSV.2Aufteilung PZManSV.2Wert
execute as @a[tag=EtiManSV.2AufPlattform,scores={PZManSV.2Ausl=0}] if score @s PZManSV.2Wert <= VarManSV.2Verteilung PZManSV.2Wert run scoreboard players operation @s PZManSV.2Ausl = VarManSV.2Schleife PZManSV.2Wert

scoreboard players remove VarManSV.2Schleife PZManSV.2Wert 1
execute if score VarManSV.2Schleife PZManSV.2Wert matches 1.. run function mannschaftsverteiler:v2verteilung
