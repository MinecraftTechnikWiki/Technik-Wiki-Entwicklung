
execute store result score VarLagerM.1Stapel PZLagerM.1Stapel run data get storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Count
execute if score VarLagerM.1Stapel PZLagerM.1Stapel matches 1.. run summon minecraft:item ~ ~ ~ {PickupDelay:32767s,Item:{id:"minecraft:stone",Count:1b},Tags:["EtiLagerM.1Drop"]}

execute if score VarLagerM.1Stapel PZLagerM.1Stapel matches 1.. run data modify entity @e[type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] Item.id set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].id

scoreboard players operation VarLagerM.1Holen PZLagerM.1Stapel = @s PZLagerM.1Stapel

execute if score VarLagerM.1Stapel PZLagerM.1Stapel < @s PZLagerM.1Stapel run scoreboard players operation VarLagerM.1Holen PZLagerM.1Stapel = VarLagerM.1Stapel PZLagerM.1Stapel

execute if score VarLagerM.1Stapel PZLagerM.1Stapel matches 1.. store result entity @e[type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get VarLagerM.1Holen PZLagerM.1Stapel

execute store result storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Count int 1 run scoreboard players operation VarLagerM.1Stapel PZLagerM.1Stapel -= VarLagerM.1Holen PZLagerM.1Stapel

execute if score VarLagerM.1Stapel PZLagerM.1Stapel matches 0 run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[0]

data merge entity @e[type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] {PickupDelay:0s}
