
execute positioned ^ ^-1 ^22 run function schwebebahn:vp1fahrspur

execute if entity @s[tag=EtiSchwB.p1FahrbahnVorhanden] positioned ^ ^-1 ^22 if block ~ ~ ~ minecraft:air if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air run tag @s add EtiSchwB.p1FahrbahnStufeFrei

execute if entity @s[tag=EtiSchwB.p1FahrbahnVorhanden] positioned ^ ^ ^22 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air if block ^1 ^1 ^ minecraft:air if block ^2 ^1 ^ minecraft:air if block ^-1 ^1 ^ minecraft:air if block ^-2 ^1 ^ minecraft:air if block ^1 ^2 ^ minecraft:air if block ^2 ^2 ^ minecraft:air if block ^-1 ^2 ^ minecraft:air if block ^-2 ^2 ^ minecraft:air if block ^1 ^3 ^ minecraft:air if block ^2 ^3 ^ minecraft:air if block ^-1 ^3 ^ minecraft:air if block ^-2 ^3 ^ minecraft:air run tag @s add EtiSchwB.p1FahrbahnFrei

execute if entity @s[tag=EtiSchwB.p1FahrbahnStufeFrei,tag=EtiSchwB.p1FahrbahnFrei] positioned ^ ^-2 ^22 if block ~ ~ ~ minecraft:air if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air positioned ^ ^ ^-22 if block ~ ~ ~ minecraft:air if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air positioned ^ ^ ^-22 if block ~ ~ ~ minecraft:air if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air run tag @s add EtiSchwB.p1UntergrundFrei

execute if entity @s[tag=!EtiSchwB.p1UntergrundFrei,tag=EtiSchwB.p1FahrbahnFrei,tag=EtiSchwB.p1FahrbahnStufeFrei,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] positioned ~-20 ~ ~-1 as @e[dx=39,dy=3,dz=3,tag=!EtiSchwB.p1Sitz,tag=!EtiSchwB.p1SitztInLore] positioned as @s run teleport @s ^ ^ ^1
execute if entity @s[tag=!EtiSchwB.p1UntergrundFrei,tag=EtiSchwB.p1FahrbahnFrei,tag=!EtiSchwB.p1FahrbahnStufeFrei,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] positioned ~-20 ~ ~-1 as @e[dx=39,dy=3,dz=3,tag=!EtiSchwB.p1Sitz,tag=!EtiSchwB.p1SitztInLore] positioned as @s run teleport @s ^ ^1 ^1
execute if entity @s[tag=EtiSchwB.p1UntergrundFrei,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] positioned ~-20 ~ ~-1 as @e[dx=39,dy=3,dz=3,tag=!EtiSchwB.p1Sitz,tag=!EtiSchwB.p1SitztInLore] positioned as @s run teleport @s ^ ^-1 ^1

execute if entity @s[tag=!EtiSchwB.p1UntergrundFrei,tag=EtiSchwB.p1FahrbahnFrei,tag=EtiSchwB.p1FahrbahnStufeFrei,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] positioned ~-1 ~ ~-20 as @e[dx=3,dy=3,dz=39,tag=!EtiSchwB.p1Sitz,tag=!EtiSchwB.p1SitztInLore] positioned as @s run teleport @s ^ ^ ^1
execute if entity @s[tag=!EtiSchwB.p1UntergrundFrei,tag=EtiSchwB.p1FahrbahnFrei,tag=!EtiSchwB.p1FahrbahnStufeFrei,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] positioned ~-1 ~ ~-20 as @e[dx=3,dy=3,dz=39,tag=!EtiSchwB.p1Sitz,tag=!EtiSchwB.p1SitztInLore] positioned as @s run teleport @s ^ ^1 ^1
execute if entity @s[tag=EtiSchwB.p1UntergrundFrei,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] positioned ~-1 ~ ~-20 as @e[dx=3,dy=3,dz=39,tag=!EtiSchwB.p1Sitz,tag=!EtiSchwB.p1SitztInLore] positioned as @s run teleport @s ^ ^-1 ^1

execute if entity @s[tag=EtiSchwB.p1FahrbahnFrei] run function schwebebahn:vp1transrapid

data merge entity @s[tag=EtiSchwB.p1FahrbahnVorhanden] {Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Transrapid","EtiSchwB.p1Fahren"]}
