
scoreboard objectives add PZLuftS.3Steuer minecraft.dropped:minecraft.wooden_sword ["Luftschiff.3: ",{"text":"Holzschwert droppen um Luftschiff zu fahren"}]
scoreboard objectives add PZLuftS.3Leine minecraft.dropped:minecraft.lead ["Luftschiff.3: ",{"text":"Leine droppen um anzudocken"}]

team add TMLuftS.3Pilot ["Luftschiff.3: ",{"text":"Piloten","bold":true}]

give @p[distance=..25] minecraft:armor_stand{Luftschiff.3:true,display:{Lore:["Luftschiff.3","Platziere den Rüstungsständer","um eine Landeplattform für","Luftschiffe zu erstellen"]},EntityTag:{Small:true,Invisible:true,Marker:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Andockplatz\",\"bold\":true}",Tags:["EtiLuftS.3Alle","EtiLuftS.3Andockplatz","EtiLuftS.3Erstellen"]} }
give @p[distance=..25] minecraft:lead{Luftschiff.3:true,display:{Lore:["Luftschiff.3","Wirf die Leine mit Q um","zum Luftschiff oder","Andockplatz zu gelangen"]}} 1
give @p[distance=..25] minecraft:coal{Luftschiff.3:true} 64


# luftschiff 1

execute if entity @s[y_rotation=45..135] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-14,posY:0,posZ:-12,name:"luftschiff:v3luftschiff"}
execute if entity @s[y_rotation=135..-135] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:12,posY:0,posZ:-14,name:"luftschiff:v3luftschiff"}
execute if entity @s[y_rotation=-135..-45] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:14,posY:0,posZ:12,name:"luftschiff:v3luftschiff"}
execute if entity @s[y_rotation=-45..45] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-12,posY:0,posZ:14,name:"luftschiff:v3luftschiff"}

data merge block ~ ~ ~ {auto:false}
execute at @p[team=TMLuftS.1Pilot] as @a[distance=..20] at @s run teleport @s ~1 ~ ~
execute at @p[team=TMLuftS.1Pilot] run clone ~14 ~16 ~16 ~-14 ~-3 ~-16 ~-14 ~-3 ~-15 replace move

execute at @p[team=TMLuftS.1Pilot] run clone ~14 ~16 ~16 ~-14 ~-3 ~-16 ~-14 ~-2 ~-16 replace move
execute at @p[team=TMLuftS.1Pilot] run clone ~14 ~16 ~15 ~-14 ~-3 ~-17 ~-16 ~-3 ~-17 replace move
execute at @p[team=TMLuftS.1Pilot] run clone ~14 ~16 ~16 ~-14 ~-3 ~-16 ~-14 ~-4 ~-16 replace move

execute at @p[team=TMLuftS.1Pilot] run clone ~14 ~16 ~16 ~-14 ~-3 ~-16 ~-14 ~-3 ~-17 replace move
execute at @p[team=TMLuftS.1Pilot] run clone ~14 ~16 ~16 ~-14 ~-3 ~-16 ~-13 ~-3 ~-16 replace move
execute at @p[team=TMLuftS.1Pilot] run clone ~14 ~16 ~16 ~-14 ~-3 ~-16 ~-14 ~-3 ~-15 replace move



data merge block ~ ~ ~ {auto:false}
data merge block -268 27 -561 {auto:false}
tellraw @p[distance=..10] ["Luftschiff.1: ",{"text":"Das Luftschiff wurde nun entfernt","color":"yellow"}]
team remove TMLuftS.1Pilot
clear @a minecraft:wooden_sword{Luftschiff.1:true}
kill @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff]
execute at @p[distance=..18] run fill ~17 ~20 ~17 ~-17 ~-5 ~-17 minecraft:air replace



team add TMLuftS.1Pilot ["Luftschiff.1: ",{"text":"Piloten","bold":true}]
execute if block ~ ~-1 ~ minecraft:command_block{SuccessCount:0} run tellraw @a[distance=..10] ["Luftschiff.1: ",{"text":"Dieser Luftschiff ist bereits in Benutzung, warte bis dieser wieder entfernt wurde, damit er wieder einsatzbereit ist.","color":"light_purple","bold":true}]

data merge block ~-2 ~1 ~ {SuccessCount:0}
summon minecraft:armor_stand ~ ~30 ~30 {Small:true,NoGravity:true,Tags:["EtiLuftS.1Luftschiff"],Rotation:[90f,0f]}
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run setblock ~ ~-1 ~ minecraft:piston[facing=up]
teleport @p[distance=..10] @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff,sort=nearest,limit=1]
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run clone -292 76 -594 -268 92 -571 ~-12 ~-3 ~-12
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run replaceitem entity @p[distance=..2] hotbar.0 minecraft:wooden_sword{Luftschiff.1:true,AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Name:"Extraschaden",Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"}],Unbreakable:true,Enchantments:[{id:-1}],HideFlags:6,display:{Name:"{\"text\":\"Steuerkreuz\",\"color\":\"gold\"}",Lore:["Luftschiff.1","Wirf das Schwert mit Q","um ein Luftschiff zu fahren"]} }
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run team join TMLuftS.1Pilot @p[distance=..5]
tellraw @p[team=TMLuftS.1Pilot] ["Luftschiff.1: ",{"text":"Mit dem Steuerkreuz kann des Luftschiff in alle Richtungen gesteuert werden","color":"green"},"\n",{"text":"Wähle das Holzschwert (Steuerkreuz) in der Schnellzugriffssleiste aus, um das Luftschiff in eine andere Richtung zu drehen","color":"yellow"}]
data merge block -268 27 -561 {auto:true}


execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] as @p[distance=..15,team=TMLuftS.1Pilot] unless block ~ ~-10 ~ minecraft:air run tellraw @s ["Luftschiff.1: ",{"text":"Achtung! du fährst zu tief, steig mit dem Luftschiff wieder auf!"}]
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] if entity @a[distance=..5,team=TMLuftS.1Pilot,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{Luftschiff.1:true}}}]
tellraw @a[distance=190..210,team=TMLuftS.1Pilot] ["Luftschiff.1: ",{"text":"Achtung! Möglicherweise kann er nun nicht mehr gedreht werden!","color":"red"}]
execute at @p[team=TMLuftS.1Pilot] if block ~ ~-2 ~ #minecraft:planks run teleport @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff,sort=nearest,limit=1] ~ ~-2 ~


tellraw @p[team=TMLuftS.1Pilot] ["Luftschiff.1: ",{"text":"Das Steuerkreuz wurde in die Hand genommen, nun wird der Luftschiff in deine Blickrichtung gedreht","color":"red"}]
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run tellraw @p[distance=15..,team=TMLuftS.1Pilot] ["Luftschiff.1: ",{"text":"Kehre zum Luftschiff zurück oder beende die Anlage!","color":"red","bold":true}]

tellraw @p[team=TMLuftS.1Pilot] ["Luftschiff.1: ",{"text":"Damit der Luftschiff erneut gedreht werden kann, drehe dich in die neue Richtung und wähle erneut das Steuerkreuz aus","color":"green"}]


execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] at @p[distance=..5,team=TMLuftS.1Pilot,y_rotation=-45..45] if block ~ ~-10 ~ minecraft:air run clone -300 75 -605 -281 97 -565 ~-20 ~-4 ~-20
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] at @p[distance=..5,team=TMLuftS.1Pilot,y_rotation=-45..45] if block ~ ~-10 ~ minecraft:air run clone -280 75 -605 -260 97 -565 ~ ~-4 ~-20


execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] at @p[distance=..5,team=TMLuftS.1Pilot,y_rotation=45..135] if block ~ ~-10 ~ minecraft:air run clone -300 27 -605 -281 49 -565 ~-20 ~-4 ~-20
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] at @p[distance=..5,team=TMLuftS.1Pilot,y_rotation=45..135] if block ~ ~-10 ~ minecraft:air run clone -280 27 -605 -260 49 -565 ~ ~-4 ~-20



execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] at @p[distance=..5,team=TMLuftS.1Pilot,y_rotation=135..-135] if block ~ ~-10 ~ minecraft:air run clone -300 99 -605 -281 121 -565 ~-20 ~-4 ~-20
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] at @p[distance=..5,team=TMLuftS.1Pilot,y_rotation=135..-135] if block ~ ~-10 ~ minecraft:air run clone -280 99 -605 -260 121 -565 ~ ~-4 ~-20

execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] at @p[distance=..5,team=TMLuftS.1Pilot,y_rotation=-135..-45] if block ~ ~-10 ~ minecraft:air run clone -300 51 -605 -281 73 -565 ~-20 ~-4 ~-20
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] at @p[distance=..5,team=TMLuftS.1Pilot,y_rotation=-135..-45] if block ~ ~-10 ~ minecraft:air run clone -280 51 -605 -260 73 -565 ~ ~-4 ~-20


# Luftschiff2

team add TMLuftS.2Pilot ["Luftschiff.1: ",{"text":"Piloten","bold":true}]
execute if block ~ ~-1 ~ minecraft:command_block{SuccessCount:0} run tellraw @a[distance=..10] ["Luftschiff.2: ",{"text":"Dieses Luftschiff ist bereits in Benutzung, warte bis dieses wieder entfernt wurde, damit es wieder einsatzbereit ist.","color":"light_purple"}]


data merge block ~-2 ~1 ~ {SuccessCount:0}
summon minecraft:armor_stand ~ ~30 ~30 {Small:true,NoGravity:true,Rotation:[90f,0f],Tags:["EtiLuftS.2Luftschiff"]}
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run setblock ~ ~-1 ~ minecraft:piston[facing=up]
teleport @p[distance=..10] @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff,sort=nearest,limit=1]
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run clone -334 77 -601 -314 93 -568 ~-10 ~-2 ~-16
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run replaceitem entity @p[distance=..2] hotbar.0 minecraft:wooden_sword{Luftschiff.2:true,AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Name:"Extraschaden",Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"}],Unbreakable:true,Enchantments:[{id:-1}],HideFlags:6,display:{Name:"{\"text\":\"Steuerkreuz\",\"color\":\"gold\"}",Lore:["Luftschiff.2","Wirf das Schwert mit Q","um ein Luftschiff zu fahren"]} }

execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run team join TMLuftS.2Pilot @p[distance=..2]
tellraw @p[team=TMLuftS.2Pilot] ["Luftschiff.2: ",{"text":"Schritt1: ","color":"black","bold":true},{"text":"Wähle das Steuerkreuz in der Schnellzugriffssleiste aus (Holzschwert)","color":"yellow"},"\n ",{"text":"Schritt2: ","color":"black","bold":true},{"text":"Betätige den oberen linken Knopf am Luftschiff zum starten, damit das Luftschiff startbereit ist","color":"yellow"}]
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @s run teleport @s ~ ~-2 ~




tellraw @p[team=TMLuftS.2Pilot] ["Luftschiff.2: ",{"text":"Das Steuerkreuz wurde in die Hand genommen, nun folgt dir das Luftschiff","color":"red"}]

execute if entity @p[team=TMLuftS.2Pilot,y_rotation=45..135]
execute if entity @p[team=TMLuftS.2Pilot,y_rotation=-135..-45]
execute if entity @p[team=TMLuftS.2Pilot,y_rotation=-45..45]
execute if entity @p[team=TMLuftS.2Pilot,y_rotation=135..-135]


execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -344 27 -605 -325 49 -565 ~-20 ~-4 ~-20
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -324 27 -605 -304 49 -565 ~ ~-4 ~-20

execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -344 51 -605 -325 73 -565 ~-20 ~-4 ~-20
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -324 51 -605 -304 73 -565 ~ ~-4 ~-20

execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -344 75 -605 -325 97 -565 ~-20 ~-4 ~-20
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -324 75 -605 -304 97 -565 ~ ~-4 ~-20

execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -344 99 -605 -325 121 -565 ~-20 ~-4 ~-20
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -324 99 -605 -304 121 -565 ~ ~-4 ~-20



tellraw @p[team=TMLuftS.2Pilot] ["Luftschiff.2: ",{"text":"Damit dir das Luftschiff folgt, muss das Steuerkreuz ausgewählt werden","color":"green","bold":true}]



tellraw @p[team=TMLuftS.2Pilot] ["Luftschiff.2: ",{"text":"Achtung! Das Luftschiff folgt nun deiner Bewegung und Blickrichtung!","color":"red","bold":true}]

tellraw @p[team=TMLuftS.2Pilot] ["Luftschiff.2: ",{"text":"Das Luftschiff wurde angehalten","color":"green"}]


execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] as @p[team=TMLuftS.2Pilot,distance=..15] at @s unless block ~ ~-10 ~ minecraft:air run tellraw @p ["Luftschiff.2: ",{"text":"Achtung! du fährst zu tief, steig mit dem Luftschiff wieder auf!"}]
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] if entity @a[distance=..5,team=TMLuftS.2Pilot,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{Luftschiff.2:true}}}]
execute at @p[team=TMLuftS.2Pilot] if block ~ ~-2 ~ #minecraft:wooden_slabs run teleport @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff,sort=nearest,limit=1] ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @s run teleport @s ~ ~-2 ~


data merge block ~-2 ~ ~-1 {SuccessCount:0}
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run tellraw @p[distance=40..50,team=TMLuftS.2Pilot] ["Luftschiff.2: ",{"text":"Achtung, du hast dich zu weit vom Luftschiff entfernt, kehre zurück!","color":"red","bold":true}]
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -342 29 -596 -307 46 -574 ~-18 ~-2 ~-11
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -342 28 -596 -307 47 -574 ~-18 ~-3 ~-11
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -335 76 -602 -313 95 -567 ~-11 ~-3 ~-17
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @p[team=TMLuftS.2Pilot,distance=..5] if block ~ ~-10 ~ minecraft:air run clone -335 100 -602 -313 119 -567 ~-11 ~-3 ~-17
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run tellraw @p[team=TMLuftS.2Pilot,distance=15..] ["Luftschiff.2: ",{"text":"Kehre zum Luftschiff zurück oder beende die Anlage!","color":"red","bold":true}]



tellraw @p[distance=..10] ["Luftschiff.2: ",{"text":"Das Luftschiff wurde nun entfernt","color":"yellow"}]
team remove TMLuftS.2Pilot
clear @a minecraft:wooden_sword{Luftschiff.2:true}
setblock -316 28 -559 minecraft:air replace
kill @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff]
execute at @p[distance=..10] run fill ~17 ~20 ~17 ~-17 ~-5 ~-17 minecraft:air replace


setblock -316 28 -559 minecraft:air replace
summon minecraft:tnt ~ ~-3 ~4 {Fuse:100s,Motion:[0.0d,0.0d,0.2d]}
setblock -316 28 -559 minecraft:redstone_block replace
