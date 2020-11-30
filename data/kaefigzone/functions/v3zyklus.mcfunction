
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Erstellen,tag=EtiKaefigZ.3Kugel] run summon minecraft:armor_stand ^ ^ ^15 {Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Kugel","color":"red","bold":true}',Tags:["EtiKaefigZ.3Alle","EtiKaefigZ.3Zone","EtiKaefigZ.3Kugel"]}
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Erstellen,tag=EtiKaefigZ.3Quader] run summon minecraft:armor_stand ^ ^ ^15 {Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Quader","color":"red","bold":true}',Tags:["EtiKaefigZ.3Alle","EtiKaefigZ.3Zone","EtiKaefigZ.3Quader"],Rotation:[0.0f,0.0f]}
tag @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Erstellen] remove EtiKaefigZ.3Erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Kugel] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Quader] at @s run teleport @s ~ ~ ~ ~180 0
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Quader] run particle minecraft:totem_of_undying ^5.5 ^0.5 ^ 0 0 2 0.1 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Quader] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 2 0 0 0.1 10 force @a[distance=..25]

tag @a[nbt={ActiveEffects:[{Id:14b}]}] add EtiKaefigZ.3Unsichtbar
scoreboard players set @a[tag=EtiKaefigZ.3Unsichtbar,tag=EtiKaefigZ.3Gefangen] PZKaefigZ.3Zeit 0
tag @a[tag=EtiKaefigZ.3Unsichtbar,tag=EtiKaefigZ.3Gefangen] remove EtiKaefigZ.3Gefangen

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Kugel] run tag @a[distance=..5,gamemode=!spectator,tag=!EtiKaefigZ.3Unsichtbar] add EtiKaefigZ.3InZone
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Quader] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,gamemode=!spectator,tag=!EtiKaefigZ.3InZone,tag=!EtiKaefigZ.3Unsichtbar] add EtiKaefigZ.3InZone

tellraw @a[tag=EtiKaefigZ.3InZone,tag=!EtiKaefigZ.3Gefangen] ["Käfigzone.3:\n",{"text":"Du hast dich der Kamera-Zone zu stark genähert, dafür musst du nun eine Zeit lang hier bleiben!","color":"red","bold":true} ]
scoreboard players add @a[tag=EtiKaefigZ.3InZone,tag=!EtiKaefigZ.3Gefangen] PZKaefigZ.3Zeit 200
tag @a[tag=EtiKaefigZ.3InZone,tag=!EtiKaefigZ.3Gefangen] add EtiKaefigZ.3Gefangen

execute as @a[tag=EtiKaefigZ.3Gefangen,tag=!EtiKaefigZ.3InZone,scores={PZKaefigZ.3Zeit=..0}] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Kugel,sort=nearest,limit=1] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Quader] run tellraw @s ["Käfigzone.3:\n",{"text":"Du bist nun frei, kehre nicht zur Kamera-Zone zurück!","color":"green","bold":true} ]
execute as @a[tag=EtiKaefigZ.3Gefangen,tag=!EtiKaefigZ.3InZone,scores={PZKaefigZ.3Zeit=..0}] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Kugel,sort=nearest,limit=1] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Quader] run tag @s remove EtiKaefigZ.3Gefangen

execute as @a[tag=EtiKaefigZ.3Gefangen,scores={PZKaefigZ.3Zeit=0..}] run title @s actionbar ["",{"text":"Frei in ","color":"red","bold":true},{"score":{"name":"@s","objective":"PZKaefigZ.3Zeit"},"color":"dark_purple","bold":true},{"text":" Ticks","color":"red","bold":true}]

execute as @a[gamemode=!spectator,tag=EtiKaefigZ.3Gefangen,tag=!EtiKaefigZ.3InZone,scores={PZKaefigZ.3Zeit=1..}] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,sort=nearest,limit=1] eyes run teleport @s ^ ^ ^0.4

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone] at @s if entity @a[distance=..9,tag=EtiKaefigZ.3Gefangen] run tag @s add EtiKaefigZ.3Stoppen

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Kamera] at @s positioned ^ ^ ^15 if entity @e[distance=..0.5,type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,tag=EtiKaefigZ.3Stoppen,sort=nearest,limit=1] run tag @s add EtiKaefigZ.3Stoppen

scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Kamera,tag=!EtiKaefigZ.3Stoppen] PZKaefigZ.3Zeit 1
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Kamera,tag=!EtiKaefigZ.3Stoppen,scores={PZKaefigZ.3Zeit=720..}] PZKaefigZ.3Zeit 0

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Kamera,tag=!EtiKaefigZ.3Stoppen,scores={PZKaefigZ.3Zeit=..360}] at @s run teleport @s ~ ~ ~ ~0.2 ~
execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Kamera,tag=!EtiKaefigZ.3Stoppen,scores={PZKaefigZ.3Zeit=361..}] at @s run teleport @s ~ ~ ~ ~-0.2 ~

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Kamera] positioned ^ ^ ^15 as @e[distance=..0.5,type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone,sort=nearest,limit=1] rotated as @s run teleport @s ~ ~ ~ ~ ~

execute as @a[tag=EtiKaefigZ.3Gefangen,scores={PZKaefigZ.3Zeit=1..}] at @s if entity @e[distance=..9,type=minecraft:armor_stand,tag=EtiKaefigZ.3Zone] run scoreboard players remove @s PZKaefigZ.3Zeit 1

tag @e[type=minecraft:armor_stand,tag=EtiKaefigZ.3Stoppen] remove EtiKaefigZ.3Stoppen
tag @a[tag=EtiKaefigZ.3Unsichtbar] remove EtiKaefigZ.3Unsichtbar
tag @a[tag=EtiKaefigZ.3InZone] remove EtiKaefigZ.3InZone
