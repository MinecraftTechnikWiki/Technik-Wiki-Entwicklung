
execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Kugel,tag=EtiSperrZ.2Zone] run particle minecraft:campfire_cosy_smoke ^ ^0.5 ^10 0 0 0 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Kugel,tag=EtiSperrZ.2Frei] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

execute as @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Quader] at @s run teleport @s ~ ~ ~ ~180 0
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Quader,tag=EtiSperrZ.2Zone] run particle minecraft:campfire_cosy_smoke ^ ^0.5 ^10.5 4 0 0 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Quader,tag=EtiSperrZ.2Frei] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 2 0 0 0.1 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Quader,tag=EtiSperrZ.2Zone] run particle minecraft:campfire_cosy_smoke ^10.5 ^0.5 ^ 0 0 4 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Quader,tag=EtiSperrZ.2Frei] run particle minecraft:totem_of_undying ^5.5 ^0.5 ^ 0 0 2 0.1 10 force @a[distance=..25]

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Kugel,tag=EtiSperrZ.2Zone] as @a[distance=..10,gamemode=!spectator] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiSperrZ.2Kugel,tag=EtiSperrZ.2Frei] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiSperrZ.2Quader,tag=EtiSperrZ.2Frei] run tag @s add EtiSperrZ.2InZone

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Quader,tag=EtiSperrZ.2Zone] positioned ~-10 ~ ~-10 as @a[dx=20,dy=10,dz=20,gamemode=!spectator,tag=!EtiSperrZ.2InZone] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiSperrZ.2Kugel,tag=EtiSperrZ.2Frei] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiSperrZ.2Quader,tag=EtiSperrZ.2Frei] run tag @s add EtiSperrZ.2InZone

execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Kugel,tag=EtiSperrZ.2Frei] run tag @a[distance=..7,tag=EtiSperrZ.2InZone] add EtiSperrZ.2InPuffer
execute at @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Quader,tag=EtiSperrZ.2Frei] positioned ~-7 ~ ~-7 run tag @a[dx=14,dy=10,dz=14,tag=EtiSperrZ.2InZone,tag=!EtiSperrZ.2InPuffer] add EtiSperrZ.2InPuffer

tellraw @a[tag=EtiSperrZ.2InZone,tag=!EtiSperrZ.2Nachricht] ["Sperrzone.2:\n",{"text":"Dies ist eine Sperrzone, Personen ist es nicht gestattet sie zu betreten!","color":"red","bold":true} ]
tag @a[tag=EtiSperrZ.2InZone,tag=!EtiSperrZ.2Nachricht] add EtiSperrZ.2Nachricht

execute as @a[tag=EtiSperrZ.2InZone,tag=EtiSperrZ.2InPuffer] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Frei,sort=nearest,limit=1] eyes run teleport @s ^ ^ ^0.4
execute as @a[tag=EtiSperrZ.2InZone,tag=!EtiSperrZ.2InPuffer] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiSperrZ.2Zone,sort=nearest,limit=1] eyes run teleport @s ^ ^ ^-0.4

tag @a[tag=!EtiSperrZ.2InZone,tag=EtiSperrZ.2Nachricht] remove EtiSperrZ.2Nachricht
tag @a[tag=EtiSperrZ.2InZone] remove EtiSperrZ.2InZone
tag @a[tag=EtiSperrZ.2InPuffer] remove EtiSperrZ.2InPuffer
