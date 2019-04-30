
scoreboard players set @e[type=minecraft:item,tag=!EtiRezM.4Drop,distance=..25,nbt={Item:{id:"minecraft:furnace",tag:{display:{Lore:["Rezeptmaschine.4"]} } } }] PZRezM.4Nr 1
scoreboard players set @e[type=minecraft:item,tag=!EtiRezM.4Drop,distance=..25,nbt={Item:{id:"minecraft:coal",tag:{display:{Lore:["Rezeptmaschine.4"]} } } }] PZRezM.4Nr 2
scoreboard players set @e[type=minecraft:item,tag=!EtiRezM.4Drop,distance=..25,nbt={Item:{id:"minecraft:porkchop",tag:{display:{Lore:["Rezeptmaschine.4"]} } } }] PZRezM.4Nr 3
scoreboard players set @e[type=minecraft:item,tag=!EtiRezM.4Drop,distance=..25,nbt={Item:{id:"minecraft:cooked_porkchop",tag:{display:{Lore:["Rezeptmaschine.4"]} } } }] PZRezM.4Nr 4
tag @e[type=minecraft:item,tag=!EtiRezM.4Drop,scores={PZRezM.4Nr=1..},distance=..25,nbt={Item:{tag:{display:{Lore:["Rezeptmaschine.4"]} } } }] add EtiRezM.4Drop

execute as @e[distance=..50,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=3,PZRezM.4Fort=200..}] at @s as @e[distance=..3,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=2}] store result score @s PZRezM.4Fort run data get entity @s Item.Count 1
execute as @e[distance=..50,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=3,PZRezM.4Fort=200..}] at @s run scoreboard players remove @e[distance=..3,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=2}] PZRezM.4Fort 1
execute as @e[distance=..50,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=3,PZRezM.4Fort=200..}] at @s as @e[distance=..3,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=2}] store result entity @s Item.Count byte 1 run scoreboard players get @s PZRezM.4Fort

execute as @e[distance=..50,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=3,PZRezM.4Fort=200..}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"},Tags:[]}

execute as @e[distance=..50,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=3}] at @s if entity @e[distance=..3,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=2}] if entity @e[distance=..3,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=1}] run scoreboard players add @s PZRezM.4Fort 1

execute at @e[distance=..50,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=1}] if entity @e[type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=2},distance=..3] run particle minecraft:flame ~ ~ ~ 0 0 0 0.02 5 force @a[distance=..25]
execute at @e[distance=..50,type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=1}] as @e[type=minecraft:item,tag=EtiRezM.4Drop,scores={PZRezM.4Nr=3..},distance=..3] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force @a[distance=..25]
