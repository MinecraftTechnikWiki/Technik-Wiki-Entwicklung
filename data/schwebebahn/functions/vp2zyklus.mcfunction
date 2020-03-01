
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Strecke] at @s run function schwebebahn:vp2hyperloop_strecke

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Erstellen] at @s run function schwebebahn:vp2erstellen

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop] unless entity @p[distance=..20,tag=EtiSchwB.p2SitztInLore] as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] positioned ^6 ^2 ^ if entity @p[distance=..5] run teleport @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop] unless entity @p[distance=..20,tag=EtiSchwB.p2SitztInLore] as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] positioned ^-6 ^2 ^ if entity @p[distance=..5] run teleport @s ~ ~ ~

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop] as @p[distance=..20,nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["EtiSchwB.p2Halter"] } } }] run function schwebebahn:vp2ausloeser

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop] at @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] run tag @a[distance=3..8,tag=EtiSchwB.p2SitztInLore] remove EtiSchwB.p2SitztInLore
