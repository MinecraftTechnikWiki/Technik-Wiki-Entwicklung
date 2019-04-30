
execute store result score VarKanV.1KanalVariante PZKanV.1Schl run data get entity @s SelectedItem.tag.Enchantments[0].lvl

fill ^3 ^1 ^-1 ^-3 ^1 ^-1 minecraft:quartz_slab replace minecraft:air

execute if score VarKanV.1KanalVariante PZKanV.1Schl matches 10 if entity @s[y_rotation=135..-135] rotated 180 0 run function kanalverleger:v1kanal_einspur
execute if score VarKanV.1KanalVariante PZKanV.1Schl matches 10 if entity @s[y_rotation=-135..-45] rotated -90 0 run function kanalverleger:v1kanal_einspur
execute if score VarKanV.1KanalVariante PZKanV.1Schl matches 10 if entity @s[y_rotation=-45..45] rotated 0 0 run function kanalverleger:v1kanal_einspur
execute if score VarKanV.1KanalVariante PZKanV.1Schl matches 10 if entity @s[y_rotation=45..135] rotated 90 0 run function kanalverleger:v1kanal_einspur

execute if score VarKanV.1KanalVariante PZKanV.1Schl matches 20 if entity @s[y_rotation=135..-135] rotated 180 0 run function kanalverleger:v1kanal_zweispur
execute if score VarKanV.1KanalVariante PZKanV.1Schl matches 20 if entity @s[y_rotation=-135..-45] rotated -90 0 run function kanalverleger:v1kanal_zweispur
execute if score VarKanV.1KanalVariante PZKanV.1Schl matches 20 if entity @s[y_rotation=-45..45] rotated 0 0 run function kanalverleger:v1kanal_zweispur
execute if score VarKanV.1KanalVariante PZKanV.1Schl matches 20 if entity @s[y_rotation=45..135] rotated 90 0 run function kanalverleger:v1kanal_zweispur
