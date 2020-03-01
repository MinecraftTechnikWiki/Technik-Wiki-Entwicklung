
execute store result score @s PZKanBTBM.1Schl run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}].lvl

fill ^3 ^1 ^-1 ^-3 ^1 ^-1 minecraft:quartz_slab replace minecraft:air

scoreboard players set VarKanBTBM.1Pfeiler PZKanBTBM.1Schl 0

execute if entity @s[scores={PZKanBTBM.1Schl=1},y_rotation=135..-135] rotated 180 0 run function kanalbruecken-_und_-tunnelbaumaschine:v1kanal_einspur
execute if entity @s[scores={PZKanBTBM.1Schl=1},y_rotation=-135..-45] rotated -90 0 run function kanalbruecken-_und_-tunnelbaumaschine:v1kanal_einspur
execute if entity @s[scores={PZKanBTBM.1Schl=1},y_rotation=-45..45] rotated 0 0 run function kanalbruecken-_und_-tunnelbaumaschine:v1kanal_einspur
execute if entity @s[scores={PZKanBTBM.1Schl=1},y_rotation=45..135] rotated 90 0 run function kanalbruecken-_und_-tunnelbaumaschine:v1kanal_einspur

execute if entity @s[scores={PZKanBTBM.1Schl=2},y_rotation=135..-135] rotated 180 0 run function kanalbruecken-_und_-tunnelbaumaschine:v1kanal_zweispur
execute if entity @s[scores={PZKanBTBM.1Schl=2},y_rotation=-135..-45] rotated -90 0 run function kanalbruecken-_und_-tunnelbaumaschine:v1kanal_zweispur
execute if entity @s[scores={PZKanBTBM.1Schl=2},y_rotation=-45..45] rotated 0 0 run function kanalbruecken-_und_-tunnelbaumaschine:v1kanal_zweispur
execute if entity @s[scores={PZKanBTBM.1Schl=2},y_rotation=45..135] rotated 90 0 run function kanalbruecken-_und_-tunnelbaumaschine:v1kanal_zweispur
