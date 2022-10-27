
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0

execute as @e[distance=..2,type=minecraft:item] store success score @s PZEisenB.2Waggon if entity @s[nbt={Item:{id:"minecraft:furnace",Count:1b} }]
scoreboard players set @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=0},nbt={Item:{id:"minecraft:chest",Count:1b} }] PZEisenB.2Waggon 2
scoreboard players set @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=0},nbt={Item:{id:"minecraft:shulker_box",Count:1b} }] PZEisenB.2Waggon 3

execute if entity @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=1..}] run scoreboard players add @s PZEisenB.2Waggon 1
execute if entity @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=1}] as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Wagen] at @s run teleport @s ^ ^ ^18
execute if entity @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=2..3}] as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Wagen] at @s run teleport @s ^ ^ ^31

execute if entity @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=1..}] run summon minecraft:armor_stand ^ ^ ^1 {Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Lok","color":"red","bold":true}',Tags:["EtiEisenB.2Alle","EtiEisenB.2Wagen","EtiEisenB.ZugErstellen"],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } }

execute as @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=1..}] run scoreboard players operation @e[distance=..2,type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen,sort=nearest,limit=1] PZEisenB.2Waggon = @s PZEisenB.2Waggon

execute if entity @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=2}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen,sort=nearest,limit=1] {CustomName:'{"text":"Waggon","color":"red","bold":true}'}

execute if entity @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=2}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen,sort=nearest,limit=1] {CustomName:'{"text":"Steuerwaggon","color":"red","bold":true}'}

execute as @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=2..3}] run data modify entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen,sort=nearest,limit=1] ArmorItems[3].id set from entity @s Item.id

kill @e[distance=..2,type=minecraft:item,scores={PZEisenB.2Waggon=1..}]

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] positioned as @s run teleport @s ~ ~ ~ ~ ~
tag @e[distance=..2,type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen,sort=nearest,limit=1] remove EtiEisenB.ZugErstellen
