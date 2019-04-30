
tag @p[distance=..10,tag=!EtiFlugz.1Pilot] add EtiFlugz.1Pilot
execute if block ~ ~-1 ~ minecraft:command_block{SuccessCount:0} run tellraw @a[distance=..10] ["Flugzeug.1: ",{"text":"Dieses Flugzeug ist bereits in Benutzung, warte bis dieses wieder entfernt wurde, damit es wieder einsatzbereit ist.","color":"light_purple","bold":true}]

data merge block ~-2 ~ ~ {SuccessCount:0}
summon minecraft:armor_stand ~ ~30 ~30 {Small:true,NoGravity:true,Tags:["EtiFlugz.1Flugzeug"],Rotation:[90f,0f]}
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run setblock ~ ~-1 ~ minecraft:piston[facing=up] replace
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug,sort=nearest,limit=1] run teleport @p[tag=EtiFlugz.1Pilot] ~ ~1 ~
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run clone -292 27 -730 -262 39 -700 ~-16 ~-4 ~-15
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run replaceitem entity @p[distance=..2] hotbar.0 minecraft:wooden_sword{Flugzeug.1:true,AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Name:"Extraschaden",Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"}],Unbreakable:true,Enchantments:[{id:-1}],HideFlags:6,display:{Name:"{\"text\":\"Steuerknüppel\",\"color\":\"gold\"}",Lore:["Flugzeug.1","Wähle den Steuerknüppel aus","um das Flugzeug zu drehen"]} }

tellraw @p[tag=EtiFlugz.1Pilot] ["Flugzeug.2: ",{"text":"Schritt1: ","color":"black","bold":true},{"text":"Wähle den Pilotenknueppel in der Schnellzugriffssleiste aus (Holzschwert)","color":"yellow"},"\n ",{"text":"Schritt2: ","color":"black","bold":true},{"text":"Laufe mit dem Pilotenknüppel los, damit das Flugzeug losfliegt","color":"yellow"}]
data merge block -287 26 -696 {auto:true}
data merge block -285 26 -731 {auto:true}

execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] as @p[distance=..5,tag=EtiFlugz.1Pilot,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{Flugzeug.1:true}}}] at @s if block ~25 ~ ~ minecraft:air if block ~-25 ~ ~ minecraft:air if block ~ ~ ~25 minecraft:air if block ~ ~ ~-25 minecraft:air
execute at @a[tag=EtiFlugz.1Pilot] if block ~ ~-10 ~ minecraft:air if block ~ ~-1 ~ minecraft:stone_slab run teleport @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] ~ ~-2 ~
execute at @a[tag=EtiFlugz.1Pilot] if block ~ ~-10 ~ minecraft:air if block ~ ~-1 ~ minecraft:black_terracotta run teleport @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] ~ ~-2 ~

tellraw @p[tag=EtiFlugz.1Pilot] ["Flugzeug.1: ",{"text":"Achtung! Das Flugzeug folgt nun deiner Bewegung und Blickrichtung!","color":"red","bold":true}]

execute at @e[distance=..250,type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] at @p[distance=..5,tag=EtiFlugz.1Pilot,y_rotation=-135..-45] if block ~ ~-10 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run setblock -289 26 -732 minecraft:redstone_block
execute at @e[distance=..250,type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] at @p[distance=..5,tag=EtiFlugz.1Pilot,y_rotation=135..-135] if block ~ ~-10 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run setblock -286 26 -732 minecraft:redstone_block
execute at @e[distance=..250,type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] at @p[distance=..5,tag=EtiFlugz.1Pilot,y_rotation=-45..45] if block ~ ~-10 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run setblock -288 26 -732 minecraft:redstone_block
execute at @e[distance=..250,type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] at @p[distance=..5,tag=EtiFlugz.1Pilot,y_rotation=45..135] if block ~ ~-10 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run setblock -287 26 -732 minecraft:redstone_block
fill -289 26 -732 -286 26 -732 minecraft:air replace minecraft:redstone_block
execute at @p[tag=EtiFlugz.1Pilot] if block ~ ~-10 ~ minecraft:air at @e[distance=..5,type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run clone -292 27 -730 -262 39 -700 ~-15 ~-2 ~-15

tellraw @p[tag=EtiFlugz.1Pilot] ["Flugzeug.1: ",{"text":"Das Flugzeug wurde angehalten","color":"green"}]

tellraw @p[distance=..10] ["Flugzeug.1: ",{"text":"Das Flugzeug wurde nun entfernt","color":"yellow"}]
tag @p[distance=..25,tag=EtiFlugz.1Pilot] remove EtiFlugz.1Pilot
clear @a minecraft:wooden_sword{Flugzeug.1:true}
kill @e[type=minecraft:armor_stand,name=EtiFlugz.1Flugzeug]
data merge block -287 26 -696 {auto:false}
execute at @p run fill ~-15 ~-5 ~-15 ~15 ~6 ~15 minecraft:air replace

# Flugzeug 2


tag @p[distance=..10,tag=!EtiFlugz.2Pilot] add EtiFlugz.2Pilot
execute if block ~ ~-1 ~ minecraft:command_block{SuccessCount:0} run tellraw @a[distance=..10] ["Flugzeug.2: ",{"text":"Dieses Flugzeug ist bereits in Benutzung, warte bis dieses wieder entfernt wurde, damit es wieder einsatzbereit ist.","color":"light_purple"}]


data merge block ~-2 ~ ~ {SuccessCount:0}
summon minecraft:armor_stand ~ ~30 ~30 {Small:true,NoGravity:true,Tags:["EtiFlugz.2Flugzeug"],Rotation:[270f,0f]}
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run setblock ~ ~-1 ~ minecraft:piston[facing=up]
teleport @p[distance=..10,tag=EtiFlugz.2Pilot] @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug,sort=nearest,limit=1]
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run clone -351 30 -729 -329 37 -701 ~-13 ~-2 ~-14
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run replaceitem entity @p[distance=..2] hotbar.0 minecraft:wooden_sword{Flugzeug.2:true,AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Name:"Extraschaden",Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"}],Unbreakable:true,Enchantments:[{id:-1}],HideFlags:6,display:{Name:"{\"text\":\"Steuerknüppel\",\"color\":\"gold\"}",Lore:["Flugzeug.2","Wähle den Steuerknüppel aus","um das Flugzeug zu drehen"]} }
tellraw @p[tag=EtiFlugz.2Pilot] ["Flugzeug.2: ",{"text":"Schritt1: ","color":"black","bold":true},{"text":"Wähle den Pilotenknueppel in der Schnellzugriffssleiste aus (Holzschwert)","color":"yellow"},"\n ",{"text":"Schritt2: ","color":"black","bold":true},{"text":"Laufe mit dem Pilotenknüppel los, damit das Flugzeug losfliegt","color":"yellow"}]
data merge block -348 26 -696 {auto:true}
data merge block -351 26 -731 {auto:true}



execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] at @p[distance=..5,tag=EtiFlugz.2Pilot,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{Flugzeug.2:true}}}] if block ~25 ~ ~ minecraft:air if block ~-25 ~ ~ minecraft:air if block ~ ~ ~25 minecraft:air if block ~ ~ ~-25 minecraft:air
execute at @a[tag=EtiFlugz.2Pilot] if block ~ ~-2 ~ minecraft:quartz_block run teleport @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] ~ ~-2 ~


tellraw @p[tag=EtiFlugz.2Pilot] ["Flugzeug.2: ",{"text":"Achtung! Das Flugzeug folgt nun deiner Bewegung und Blickrichtung!","color":"red","bold":true}]
execute at @e[distance=..250,type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] at @p[distance=..5,tag=EtiFlugz.2Pilot,y_rotation=135..-135] if block ~ ~-10 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run setblock ~ ~-4 ~ minecraft:structure_block{posX:-15,posY:-1,posZ:15,rotation:"COUNTERCLOCKWISE_90",mode:LOAD,name:"flugzeug:v2flugzeug"} keep
execute at @e[distance=..250,type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] at @p[distance=..5,tag=EtiFlugz.2Pilot,y_rotation=-135..-45] if block ~ ~-10 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run setblock ~ ~-4 ~ minecraft:structure_block{posX:-15,posY:-1,posZ:-15,mode:LOAD,name:"flugzeug:v2flugzeug"} keep
execute at @e[distance=..250,type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] at @p[distance=..5,tag=EtiFlugz.2Pilot,y_rotation=-45..45] if block ~ ~-10 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run setblock ~ ~-4 ~ minecraft:structure_block{posX:15,posY:-1,posZ:-15,rotation:"CLOCKWISE_90",mode:LOAD,name:"flugzeug:v2flugzeug"} keep
execute at @e[distance=..250,type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] at @p[distance=..5,tag=EtiFlugz.2Pilot,y_rotation=45..135] if block ~ ~-10 ~ minecraft:air if block ~ ~-4 ~ minecraft:air run setblock ~ ~-4 ~ minecraft:structure_block{posX:15,posY:-1,posZ:15,rotation:"CLOCKWISE_180",mode:LOAD,name:"flugzeug:v2flugzeug"} keep
execute at @p[distance=..250,tag=EtiFlugz.2Pilot] if block ~ ~-10 ~ minecraft:air if block ~ ~-5 ~ minecraft:air run setblock ~ ~-5 ~ minecraft:redstone_block replace



tellraw @p[tag=EtiFlugz.2Pilot] ["Flugzeug.2: ",{"text":"Das Flugzeug wurde angehalten","color":"green"}]



tellraw @p[distance=..10] ["Flugzeug.2: ",{"text":"Das Flugzeug wurde nun entfernt","color":"yellow"}]
tag @p[distance=..25,tag=EtiFlugz.2Pilot] remove EtiFlugz.2Pilot
clear @a minecraft:wooden_sword{Flugzeug.2:true}
kill @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug]
data merge block -348 26 -696 {auto:false}
execute at @p run fill ~-15 ~-5 ~-15 ~15 ~5 ~15 minecraft:air replace
