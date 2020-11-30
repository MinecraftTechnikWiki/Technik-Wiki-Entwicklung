
execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.1Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.1Kugel] run particle minecraft:campfire_cosy_smoke ^ ^0.5 ^5 0 0 0 0 10 force @a[distance=..25]
execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.1Quader] at @s run teleport @s ~ ~ ~ ~180 0
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.1Quader] run particle minecraft:campfire_cosy_smoke ^5.5 ^0.5 ^ 0 0 2 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.1Quader] run particle minecraft:campfire_cosy_smoke ^ ^0.5 ^5.5 2 0 0 0 10 force @a[distance=..25]

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.1Kugel] run tag @a[distance=..5,gamemode=!spectator] add EtiKaefigZ.1InZone
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.1Quader] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,gamemode=!spectator,tag=!EtiKaefigZ.1InZone] add EtiKaefigZ.1InZone

tellraw @a[tag=EtiKaefigZ.1InZone,tag=!EtiKaefigZ.1Gefangen] ["Käfigzone.1:\n",{"text":"Du hast dich der Käfigzone zu stark genähert, dafür musst du nun eine Zeit lang hier bleiben!","color":"red","bold":true} ]
scoreboard players add @a[tag=EtiKaefigZ.1InZone,tag=!EtiKaefigZ.1Gefangen] PZKaefigZ.1Zeit 200
tag @a[tag=EtiKaefigZ.1InZone,tag=!EtiKaefigZ.1Gefangen] add EtiKaefigZ.1Gefangen

execute as @a[tag=EtiKaefigZ.1Gefangen,scores={PZKaefigZ.1Zeit=0..}] run title @s actionbar ["",{"text":"Frei in ","color":"red","bold":true},{"score":{"name":"@s","objective":"PZKaefigZ.1Zeit"},"color":"dark_purple","bold":true},{"text":" Ticks","color":"red","bold":true}]

execute as @a[gamemode=!spectator,tag=EtiKaefigZ.1Gefangen,tag=!EtiKaefigZ.1InZone,scores={PZKaefigZ.1Zeit=1..}] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiKaefigZ.1Zone,sort=nearest,limit=1] eyes run teleport @s ^ ^ ^0.4

execute as @a[tag=EtiKaefigZ.1Gefangen,tag=!EtiKaefigZ.1InZone,scores={PZKaefigZ.1Zeit=..0}] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiKaefigZ.1Kugel,sort=nearest,limit=1] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiKaefigZ.1Quader] run tellraw @s ["Käfigzone.1:\n",{"text":"Du bist nun frei, kehre nicht zur Zone zurück!","color":"green","bold":true} ]
execute as @a[tag=EtiKaefigZ.1Gefangen,tag=!EtiKaefigZ.1InZone,scores={PZKaefigZ.1Zeit=..0}] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiKaefigZ.1Kugel,sort=nearest,limit=1] positioned ~-5 ~-10 ~-5 unless entity @e[dx=10,dy=10,dz=10,type=minecraft:armor_stand,tag=EtiKaefigZ.1Quader] run tag @s remove EtiKaefigZ.1Gefangen

execute as @a[tag=EtiKaefigZ.1Gefangen,scores={PZKaefigZ.1Zeit=1..}] at @s if entity @e[distance=..9,type=minecraft:armor_stand,tag=EtiKaefigZ.1Zone] run scoreboard players remove @s PZKaefigZ.1Zeit 1

tag @a[tag=EtiKaefigZ.1InZone] remove EtiKaefigZ.1InZone
