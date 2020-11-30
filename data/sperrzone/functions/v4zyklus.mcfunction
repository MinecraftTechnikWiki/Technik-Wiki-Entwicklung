
#tag @a[nbt={SelectedItem:{EigSperrZ.4Alle:true} }] add EtiSperrZ.4Zone

execute as @a[distance=..50,nbt={SelectedItem:{tag:{EigSperrZ.4Alle:true} } }] unless entity @s[scores={PZSperrZ.4Ausl=0}] run function sperrzone:v4ausloeser

#tag @a[tag=EtiSperrZ.4Zone] remove EtiSperrZ.4Zone

execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.4Zone] unless score @s PZSperrZ.4Groes matches 0.. at @s at @p[distance=..5] run scoreboard players operation @s PZSperrZ.4Groes = @p PZSperrZ.4Groes
#execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.4Zone] unless score @s PZSperrZ.4Groes matches 0.. run kill @s

execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.4Zone] at @s run function sperrzone:v4position_zone
