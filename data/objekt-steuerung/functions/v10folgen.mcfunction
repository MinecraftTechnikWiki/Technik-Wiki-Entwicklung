
tag @s add EtiObjSt.10Selbst
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=!EtiObjSt.10Selbst,scores={PZObjSt.10Nr=1..}] run scoreboard players operation @s PZObjSt.10Vergl = @s PZObjSt.10Nr
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=!EtiObjSt.10Selbst,scores={PZObjSt.10Nr=1..}] run scoreboard players operation @s PZObjSt.10Vergl -= @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=EtiObjSt.10Selbst] PZObjSt.10Laenge
tag @s remove EtiObjSt.10Selbst
teleport @s ^ ^ ^0.1 facing entity @e[distance=0.4..,sort=nearest,limit=1,type=minecraft:armor_stand,tag=EtiObjSt.10Alle,scores={PZObjSt.10Vergl=0}] feet
