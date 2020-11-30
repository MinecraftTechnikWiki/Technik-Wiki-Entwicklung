
execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Kugel,tag=EtiKaefigZ.2Zone] run particle minecraft:campfire_cosy_smoke ^ ^0.5 ^10 0 0 0 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Kugel,tag=EtiKaefigZ.2Frei] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader] at @s run teleport @s ~ ~ ~ ~180 0
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader,tag=EtiKaefigZ.2Zone] run particle minecraft:campfire_cosy_smoke ^ ^0.5 ^10.5 4 0 0 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader,tag=EtiKaefigZ.2Frei] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 2 0 0 0.1 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader,tag=EtiKaefigZ.2Zone] run particle minecraft:campfire_cosy_smoke ^10.5 ^0.5 ^ 0 0 4 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader,tag=EtiKaefigZ.2Frei] run particle minecraft:totem_of_undying ^5.5 ^0.5 ^ 0 0 2 0.1 10 force @a[distance=..25]

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Kugel,tag=EtiKaefigZ.2Zone] as @a[distance=..10,gamemode=!spectator] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiKaefigZ.2Kugel,tag=EtiKaefigZ.2Frei] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader,tag=EtiKaefigZ.2Frei] run tag @s add EtiKaefigZ.2InZone

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader,tag=EtiKaefigZ.2Zone] positioned ~-10 ~ ~-10 as @a[dx=20,dy=10,dz=20,gamemode=!spectator,tag=!EtiKaefigZ.2InZone] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiKaefigZ.2Kugel,tag=EtiKaefigZ.2Frei] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader,tag=EtiKaefigZ.2Frei] run tag @s add EtiKaefigZ.2InZone

tellraw @a[tag=EtiKaefigZ.2InZone,tag=!EtiKaefigZ.2Gefangen] ["Käfigzone.2:\n",{"text":"Du hast dich der Käfigzone zu stark genähert, dafür musst du nun eine Zeit lang hier bleiben!","color":"red","bold":true} ]
scoreboard players add @a[tag=EtiKaefigZ.2InZone,tag=!EtiKaefigZ.2Gefangen] PZKaefigZ.2Zeit 200
tag @a[tag=EtiKaefigZ.2InZone,tag=!EtiKaefigZ.2Gefangen] add EtiKaefigZ.2Gefangen

execute as @a[tag=EtiKaefigZ.2Gefangen,scores={PZKaefigZ.2Zeit=0..}] run title @s actionbar ["",{"text":"Frei in ","color":"red","bold":true},{"score":{"name":"@s","objective":"PZKaefigZ.2Zeit"},"color":"dark_purple","bold":true},{"text":" Ticks","color":"red","bold":true}]

execute as @a[gamemode=!spectator,tag=EtiKaefigZ.2Gefangen,tag=!EtiKaefigZ.2InZone,scores={PZKaefigZ.2Zeit=1..}] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiKaefigZ.2Zone,sort=nearest,limit=1] eyes run teleport @s ^ ^ ^0.4

execute as @a[tag=EtiKaefigZ.2Gefangen,tag=!EtiKaefigZ.2InZone,scores={PZKaefigZ.2Zeit=..0}] at @s unless entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiKaefigZ.2Kugel,sort=nearest,limit=1] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader] run tellraw @s ["Käfigzone.2:\n",{"text":"Du bist nun frei, kehre nicht zur Zone zurück!","color":"green","bold":true} ]
execute as @a[tag=EtiKaefigZ.2Gefangen,tag=!EtiKaefigZ.2InZone,scores={PZKaefigZ.2Zeit=..0}] at @s unless entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiKaefigZ.2Kugel,sort=nearest,limit=1] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiKaefigZ.2Quader] run tag @s remove EtiKaefigZ.2Gefangen

execute as @p[tag=EtiKaefigZ.2Gefangen,scores={PZKaefigZ.2Zeit=0..}] at @s if entity @e[distance=..14,type=minecraft:armor_stand,tag=EtiKaefigZ.2Zone] run scoreboard players remove @s PZKaefigZ.2Zeit 1
tag @a[tag=EtiKaefigZ.2InZone] remove EtiKaefigZ.2InZone
