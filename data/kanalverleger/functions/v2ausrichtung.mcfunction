
execute store result score VarKanV.2KanalVariante PZKanV.2Schl run data get entity @s SelectedItem.tag.Enchantments[0].lvl

fill ^3 ^1 ^-1 ^-3 ^1 ^-1 minecraft:quartz_slab replace minecraft:air

scoreboard players set VarKanV.2Pfeiler PZKanV.2Schl 0

execute if score VarKanV.2KanalVariante PZKanV.2Schl matches 10 if entity @s[y_rotation=135..-135] rotated 180 0 run function kanalverleger:v2kanal_einspur
execute if score VarKanV.2KanalVariante PZKanV.2Schl matches 10 if entity @s[y_rotation=-135..-45] rotated -90 0 run function kanalverleger:v2kanal_einspur
execute if score VarKanV.2KanalVariante PZKanV.2Schl matches 10 if entity @s[y_rotation=-45..45] rotated 0 0 run function kanalverleger:v2kanal_einspur
execute if score VarKanV.2KanalVariante PZKanV.2Schl matches 10 if entity @s[y_rotation=45..135] rotated 90 0 run function kanalverleger:v2kanal_einspur

execute if score VarKanV.2KanalVariante PZKanV.2Schl matches 20 if entity @s[y_rotation=135..-135] rotated 180 0 run function kanalverleger:v2kanal_zweispur
execute if score VarKanV.2KanalVariante PZKanV.2Schl matches 20 if entity @s[y_rotation=-135..-45] rotated -90 0 run function kanalverleger:v2kanal_zweispur
execute if score VarKanV.2KanalVariante PZKanV.2Schl matches 20 if entity @s[y_rotation=-45..45] rotated 0 0 run function kanalverleger:v2kanal_zweispur
execute if score VarKanV.2KanalVariante PZKanV.2Schl matches 20 if entity @s[y_rotation=45..135] rotated 90 0 run function kanalverleger:v2kanal_zweispur
