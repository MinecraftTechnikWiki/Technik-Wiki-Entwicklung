
#tag @a[tag=EtiSperrZ.3Ausweis,nbt=!{Inventory:[{tag:{EigSperrZ.3Alle:true} } ] }] remove EtiSperrZ.3Ausweis
#tag @a[tag=!EtiSperrZ.3Ausweis,nbt={Inventory:[{tag:{EigSperrZ.3Alle:true} } ] }] add EtiSperrZ.3Ausweis

#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] positioned ~-10 ~ ~-10 as @a[dx=20,dy=20,dz=20,tag=!EtiSperrZ.3Ausweis] positioned ~5 ~ ~5 unless entity @s[dx=10,dy=10,dz=10] run tellraw @s ["Sperrzone.3: ",{"text":"Dies ist eine Sperrzone, Unbefugten ist es nicht gestattet sie zu betreten!","color":"red","bold":true} ]
#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] positioned ~-10 ~ ~-10 as @a[dx=20,dy=20,dz=20,tag=!EtiSperrZ.3Ausweis] positioned ~5 ~ ~5 unless entity @s[dx=10,dy=10,dz=10] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,sort=nearest,limit=1] eyes rotated ~90 ~ run teleport @s ^-1 ^ ^

#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~ ~ ~5 2 0 0 0.01 1 force @a[distance=..25]
#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~5 ~ ~ 0 0 2 0.01 1 force @a[distance=..25]
#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~ ~ ~-5 2 0 0 0.01 1 force @a[distance=..25]
#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~-5 ~ ~ 0 0 2 0.01 1 force @a[distance=..25]

#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~ ~ ~10 6 0 0 0.01 1 force @a[distance=..25]
#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~10 ~ ~ 0 0 6 0.01 1 force @a[distance=..25]
#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~ ~ ~-10 6 0 0 0.01 1 force @a[distance=..25]
#execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] run particle minecraft:totem_of_undying ~-10 ~ ~ 0 0 6 0.01 1 force @a[distance=..25]

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Erstellen,tag=EtiSperrZ.3Kugel] run summon minecraft:armor_stand ^ ^ ^15 {Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Kugel","color":"red","bold":true}',Tags:["EtiSperrZ.3Alle","EtiSperrZ.3Zone","EtiSperrZ.3Kugel"]}
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Erstellen,tag=EtiSperrZ.3Quader] run summon minecraft:armor_stand ^ ^ ^15 {Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Quader","color":"red","bold":true}',Tags:["EtiSperrZ.3Alle","EtiSperrZ.3Zone","EtiSperrZ.3Quader"],Rotation:[0.0f,0.0f]}
tag @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Erstellen] remove EtiSperrZ.3Erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,tag=EtiSperrZ.3Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,tag=EtiSperrZ.3Kugel] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,tag=EtiSperrZ.3Quader] at @s run teleport @s ~ ~ ~ ~180 0
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,tag=EtiSperrZ.3Quader] run particle minecraft:totem_of_undying ^5.5 ^0.5 ^ 0 0 2 0.1 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,tag=EtiSperrZ.3Quader] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 2 0 0 0.1 10 force @a[distance=..25]

tag @a[nbt={ActiveEffects:[{Id:14b}]}] add EtiSperrZ.3Unsichtbar

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,tag=EtiSperrZ.3Kugel] run tag @a[distance=..5,gamemode=!spectator,tag=!EtiSperrZ.3Unsichtbar] add EtiSperrZ.3InZone
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,tag=EtiSperrZ.3Quader] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,gamemode=!spectator,tag=!EtiSperrZ.3InZone,tag=!EtiSperrZ.3Unsichtbar] add EtiSperrZ.3InZone


tellraw @a[tag=EtiSperrZ.3InZone,tag=!EtiSperrZ.3Nachricht] ["Sperrzone.3:\n",{"text":"Dies ist eine Kamera-Sperrzone, Personen ist es nicht gestattet sie zu betreten!","color":"red","bold":true} ]
tag @a[tag=EtiSperrZ.3InZone,tag=!EtiSperrZ.3Nachricht] add EtiSperrZ.3Nachricht

execute as @a[tag=EtiSperrZ.3InZone] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,sort=nearest,limit=1] eyes run teleport @s ^ ^ ^-0.4

scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,scores={PZSperrZ.3Winkel=1..}] PZSperrZ.3Winkel 1
execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Zone] at @s if entity @a[distance=..9,tag=EtiSperrZ.3Nachricht] run scoreboard players set @s PZSperrZ.3Winkel 100

execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Kamera] at @s positioned ^ ^ ^15 if entity @e[distance=..0.5,type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,scores={PZSperrZ.3Winkel=1..},sort=nearest,limit=1] run tag @s add EtiSperrZ.3Stoppen

scoreboard players add @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Kamera,tag=!EtiSperrZ.3Stoppen] PZSperrZ.3Winkel 1
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Kamera,tag=!EtiSperrZ.3Stoppen,scores={PZSperrZ.3Winkel=720..}] PZSperrZ.3Winkel 0

execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Kamera,tag=!EtiSperrZ.3Stoppen,scores={PZSperrZ.3Winkel=..360}] at @s run teleport @s ~ ~ ~ ~0.2 ~
execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Kamera,tag=!EtiSperrZ.3Stoppen,scores={PZSperrZ.3Winkel=361..}] at @s run teleport @s ~ ~ ~ ~-0.2 ~

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Kamera] positioned ^ ^ ^15 as @e[distance=..0.5,type=minecraft:armor_stand,tag=EtiSperrZ.3Zone,sort=nearest,limit=1] rotated as @s run teleport @s ~ ~ ~ ~ ~

tag @e[type=minecraft:armor_stand,tag=EtiSperrZ.3Stoppen] remove EtiSperrZ.3Stoppen
tag @a[tag=!EtiSperrZ.3InZone,tag=EtiSperrZ.3Nachricht] remove EtiSperrZ.3Nachricht
tag @a[tag=EtiSperrZ.3Unsichtbar] remove EtiSperrZ.3Unsichtbar
tag @a[tag=EtiSperrZ.3InZone] remove EtiSperrZ.3InZone
