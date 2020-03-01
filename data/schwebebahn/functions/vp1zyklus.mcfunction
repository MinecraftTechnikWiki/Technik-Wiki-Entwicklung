
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Strecke] at @s run function schwebebahn:vp1transrapid_strecke

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Erstellen] at @s run function schwebebahn:vp1erstellen

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] as @p[distance=..2,nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["EtiSchwB.p1Transrapid"] } } }] run function schwebebahn:vp1ausloeser

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] run tag @a[distance=3..8,tag=EtiSchwB.p1SitztInLore] remove EtiSchwB.p1SitztInLore
