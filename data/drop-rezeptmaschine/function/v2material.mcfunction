
scoreboard players operation @s PZDrRezM.2Fort += VarDrRezM.2Brennen PZDrRezM.2Fort
scoreboard players set @s[scores={PZDrRezM.2Fort=200..}] PZDrRezM.2Fort -1

#scoreboard players set @s[nbt={Item:{id:"minecraft:cooked_cod"} }] PZDrRezM.2Drop 1
#scoreboard players set @s[nbt={Item:{id:"minecraft:porkchop"} }] PZDrRezM.2Drop 2
#scoreboard players set @s[nbt={Item:{id:"minecraft:mutton"} }] PZDrRezM.2Drop 3
#scoreboard players set @s[nbt={Item:{id:"minecraft:potato"} }] PZDrRezM.2Drop 4

#scoreboard players set @s[scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] PZDrRezM.2Fort -1
#scoreboard players set @s[scores={PZDrRezM.2Drop=2,PZDrRezM.2Fort=200..}] PZDrRezM.2Fort -1
#scoreboard players set @s[scores={PZDrRezM.2Drop=3,PZDrRezM.2Fort=200..}] PZDrRezM.2Fort -1
#scoreboard players set @s[scores={PZDrRezM.2Drop=4,PZDrRezM.2Fort=200..}] PZDrRezM.2Fort -1

execute if entity @s[scores={PZDrRezM.2Fort=-1}] run summon minecraft:item ~ ~ ~ {PickupDelay:32767s,Item:{id:"minecraft:cooked_cod",count:1},Tags:["EtiDrRezM.2Alle","EtiDrRezM.2Material","EtiDrRezM.2Hergestellt"],Motion:[0.0d,0.3d,0.0d]}

execute if entity @s[scores={PZDrRezM.2Drop=2,PZDrRezM.2Fort=-1}] run data merge entity @n[type=minecraft:item,tag=EtiDrRezM.2Hergestellt] {Item:{id:"minecraft:cooked_porkchop"} }
execute if entity @s[scores={PZDrRezM.2Drop=3,PZDrRezM.2Fort=-1}] run data merge entity @n[type=minecraft:item,tag=EtiDrRezM.2Hergestellt] {Item:{id:"minecraft:cooked_mutton"} }
execute if entity @s[scores={PZDrRezM.2Drop=4,PZDrRezM.2Fort=-1}] run data merge entity @n[type=minecraft:item,tag=EtiDrRezM.2Hergestellt] {Item:{id:"minecraft:baked_potato"} }

execute if entity @s[scores={PZDrRezM.2Fort=-1}] store result score VarDrRezM.2Stapel PZDrRezM.2Drop run data get entity @n[distance=..1,type=minecraft:item,tag=EtiDrRezM.2Material,tag=!EtiDrRezM.2Hergestellt] Item.count
execute if entity @s[scores={PZDrRezM.2Fort=-1}] run scoreboard players operation VarDrRezM.2Stapel PZDrRezM.2Drop %= KonstDrRezM.2VIER PZDrRezM.2Drop
execute if entity @s[scores={PZDrRezM.2Fort=-1}] if score VarDrRezM.2Stapel PZDrRezM.2Drop matches 0 run summon minecraft:experience_orb ~ ~ ~ {Age:-32768s,Value:1s,Tags:["EtiDrRezM.2Alle"]}

execute if entity @s[scores={PZDrRezM.2Fort=-1}] run data modify entity @n[type=minecraft:item,tag=EtiDrRezM.2Hergestellt] Item.components merge from entity @s Item.components
execute if entity @s[scores={PZDrRezM.2Fort=-1}] run data merge entity @n[type=minecraft:item,tag=EtiDrRezM.2Hergestellt] {PickupDelay:10s}
execute if entity @s[scores={PZDrRezM.2Fort=-1}] run tag @n[type=minecraft:item,tag=EtiDrRezM.2Hergestellt] remove EtiDrRezM.2Hergestellt

#execute if entity @s[scores={PZDrRezM.2Fort=-1}] run function drop-rezeptmaschine:v2stapel

execute if entity @s[scores={PZDrRezM.2Fort=-1}] store result score VarDrRezM.2Stapel PZDrRezM.2Drop run data get entity @s Item.count
execute store result entity @s[scores={PZDrRezM.2Fort=-1}] Item.count byte 1 run scoreboard players remove VarDrRezM.2Stapel PZDrRezM.2Drop 1

execute if entity @s[scores={PZDrRezM.2Fort=-1}] run playsound minecraft:block.lava.extinguish master @a[distance=..15] ~ ~ ~ 1 1 0.1
scoreboard players set @s[scores={PZDrRezM.2Fort=-1}] PZDrRezM.2Fort 0

particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 2 force @a[distance=..15]

#execute as @e[type=minecraft:item,tag=EtiDrRezM.2Material,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"},Tags:[]}

#execute as @e[type=minecraft:item,tag=EtiDrRezM.2Material,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] at @s as @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Material,scores={PZDrRezM.2Drop=-1}] store result score @s PZDrRezM.2Fort run data get entity @s Item.count 1
#execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Material,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] at @s run scoreboard players remove @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Material,scores={PZDrRezM.2Drop=-1}] PZDrRezM.2Fort 1
#execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Material,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] at @s as @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Material,scores={PZDrRezM.2Drop=-1}] store result entity @s PickupDelay short 1 store result entity @s Item.count byte 1 run scoreboard players get @s PZDrRezM.2Fort

#execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Material,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"},Tags:[]}
