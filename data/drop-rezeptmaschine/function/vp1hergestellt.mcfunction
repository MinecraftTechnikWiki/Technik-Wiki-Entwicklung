
#execute store result score VarDrRezM.1Stapel PZDrRezM.1Drop run data get entity @s Item.count
#execute store result entity @s Item.count byte 1 run scoreboard players remove VarDrRezM.1Stapel PZDrRezM.1Drop 1

summon minecraft:item ~ ~ ~ {PickupDelay:10s,Item:{id:"minecraft:name_tag",count:1},Tags:["EtiDrRezM.1Alle","EtiDrRezM.1Hergestellt"],Motion:[0.0d,0.3d,0.0d]}

execute if entity @s[scores={PZDrRezM.1Drop=3}] run data merge entity @n[type=minecraft:item,tag=EtiDrRezM.1Hergestellt] {Item:{id:"minecraft:crossbow"} }
execute if entity @s[scores={PZDrRezM.1Drop=6}] run data merge entity @n[type=minecraft:item,tag=EtiDrRezM.1Hergestellt] {Item:{id:"minecraft:armor_stand"} }

data modify entity @n[type=minecraft:item,tag=EtiDrRezM.1Hergestellt] Item.components merge from entity @s Item.components
tag @n[type=minecraft:item,tag=EtiDrRezM.1Hergestellt] remove EtiDrRezM.1Hergestellt

playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 1 1 0.1
