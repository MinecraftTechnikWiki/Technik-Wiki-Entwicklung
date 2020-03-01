
execute store result score @s PZKanBTBM.2Schl run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}].lvl

fill ^8 ^1 ^-1 ^-8 ^3 ^-1 minecraft:quartz_block replace minecraft:air
fill ^9 ^4 ^-1 ^-9 ^4 ^-1 minecraft:quartz_slab replace minecraft:air

scoreboard players set VarKanBTBM.2Pfeiler PZKanBTBM.2Schl 0

execute if entity @s[scores={PZKanBTBM.2Schl=1},y_rotation=135..-135] rotated 180 0 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_strecke
execute if entity @s[scores={PZKanBTBM.2Schl=1},y_rotation=-135..-45] rotated -90 0 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_strecke
execute if entity @s[scores={PZKanBTBM.2Schl=1},y_rotation=-45..45] rotated 0 0 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_strecke
execute if entity @s[scores={PZKanBTBM.2Schl=1},y_rotation=45..135] rotated 90 0 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_strecke

execute if entity @s[scores={PZKanBTBM.2Schl=2},y_rotation=135..-135] rotated 180 0 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_bruecke
execute if entity @s[scores={PZKanBTBM.2Schl=2},y_rotation=-135..-45] rotated -90 0 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_bruecke
execute if entity @s[scores={PZKanBTBM.2Schl=2},y_rotation=-45..45] rotated 0 0 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_bruecke
execute if entity @s[scores={PZKanBTBM.2Schl=2},y_rotation=45..135] rotated 90 0 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_bruecke
