# Straße wird mit oder ohne Straßenbahngleisen errichtet.
fill ^5 ^1 ^ ^-5 ^9 ^1 minecraft:glass replace #strassenbaumaschine:v2umwelt
fill ^2 ^ ^ ^-2 ^ ^ minecraft:quartz_block replace
fill ^1 ^ ^ ^-1 ^ ^ minecraft:gray_concrete replace
execute if score VarStraBM.2Spur PZStraBM.2Laen matches 1 if entity @s[tag=EtiStraBM.2Bahngleis,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~1 minecraft:stone_brick_stairs[facing=south] replace
execute if score VarStraBM.2Spur PZStraBM.2Laen matches 1 if entity @s[tag=EtiStraBM.2Bahngleis,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~1 ~ ~ minecraft:stone_brick_stairs[facing=east] replace
execute if score VarStraBM.2Spur PZStraBM.2Laen matches 1 if entity @s[tag=EtiStraBM.2Bahngleis,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~-1 minecraft:stone_brick_stairs[facing=north] replace
execute if score VarStraBM.2Spur PZStraBM.2Laen matches 1 if entity @s[tag=EtiStraBM.2Bahngleis,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~-1 ~ ~ minecraft:stone_brick_stairs[facing=west] replace
fill ^4 ^1 ^ ^-4 ^1 ^ minecraft:stone_brick_slab replace
execute if score VarStraBM.2Spur PZStraBM.2Laen matches 2.. run fill ^4 ^1 ^ ^3 ^1 ^ minecraft:air replace
fill ^2 ^1 ^ ^-2 ^1 ^ minecraft:air replace
fill ^4 ^2 ^ ^-4 ^8 ^ minecraft:air replace

# Bei jedem Aufruf dieser Funktion wird eine Strichlinien-Variable um eins erhöht und alle drei Blöcke wird dann Wasser gesetzt um die typische Strichlinie zu erzeugen.
execute if score VarStraBM.2Spur PZStraBM.2Laen matches 2.. run scoreboard players add VarStraBM.2StrichLinie PZStraBM.2Laen 1
execute if score VarStraBM.2Spur PZStraBM.2Laen matches 2.. if score VarStraBM.2StrichLinie PZStraBM.2Laen matches 3.. run setblock ^2 ^ ^ minecraft:gray_concrete replace
execute if score VarStraBM.2Spur PZStraBM.2Laen matches 2.. if score VarStraBM.2StrichLinie PZStraBM.2Laen matches 3.. run scoreboard players set VarStraBM.2StrichLinie PZStraBM.2Laen 0

# Der Längenwert wird um eins reduziert und nur solange dieser über null liegt, wird die Funktion selbst nochmal um einen Block nach vorne versetzt aufgerufen.
scoreboard players remove VarStraBM.2Weite PZStraBM.2Laen 1
execute if score VarStraBM.2Weite PZStraBM.2Laen matches 1.. positioned ^ ^ ^1 run function strassenbaumaschine:v2spur
