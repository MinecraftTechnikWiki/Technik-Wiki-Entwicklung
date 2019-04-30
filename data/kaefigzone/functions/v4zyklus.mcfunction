
execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] at @s positioned ~-5 ~ ~-5 if entity @a[dx=10,dy=10,dz=10,tag=!EtiKaefigZ.4Gefangen] run scoreboard players add @s PZKaefigZ.4Zeit 200
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] positioned ~-5 ~ ~-5 run tellraw @a[dx=10,dy=10,dz=10,tag=!EtiKaefigZ.4Gefangen] ["Käfigzone.4: ",{"text":"Du hast dich der Käfigzone zu stark genähert, dafür musst du nun eine Zeit lang hier bleiben!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,tag=!EtiKaefigZ.4Gefangen] add EtiKaefigZ.4Gefangen

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,tag=!EtiKaefigZ.4ImKaefig] add EtiKaefigZ.4ImKaefig

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=1..}] run teleport @a[tag=EtiKaefigZ.4Gefangen,tag=!EtiKaefigZ.4ImKaefig] @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=1..},sort=nearest,limit=1]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=..0}] run tellraw @a[distance=5..10,tag=!EtiKaefigZ.4ImKaefig,tag=EtiKaefigZ.4Gefangen] ["Käfigzone.4: ",{"text":"Du bist nun frei, verlasse diese Zone!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=..0}] run tag @a[distance=5..10,tag=!EtiKaefigZ.4ImKaefig,tag=EtiKaefigZ.4Gefangen] remove EtiKaefigZ.4Gefangen
tag @a[tag=EtiKaefigZ.4ImKaefig] remove EtiKaefigZ.4ImKaefig
execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=0..}] at @s positioned ~-5 ~ ~-5 run title @a[dx=10,dy=10,dz=10,tag=EtiKaefigZ.4Gefangen] actionbar ["",{"text":"Freiheit in ","color":"red"},{"score":{"name":"@s","objective":"PZKaefigZ.4Zeit"} } ]

scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=0..}] PZKaefigZ.4Zeit 1

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run particle minecraft:flame ~-5 ~0.1 ~ 0 0 2 0.01 5 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run particle minecraft:flame ~ ~0.1 ~-5 2 0 0 0.01 5 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run particle minecraft:flame ~ ~0.1 ~5 2 0 0 0.01 5 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run particle minecraft:flame ~5 ~0.1 ~ 0 0 2 0.01 5 force @a[distance=..25]
