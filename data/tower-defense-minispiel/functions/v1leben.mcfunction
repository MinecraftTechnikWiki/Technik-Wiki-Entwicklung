
data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Leiste" set value []

execute if entity @s[tag=EtiTowDefMS.1Schuetze] run scoreboard players set VarTowDefMS.1Max PZTowDefMS.1Leben 100
execute if entity @s[tag=EtiTowDefMS.1Gegner] store result score VarTowDefMS.1Max PZTowDefMS.1Leben run attribute @s minecraft:generic.max_health get

# Es wird der Prozentwert berechnet.
scoreboard players operation @s PZTowDefMS.1Versuch = @s PZTowDefMS.1Leben
scoreboard players operation @s PZTowDefMS.1Versuch *= KonstTowDefMS.1HUNDERT PZTowDefMS.1Wert
scoreboard players operation @s PZTowDefMS.1Versuch /= VarTowDefMS.1Max PZTowDefMS.1Leben

scoreboard players set VarTowDefMS.1Balken PZTowDefMS.1Leben 1
function tower-defense-minispiel:v1leiste

execute if entity @s[tag=EtiTowDefMS.1Schuetze] positioned ~ ~2 ~ run data modify entity @e[distance=..5,type=minecraft:text_display,tag=EtiTowDefMS.1Aufladen,sort=nearest,limit=1] text set value '["",{"text":"S: ","color":"red"},{"storage":"tower-defense-minispiel:v1daten","nbt":"\\"EigTowDefMS.1Leiste\\"[]","separator":"","interpret":true}]'
execute if entity @s[tag=EtiTowDefMS.1Gegner] on passengers run data modify entity @s text set value '["",{"text":"LP: ","color":"gold"},{"storage":"tower-defense-minispiel:v1daten","nbt":"\\"EigTowDefMS.1Leiste\\"[]","separator":"","interpret":true}]'

#summon minecraft:text_display ~ ~1 ~ {text:'["",{"text":"LP: ","color":"gold"},{"storage":"tower-defense-minispiel:v1daten","nbt":"\\"EigTowDefMS.1Leiste\\"[]","separator":"","interpret":true}]',Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Leiste"]}

#data modify entity @s CustomName set from entity @e[distance=..5,type=minecraft:text_display,tag=EtiTowDefMS.1Leiste,sort=nearest,limit=1] text

#kill @e[distance=..5,type=minecraft:text_display,tag=EtiTowDefMS.1Leiste,sort=nearest,limit=1]
