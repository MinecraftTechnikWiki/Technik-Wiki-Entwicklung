
tag @a[tag=EtiSperrZ.3Ausweis,nbt=!{Inventory:[{tag:{EigSperrZ.3Gegenstand:true} } ] }] remove EtiSperrZ.3Ausweis
tag @a[tag=!EtiSperrZ.3Ausweis,nbt={Inventory:[{tag:{EigSperrZ.3Gegenstand:true} } ] }] add EtiSperrZ.3Ausweis

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] positioned ~-10 ~ ~-10 as @a[dx=20,dy=20,dz=20,tag=!EtiSperrZ.3Ausweis] positioned ~5 ~ ~5 unless entity @s[dx=10,dy=10,dz=10] run tellraw @s ["Sperrzone.3: ",{"text":"Dies ist eine Sperrzone, Unbefugten ist es nicht gestattet sie zu betreten!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] positioned ~-10 ~ ~-10 as @a[dx=20,dy=20,dz=20,tag=!EtiSperrZ.3Ausweis] positioned ~5 ~ ~5 unless entity @s[dx=10,dy=10,dz=10] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,sort=nearest,limit=1] eyes rotated ~90 ~ run teleport @s ^-1 ^ ^

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~ ~ ~5 2 0 0 0.01 1 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~5 ~ ~ 0 0 2 0.01 1 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~ ~ ~-5 2 0 0 0.01 1 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~-5 ~ ~ 0 0 2 0.01 1 force @a[distance=..25]

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~ ~ ~10 6 0 0 0.01 1 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~10 ~ ~ 0 0 6 0.01 1 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~ ~ ~-10 6 0 0 0.01 1 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~-10 ~ ~ 0 0 6 0.01 1 force @a[distance=..25]
