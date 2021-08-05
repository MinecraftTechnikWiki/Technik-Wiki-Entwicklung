
#scoreboard players remove @e[distance=0.1,type=minecraft:item,tag=EtiDrRezM.2Erhitzen,sort=nearest,limit=1] PZDrRezM.2Fort 1

#execute if score @s PZDrRezM.2Drop matches -1

execute if entity @s[scores={PZDrRezM.2Drop=-1}] run scoreboard players set VarDrRezM.2Brennen PZDrRezM.2Fort 100
execute if entity @s[scores={PZDrRezM.2Drop=-2}] run scoreboard players set VarDrRezM.2Brennen PZDrRezM.2Fort 400
execute if entity @s[scores={PZDrRezM.2Drop=-3}] run scoreboard players set VarDrRezM.2Brennen PZDrRezM.2Fort 1200

#say @e[distance=0,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0},sort=nearest,limit=1]

scoreboard players operation @e[distance=0,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0},sort=nearest,limit=1] PZDrRezM.2Fort = VarDrRezM.2Brennen PZDrRezM.2Fort

#execute if entity @s[scores={PZDrRezM.2Drop=-1}] run scoreboard players set @e[distance=0.1,type=minecraft:item,tag=EtiDrRezM.2Erhitzen,sort=nearest,limit=1] PZDrRezM.2Fort 100
#execute if entity @s[scores={PZDrRezM.2Drop=-2}] run scoreboard players set @e[distance=0.1,type=minecraft:item,tag=EtiDrRezM.2Erhitzen,sort=nearest,limit=1] PZDrRezM.2Fort 400
#execute if entity @s[scores={PZDrRezM.2Drop=-3}] run scoreboard players set @e[distance=0.1,type=minecraft:item,tag=EtiDrRezM.2Erhitzen,sort=nearest,limit=1] PZDrRezM.2Fort 1200

#scoreboard players set @s[scores={PZDrRezM.2Drop=-1,PZDrRezM.2Fort=100..}] PZDrRezM.2Fort 0
#scoreboard players set @s[scores={PZDrRezM.2Drop=-2,PZDrRezM.2Fort=400..}] PZDrRezM.2Fort 0
#scoreboard players set @s[scores={PZDrRezM.2Drop=-3,PZDrRezM.2Fort=1200..}] PZDrRezM.2Fort 0

execute if entity @s[scores={PZDrRezM.2Drop=-3}] at @s run summon minecraft:item ~ ~ ~ {PickupDelay:10s,Item:{id:"minecraft:bucket",Count:1b},Tags:["EtiDrRezM.2Alle","EtiDrRezM.2Brennstoff"],Motion:[0.0d,0.3d,0.0d]}
execute if entity @s[scores={PZDrRezM.2Drop=-3}] run data modify entity @e[type=minecraft:item,tag=EtiDrRezM.2Brennstoff,sort=nearest,limit=1] Item.tag merge from entity @s Item.tag
execute if entity @s[scores={PZDrRezM.2Drop=-3}] run tag @e[type=minecraft:item,tag=EtiDrRezM.2Brennstoff,sort=nearest,limit=1] remove EtiDrRezM.2Brennstoff

#execute if entity @s[scores={PZDrRezM.2Fort=1}] run function drop-rezeptmaschine:v2stapel

execute store result score VarDrRezM.2Stapel PZDrRezM.2Drop run data get entity @s Item.Count
execute store result entity @s Item.Count byte 1 run scoreboard players remove VarDrRezM.2Stapel PZDrRezM.2Drop 1

execute at @s run playsound minecraft:block.lava.pop master @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 2 force @a[distance=..15]

#scoreboard players set @s[scores={PZDrRezM.2Fort=-1}] PZDrRezM.2Fort 0

#particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 2 force

#execute if entity @s[scores={PZDrRezM.2Drop=-1,PZDrRezM.2Fort=100..}] store result score VarDrRezM.2Stapel PZDrRezM.2Drop run data get entity @s Item.Count
#execute store result entity @s[scores={PZDrRezM.2Drop=-1,PZDrRezM.2Fort=100..}] Item.Count byte 1 run scoreboard players remove VarDrRezM.2Stapel PZDrRezM.2Drop 1

#data merge entity @s[scores={PZDrRezM.2Drop=-1,PZDrRezM.2Fort=200..}] {Item:{id:"minecraft:cooked_porkchop"},Tags:[]}

#execute as @e[distance=..50,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=1}] at @s if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=-1}] if entity @e[distance=..3,type=minecraft:item,tag=EtiDrRezM.2Drop,scores={PZDrRezM.2Drop=0}] run scoreboard players add @s PZDrRezM.2Fort 1
