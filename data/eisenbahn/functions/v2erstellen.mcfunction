
tag @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:furnace",Count:1b} }] add EtiEisenB.2Lok
execute if entity @e[type=minecraft:item,tag=EtiEisenB.2Lok] run function eisenbahn:v2erstellen_lok
kill @e[distance=..2,type=minecraft:item,tag=EtiEisenB.2Lok]

tag @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:chest",Count:1b} }] add EtiEisenB.2Waggon
execute if entity @e[type=minecraft:item,tag=EtiEisenB.2Waggon] run function eisenbahn:v2erstellen_waggon
kill @e[distance=..2,type=minecraft:item,tag=EtiEisenB.2Waggon]

tag @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:shulker_box",Count:1b} }] add EtiEisenB.2Steuerwaggon
execute if entity @e[type=minecraft:item,tag=EtiEisenB.2Steuerwaggon] run function eisenbahn:v2erstellen_steuerwaggon
kill @e[distance=..2,type=minecraft:item,tag=EtiEisenB.2Steuerwaggon]

execute if entity @s[y_rotation=135..-135] as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] at @s run teleport @s ~ ~ ~ 180 ~
execute if entity @s[y_rotation=-135..-45] as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[y_rotation=-45..45] as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[y_rotation=45..135] as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] at @s run teleport @s ~ ~ ~ 90 ~
tag @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] remove EtiEisenB.ZugErstellen
