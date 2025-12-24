
#execute at @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0}] if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1..}] run scoreboard players add @n[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=..-1}] PZDrRezM.2Fort 1

execute at @a[scores={PZDrRezM.2Drop=1..}] as @e[type=minecraft:item,tag=!EtiDrRezM.2Drop,nbt={Item:{components:{"minecraft:custom_data":{EigDrRezM.2Alle:true} } } }] run function drop-rezeptmaschine:v2nummer

execute as @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0}] at @s run function drop-rezeptmaschine:v2ofen

#execute as @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0}] at @s if entity @n[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=..-1}] if entity @n[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1..}] run tag @s add EtiDrRezM.2Erhitzen

#execute at @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0}] if entity @n[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=..-1}] if entity @n[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1..}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 4 force @a[distance=..25]

#execute as @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0,PZDrRezM.2Fort=1..}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 4 force @a[distance=..25]

#tag @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0,PZDrRezM.2Fort=1..}] add EtiDrRezM.2Erhitzen

#execute at @e[type=minecraft:item,tag=EtiDrRezM.2Erhitzen] run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 4 force @a[distance=..25]

#execute at @e[type=minecraft:item,tag=EtiDrRezM.2Erhitzen] as @n[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=..-1},nbt={OnGround:true}] run function drop-rezeptmaschine:v2brennstoff

#execute at @e[type=minecraft:item,tag=EtiDrRezM.2Erhitzen] as @n[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1..},nbt={OnGround:true}] at @s run function drop-rezeptmaschine:v2material

#tag @e[type=minecraft:item,tag=EtiDrRezM.2Erhitzen] remove EtiDrRezM.2Erhitzen

#execute at @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0}] if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1..}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.02 5 force @a[distance=..25]

#execute at @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0}] as @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=..-1}] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.02 1 force @a[distance=..25]

#execute as @e[type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] at @s as @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=-1}] store result score @s PZDrRezM.2Fort run data get entity @s Item.count 1
#execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] at @s run scoreboard players remove @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=-1}] PZDrRezM.2Fort 1
#execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] at @s as @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=-1}] store result entity @s PickupDelay short 1 store result entity @s Item.count byte 1 run scoreboard players get @s PZDrRezM.2Fort

#execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1,PZDrRezM.2Fort=200..}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"},Tags:[]}

#execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1}] at @s if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=-1}] if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0}] run scoreboard players add @s PZDrRezM.2Fort 1
