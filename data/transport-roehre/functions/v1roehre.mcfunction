
setblock ^1 ^ ^ minecraft:lime_stained_glass replace
setblock ^ ^1 ^ minecraft:lime_stained_glass replace
setblock ^-1 ^ ^ minecraft:lime_stained_glass replace
setblock ^ ^-1 ^ minecraft:lime_stained_glass replace
scoreboard players add VarTranPR.1AktuelleLaenge PZTranPR.1Ausl 1

execute positioned ^ ^ ^-1 if block ~ ~ ~ minecraft:gray_stained_glass run setblock ~ ~ ~ minecraft:air replace

execute if score VarTranPR.1AktuelleLaenge PZTranPR.1Ausl < VarTranPR.1Laenge PZTranPR.1Ausl positioned ^ ^ ^-1 unless block ^ ^-1 ^ minecraft:gray_stained_glass unless block ^ ^-1 ^ minecraft:lime_stained_glass run function transport-roehre:v1roehre
