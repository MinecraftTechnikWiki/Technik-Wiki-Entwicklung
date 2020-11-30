

execute at @a[scores={PZDrRezM.2Nr=1..}] run say hi
scoreboard players set @a[scores={PZDrRezM.2Nr=1..}] PZDrRezM.2Nr 0

scoreboard players set @e[distance=..25,type=minecraft:item,tag=!EtiDrRezM.2Drop,nbt={Item:{id:"minecraft:furnace",tag:{EigDrRezM.2Alle:true} } }] PZDrRezM.2Nr 0
scoreboard players set @e[distance=..25,type=minecraft:item,tag=!EtiDrRezM.2Drop,nbt={Item:{id:"minecraft:coal",tag:{EigDrRezM.2Alle:true} } }] PZDrRezM.2Nr -1
scoreboard players set @e[distance=..25,type=minecraft:item,tag=!EtiDrRezM.2Drop,nbt={Item:{id:"minecraft:porkchop",tag:{EigDrRezM.2Alle:true} } }] PZDrRezM.2Nr 1
scoreboard players set @e[distance=..25,type=minecraft:item,tag=!EtiDrRezM.2Drop,nbt={Item:{id:"minecraft:stick",tag:{EigDrRezM.2Alle:true} } }] PZDrRezM.2Nr 2
tag @e[distance=..25,type=minecraft:item,tag=!EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=1..},nbt={Item:{tag:{EigDrRezM.2Alle:true} } }] add EtiDrRezM.2Drop

execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=1,PZDrRezM.2Fort=200..}] at @s as @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=-1}] store result score @s PZDrRezM.2Fort run data get entity @s Item.Count 1
execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=1,PZDrRezM.2Fort=200..}] at @s run scoreboard players remove @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=-1}] PZDrRezM.2Fort 1
execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=1,PZDrRezM.2Fort=200..}] at @s as @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=-1}] store result entity @s PickupDelay short 1 store result entity @s Item.Count byte 1 run scoreboard players get @s PZDrRezM.2Fort

execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=1,PZDrRezM.2Fort=200..}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"},Tags:[]}

execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=1}] at @s if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=-1}] if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=0}] run scoreboard players add @s PZDrRezM.2Fort 1

execute at @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=0}] if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=-1}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.02 5 force @a[distance=..25]
execute at @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=0}] as @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Nr=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force @a[distance=..25]
