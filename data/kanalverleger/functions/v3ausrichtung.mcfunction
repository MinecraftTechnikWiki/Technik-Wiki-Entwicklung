
execute store result score VarKanV.3KanalVariante PZKanV.3Schl run data get entity @s SelectedItem.tag.Enchantments[0].lvl

fill ^8 ^1 ^-1 ^-8 ^3 ^-1 minecraft:quartz_block replace minecraft:air
fill ^9 ^4 ^-1 ^-9 ^4 ^-1 minecraft:quartz_slab replace minecraft:air

scoreboard players set VarKanV.3Pfeiler PZKanV.3Schl 0

execute if score VarKanV.3KanalVariante PZKanV.3Schl matches 10 if entity @s[y_rotation=135..-135] rotated 180 0 run function kanalverleger:v3kanal_strecke
execute if score VarKanV.3KanalVariante PZKanV.3Schl matches 10 if entity @s[y_rotation=-135..-45] rotated -90 0 run function kanalverleger:v3kanal_strecke
execute if score VarKanV.3KanalVariante PZKanV.3Schl matches 10 if entity @s[y_rotation=-45..45] rotated 0 0 run function kanalverleger:v3kanal_strecke
execute if score VarKanV.3KanalVariante PZKanV.3Schl matches 10 if entity @s[y_rotation=45..135] rotated 90 0 run function kanalverleger:v3kanal_strecke

execute if score VarKanV.3KanalVariante PZKanV.3Schl matches 20 if entity @s[y_rotation=135..-135] rotated 180 0 run function kanalverleger:v3kanal_bruecke
execute if score VarKanV.3KanalVariante PZKanV.3Schl matches 20 if entity @s[y_rotation=-135..-45] rotated -90 0 run function kanalverleger:v3kanal_bruecke
execute if score VarKanV.3KanalVariante PZKanV.3Schl matches 20 if entity @s[y_rotation=-45..45] rotated 0 0 run function kanalverleger:v3kanal_bruecke
execute if score VarKanV.3KanalVariante PZKanV.3Schl matches 20 if entity @s[y_rotation=45..135] rotated 90 0 run function kanalverleger:v3kanal_bruecke
