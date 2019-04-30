
tag @a[tag=EtiSchwB.p2SitztInLore,nbt=!{RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["EtiSchwB.p2Alle"]} } }] remove EtiSchwB.p2SitztInLore
tag @a[tag=!EtiSchwB.p2SitztInLore,nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["EtiSchwB.p2Alle"]} } }] add EtiSchwB.p2SitztInLore
execute if entity @p[y_rotation=-135..-45,tag=EtiSchwB.p2SitztInLore] as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Block] at @s run teleport @s ~3 ~ ~
execute if entity @p[y_rotation=45..135,tag=EtiSchwB.p2SitztInLore] as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Block] at @s run teleport @s ~-3 ~ ~

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Tester] at @s run function schwebebahn:vp2block_erfassen

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Ertaster] at @s run teleport @s ~1 ~ ~

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Reihe] as @e[dx=0,dy=5,dz=3,type=minecraft:armor_stand,tag=EtiSchwB.p2Ertaster] at @s run teleport @s ~-45 ~ ~-1
execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Reihe] as @e[dx=2,dy=5,dz=-2,type=minecraft:armor_stand,tag=EtiSchwB.p2Ertaster] at @s run teleport @s ~-45 ~1 ~4

execute at @e[tag=EtiSchwB.p2Setzer] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.01 10
execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Spalte] positioned ~ ~7 ~ at @e[dx=2,dy=2,dz=4,type=minecraft:armor_stand] run kill @e[dx=2,dy=-7,dz=-5,type=minecraft:armor_stand]
execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Spalte] positioned ~ ~7 ~ at @e[dx=2,dy=2,dz=4,type=minecraft:armor_stand] run kill @e[dx=2,dy=-7,dz=-5,type=minecraft:armor_stand]

execute at @e[tag=EtiSchwB.p2Block,sort=nearest,limit=1] if entity @p[y_rotation=-135..-45,scores={PZSchwB.p2Nr=1..},nbt={OnGround:true}] as @e[tag=EtiSchwB.p2Block] at @s run teleport @s ~2 ~ ~
execute at @e[tag=EtiSchwB.p2Block,sort=nearest,limit=1] if entity @p[y_rotation=45..135,scores={PZSchwB.p2Nr=1..},nbt={OnGround:true}] as @e[tag=EtiSchwB.p2Block] at @s run teleport @s ~-2 ~ ~

execute as @a[y_rotation=-135..135,scores={PZSchwB.p2Nr=1..},nbt={OnGround:true}] unless entity @s[y_rotation=-45..45] at @s rotated ~90 0 run teleport @s ^2 ^ ^

scoreboard players set @a[scores={PZSchwB.p2Nr=1..}] PZSchwB.p2Nr 0
