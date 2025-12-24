
scoreboard players set @n[distance=0,type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=0}] PZDrRezM.3Fort 1200

#execute if entity @s[scores={PZDrRezM.3Drop=-1}] run scoreboard players set VarDrRezM.3Brauen PZDrRezM.3Fort 800

#execute if entity @s[scores={PZDrRezM.3Drop=-2}] run scoreboard players set VarDrRezM.3Brauen PZDrRezM.3Fort 400
#execute if entity @s[scores={PZDrRezM.3Drop=-3}] run scoreboard players set VarDrRezM.3Brauen PZDrRezM.3Fort 1200

#scoreboard players operation @n[distance=0,type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=0}] PZDrRezM.3Fort = VarDrRezM.3Brauen PZDrRezM.3Fort

#execute if entity @s[scores={PZDrRezM.3Drop=-3}] at @s run summon minecraft:item ~ ~ ~ {PickupDelay:2s,Item:{id:"minecraft:bucket",count:1},Tags:["EtiDrRezM.3Alle"],Motion:[0.0d,0.3d,0.0d]}

execute store result score VarDrRezM.3Stapel PZDrRezM.3Drop run data get entity @s Item.count
execute store result entity @s Item.count byte 1 run scoreboard players remove VarDrRezM.3Stapel PZDrRezM.3Drop 1

execute at @s run playsound minecraft:block.lava.pop master @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 2 force @a[distance=..15]
