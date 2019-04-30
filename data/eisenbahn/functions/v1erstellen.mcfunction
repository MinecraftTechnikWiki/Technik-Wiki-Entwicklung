
tag @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:furnace",Count:1b} }] add EtiEisenB.1Lok
execute if entity @e[type=minecraft:item,tag=EtiEisenB.1Lok] run function eisenbahn:v1erstellen_lok
kill @e[distance=..2,type=minecraft:item,tag=EtiEisenB.1Lok]


tag @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:chest",Count:1b} }] add EtiEisenB.1Waggon
execute if entity @e[type=minecraft:item,tag=EtiEisenB.1Waggon] run function eisenbahn:v1erstellen_waggon
kill @e[distance=..2,type=minecraft:item,tag=EtiEisenB.1Waggon]

tag @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:shulker_box",Count:1b} }] add EtiEisenB.1Steuerwaggon
execute if entity @e[type=minecraft:item,tag=EtiEisenB.1Steuerwaggon] run function eisenbahn:v1erstellen_steuerwaggon
kill @e[distance=..2,type=minecraft:item,tag=EtiEisenB.1Steuerwaggon]


execute if entity @s[y_rotation=135..-135] as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] at @s run teleport @s ~ ~ ~ 180 ~
execute if entity @s[y_rotation=-135..-45] as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[y_rotation=-45..45] as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[y_rotation=45..135] as @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] at @s run teleport @s ~ ~ ~ 90 ~
tag @e[type=minecraft:armor_stand,tag=EtiEisenB.ZugErstellen] remove EtiEisenB.ZugErstellen
