

execute at @a[scores={PZDrRezM.3Drop=1..}] as @e[type=minecraft:item,tag=!EtiDrRezM.3Drop,nbt={Item:{tag:{EigDrRezM.3Alle:true} } }] run function drop-rezeptmaschine:v3nummer

#execute at @a[scores={PZDrRezM.3Drop=1..}] as @e[type=minecraft:item,tag=!EtiDrRezM.3Drop,nbt={Item:{tag:{EigDrRezM.3Alle:true} } }] run data merge entity @s {Age:-32768s,Tags:["EtiDrRezM.3Drop"]}
#scoreboard players set @a[scores={PZDrRezM.3Drop=1..}] PZDrRezM.3Drop 0

execute as @e[type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=0}] at @s run function drop-rezeptmaschine:v3braustand
#execute as @e[type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=0,PZDrRezM.3Fort=1..}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 4 force @a[distance=..25]
