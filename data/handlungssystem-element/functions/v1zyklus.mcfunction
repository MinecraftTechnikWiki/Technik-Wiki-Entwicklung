
execute at @e[type=minecraft:villager,tag=EtiHanSE.1Alle] run playsound minecraft:entity.villager.ambient master @a[distance=..3,scores={PZHanSE.1Reden=1..}] ~ ~ ~ 1 0.5 1

# Auftrag 3
execute as @e[type=minecraft:villager,tag=EtiHanSE.1Martin] at @s if entity @a[distance=..3] run function handlungssystem-element:v1auftrag_3

data merge entity @e[type=minecraft:item,tag=!EtiHanSE.1BerndSeele,nbt={Item:{tag:{Berndseele:true} } },sort=nearest,limit=1] {Age:-32768s,PickupDelay:32767s,Tags:["EtiHanSE.1Alle","EtiHanSE.1BerndSeele"]}

# Auftrag 2
execute as @e[type=minecraft:villager,tag=EtiHanSE.1Klaus] at @s if entity @p[distance=..3] run function handlungssystem-element:v1auftrag_2

execute as @e[type=minecraft:item,nbt={Item:{tag:{Klaus:true} } } ] run function handlungssystem-element:v1auftrag_2_klausreste

execute as @p[tag=EtiHanSE.1Grabbox,nbt=!{Inventory:[{id:"minecraft:chest",tag:{Grabbox:true}}]}] run function handlungssystem-element:v1auftrag_2_grabbox

# Auftrag 1
execute as @e[type=minecraft:villager,tag=EtiHanSE.1Ralf] at @s if entity @p[distance=..3] run function handlungssystem-element:v1auftrag_1

execute as @p[tag=EtiHanSE.1Waffenbox,nbt=!{Inventory:[{id:"minecraft:chest",tag:{Waffenbox:true}}]}] run function handlungssystem-element:v1auftrag_1_waffenbox
