
#execute store result score VarDrRezM.1Stapel PZDrRezM.1Drop run data get entity @s Item.Count
#execute store result entity @s Item.Count byte 1 run scoreboard players remove VarDrRezM.1Stapel PZDrRezM.1Drop 1

summon minecraft:item ~ ~ ~ {PickupDelay:10s,Item:{id:"minecraft:name_tag",Count:1b},Tags:["EtiDrRezM.1Alle","EtiDrRezM.1Hergestellt"],Motion:[0.0d,0.3d,0.0d]}

execute if entity @s[scores={PZDrRezM.1Drop=3}] run data merge entity @e[type=minecraft:item,tag=EtiDrRezM.1Hergestellt,sort=nearest,limit=1] {Item:{id:"minecraft:crossbow"}}
execute if entity @s[scores={PZDrRezM.1Drop=6}] run data merge entity @e[type=minecraft:item,tag=EtiDrRezM.1Hergestellt,sort=nearest,limit=1] {Item:{id:"minecraft:armor_stand"}}

data modify entity @e[type=minecraft:item,tag=EtiDrRezM.1Hergestellt,sort=nearest,limit=1] Item.tag merge from entity @s Item.tag
tag @e[type=minecraft:item,tag=EtiDrRezM.1Hergestellt,sort=nearest,limit=1] remove EtiDrRezM.1Hergestellt

playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 1 1 0.1
