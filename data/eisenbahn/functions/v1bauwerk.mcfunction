
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ 270 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute at @s[tag=EtiEisenB.1Strecke] run setblock ^ ^ ^-15 minecraft:structure_block{mode:"LOAD"} replace

execute at @s[tag=EtiEisenB.1Gleis] run data merge block ^ ^ ^-15 {name:"eisenbahn:v1eisenbahngleis"}

execute at @s[tag=EtiEisenB.1Gleis] if entity @p[y_rotation=45..135] run data merge block ^ ^ ^-15 {rotation:"CLOCKWISE_180",posX:15,posY:0,posZ:3}
execute at @s[tag=EtiEisenB.1Gleis] if entity @p[y_rotation=135..-135] run data merge block ^ ^ ^-15 {rotation:"COUNTERCLOCKWISE_90",posX:-3,posY:0,posZ:15}
execute at @s[tag=EtiEisenB.1Gleis] if entity @p[y_rotation=-135..-45] run data merge block ^ ^ ^-15 {rotation:"NONE",posX:-15,posY:0,posZ:-3}
execute at @s[tag=EtiEisenB.1Gleis] if entity @p[y_rotation=-45..45] run data merge block ^ ^ ^-15 {rotation:"CLOCKWISE_90",posX:3,posY:0,posZ:-15}

execute at @s[tag=EtiEisenB.1Kreuzung] run data merge block ^ ^ ^-15 {name:"eisenbahn:v1eisenbahngleiskreuzung"}

execute at @s[tag=EtiEisenB.1Kreuzung] if entity @p[y_rotation=45..135] run data merge block ^ ^ ^-15 {rotation:"CLOCKWISE_180",posX:15,posY:0,posZ:15}
execute at @s[tag=EtiEisenB.1Kreuzung] if entity @p[y_rotation=135..-135] run data merge block ^ ^ ^-15 {rotation:"COUNTERCLOCKWISE_90",posX:-15,posY:0,posZ:15}
execute at @s[tag=EtiEisenB.1Kreuzung] if entity @p[y_rotation=-135..-45] run data merge block ^ ^ ^-15 {rotation:"NONE",posX:-15,posY:0,posZ:-15}
execute at @s[tag=EtiEisenB.1Kreuzung] if entity @p[y_rotation=-45..45] run data merge block ^ ^ ^-15 {rotation:"CLOCKWISE_90",posX:15,posY:0,posZ:-15}

execute at @s[tag=EtiEisenB.1Strecke] run setblock ^1 ^ ^-15 minecraft:redstone_block replace

execute at @s[tag=EtiEisenB.1Station] if block ~ ~-1 ~ minecraft:smooth_stone as @p[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ^ ^ ^-3 minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-14,posY:0,posZ:-3,name:"eisenbahn:v1station"} replace
execute at @s[tag=EtiEisenB.1Station] if block ~ ~-1 ~ minecraft:smooth_stone as @p[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ^ ^ ^-3 minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:3,posY:0,posZ:-14,name:"eisenbahn:v1station"} replace

execute at @s[tag=EtiEisenB.1Station] if block ~ ~-1 ~ minecraft:smooth_stone run setblock ^1 ^ ^-3 minecraft:redstone_block replace

execute as @s[tag=EtiEisenB.1Station] unless block ~ ~-1 ~ minecraft:smooth_stone run tellraw @a[distance=..3] ["Eisenbahn.1: ",{"text":"Der Rüstungsständer für die Station muss auf glatten Stein (Eisenbahngleis) platziert werden!","color":"red","bold":true}]

kill @s
