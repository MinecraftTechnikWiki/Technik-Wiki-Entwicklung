
kill @e[type=!minecraft:item,tag=EtiSamS.1Alle]

execute at @e[type=minecraft:item,tag=EtiSamS.1Alle] as @a[distance=..2,tag=!EtiSamS.1MaxEierGefunden] run scoreboard players operation @s PZSamS.1Vergl = @s PZSamS.1Eier
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei1] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei1] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei1] run tag @p[distance=..2,tag=!EtiSamS.1Ei1] add EtiSamS.1Ei1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei2] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei2] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei2] run tag @p[distance=..2,tag=!EtiSamS.1Ei2] add EtiSamS.1Ei2
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei3] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei3] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei3] run tag @p[distance=..2,tag=!EtiSamS.1Ei3] add EtiSamS.1Ei3
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei4] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei4] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei4] run tag @p[distance=..2,tag=!EtiSamS.1Ei4] add EtiSamS.1Ei4
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei5] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei5] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei5] run tag @p[distance=..2,tag=!EtiSamS.1Ei5] add EtiSamS.1Ei5
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei6] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei6] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei6] run tag @p[distance=..2,tag=!EtiSamS.1Ei6] add EtiSamS.1Ei6
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei7] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei7] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei7] run tag @p[distance=..2,tag=!EtiSamS.1Ei7] add EtiSamS.1Ei7
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei8] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei8] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei8] run tag @p[distance=..2,tag=!EtiSamS.1Ei8] add EtiSamS.1Ei8
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei9] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei9] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei9] run tag @p[distance=..2,tag=!EtiSamS.1Ei9] add EtiSamS.1Ei9
execute as @a[distance=..150,tag=!EtiSamS.1MaxEierGefunden] if score @s PZSamS.1Eier > @s PZSamS.1Vergl if score @s PZSamS.1Eier < #VarSamS.1Anzahl PZSamS.1Eier run tellraw @s ["Sammel-System.1: ",{"text":"Du hast dein ","bold":true},{"score":{"name":"@s","objective":"PZSamS.1Eier"} },{"text":"."},{"text":" Sammel-Ei gefunden","bold":true} ]
execute as @a[tag=!EtiSamS.1MaxEierGefunden] if score @s PZSamS.1Eier >= #VarSamS.1Anzahl PZSamS.1Eier at @s run tellraw @a[distance=..150] ["Sammel-System.1: ",{"text":"Der Spieler ","bold":true,"color":"green"},{"selector":"@s"},{"text":" hat alle ","bold":true,"color":"green"},{"score":{"name":"#VarSamS.1Anzahl","objective":"PZSamS.1Eier"} },{"text":" Sammel-Eier gefunden!","bold":true,"color":"green"} ]
execute as @a[tag=!EtiSamS.1MaxEierGefunden] if score @s PZSamS.1Eier >= #VarSamS.1Anzahl PZSamS.1Eier run tag @s add EtiSamS.1MaxEierGefunden
