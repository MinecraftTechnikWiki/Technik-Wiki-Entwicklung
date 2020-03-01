
execute at @e[type=minecraft:villager,tag=EtiAufS.p1Alle] run playsound minecraft:entity.villager.ambient master @a[distance=..3,scores={PZAufS.p1Reden=1..}] ~ ~ ~ 1 0.5 1

# Auftrag 3
execute as @e[type=minecraft:villager,tag=EtiAufS.p1Martin] at @s if entity @a[distance=..3] run function auftrag-system:vp1auftrag_3

data merge entity @e[type=minecraft:item,tag=!EtiAufS.p1BerndSeele,nbt={Item:{tag:{berndseele:true} } },sort=nearest,limit=1] {Age:-32768s,PickupDelay:32767s,Tags:["EtiAufS.p1Alle","EtiAufS.p1BerndSeele"]}

# Auftrag 2
execute as @e[type=minecraft:villager,tag=EtiAufS.p1Klaus] at @s if entity @p[distance=..3] run function auftrag-system:vp1auftrag_2

execute as @e[type=minecraft:item,nbt={Item:{tag:{klaus:true} } } ] run function auftrag-system:vp1auftrag_2_klausreste

execute as @p[tag=EtiAufS.p1Grabbox,nbt=!{Inventory:[{id:"minecraft:chest",tag:{grabbox:true} } ] } ] run function auftrag-system:vp1auftrag_2_grabbox

# Auftrag 1
execute as @e[type=minecraft:villager,tag=EtiAufS.p1Ralf] at @s if entity @p[distance=..3] run function auftrag-system:vp1auftrag_1

execute as @p[tag=EtiAufS.p1Waffenbox,nbt=!{Inventory:[{id:"minecraft:chest",tag:{waffenbox:true} } ] } ] run function auftrag-system:vp1auftrag_1_waffenbox
