
scoreboard players operation @s PZDrRezM.3Fort += VarDrRezM.3Brauen PZDrRezM.3Fort
scoreboard players set @s[scores={PZDrRezM.3Fort=200..}] PZDrRezM.3Fort -1

execute if entity @s[scores={PZDrRezM.3Fort=-1}] if entity @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Trank] run function drop-rezeptmaschine:v3traenke

execute if entity @s[scores={PZDrRezM.3Fort=-1}] store result score VarDrRezM.3Stapel PZDrRezM.3Drop run data get entity @s Item.count
execute store result entity @s[scores={PZDrRezM.3Fort=-1}] Item.count byte 1 run scoreboard players remove VarDrRezM.3Stapel PZDrRezM.3Drop 1
scoreboard players set @s[scores={PZDrRezM.3Fort=-1}] PZDrRezM.3Fort 0

particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 2 force @a[distance=..15]
