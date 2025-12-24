
#execute store result score VarDrRezM.2Stapel PZDrRezM.2Drop run data get entity @s Item.count
#execute store result entity @s Item.count byte 1 run scoreboard players remove VarDrRezM.2Stapel PZDrRezM.2Drop 1

execute if entity @s[scores={PZDrRezM.2Fort=..0}] as @n[distance=..2,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=..-1},nbt={OnGround:true}] run function drop-rezeptmaschine:v2brennstoff

execute store result score VarDrRezM.2Brennen PZDrRezM.2Fort run data get entity @s Item.count

execute if entity @s[scores={PZDrRezM.2Fort=1..}] as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1..},nbt={OnGround:true}] at @s run function drop-rezeptmaschine:v2material

execute if entity @s[scores={PZDrRezM.2Fort=1..}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 4 force @a[distance=..15]
execute if entity @s[scores={PZDrRezM.2Fort=1..}] run playsound minecraft:block.furnace.fire_crackle master @a[distance=..15] ~ ~ ~ 1 1 0.1

#execute at @n[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=..-1},nbt={OnGround:true}] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 2 force @a[distance=..25]

scoreboard players operation @s[scores={PZDrRezM.2Fort=1..}] PZDrRezM.2Fort -= VarDrRezM.2Brennen PZDrRezM.2Fort

#tag @e[type=minecraft:item,tag=EtiDrRezM.2Erhitzen] remove EtiDrRezM.2Erhitzen
