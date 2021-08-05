
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute at @s if block ~ ~-1 ~ minecraft:diorite_stairs[half=bottom] if block ^1 ^-1 ^ minecraft:polished_diorite_stairs[half=top] if block ^-1 ^-1 ^ minecraft:polished_diorite_stairs[half=top] if blocks ^1 ^-1 ^ ^-1 ^-1 ^22 ^1 ^-1 ^ all run summon minecraft:armor_stand ~ ~1 ~ {Small:true,Invisible:true,NoGravity:true,CustomName:'{"bold":true,"color":"red","text":"falsch"}',Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Transrapid","EtiSchwB.p1Fahren"],Passengers:[{id:"minecraft:minecart",Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Sitz"]},{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Sitz","EtiSchwB.p1Rotation"] } ] }

execute at @s run teleport @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid,sort=nearest,limit=1] ~ ~1 ~ ~ ~

execute at @s as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid,sort=nearest,limit=1] at @s run function schwebebahn:vp1transrapid

execute at @s unless entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid,sort=nearest,limit=1] run tellraw @a[distance=..5] ["Schwebebahn.erweitert.1: ",{"text":"Es wurde unter dem Rüstungsständer für den Transrapid keine vollständige Transrapid-Strecke gefunden!","color":"red","bold":true}]

kill @s
