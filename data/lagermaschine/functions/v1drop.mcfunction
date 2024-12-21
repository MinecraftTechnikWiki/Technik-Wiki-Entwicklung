
tellraw @p[distance=..2,scores={PZLagerM.1Ausl=1}] ["Lagermaschine.1:\n",{"text":"ausgelagert == ","bold":true},{"entity":"@s","nbt":"Items[{Slot:15b}].id","color":"dark_purple","bold":true}]

execute store result score VarLagerM.1Stapel PZLagerM.1Ausl run data get storage lagermaschine:v1daten "EigLagerM.1Lager"[0].count

summon minecraft:item ~ ~ ~ {PickupDelay:32767s,Item:{id:"minecraft:stone",count:1},Tags:["EtiLagerM.1Alle","EtiLagerM.1Drop"]}
data modify entity @e[distance=..1,type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] Item.id set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].id

execute if score VarLagerM.1Stapel PZLagerM.1Ausl matches 1.. store result storage lagermaschine:v1daten "EigLagerM.1Lager"[0].count int 1 run scoreboard players remove VarLagerM.1Stapel PZLagerM.1Ausl 1
execute if score VarLagerM.1Stapel PZLagerM.1Ausl matches ..0 run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[0]

data merge entity @e[distance=..1,type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] {PickupDelay:0s}
