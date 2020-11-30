
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run tag @a[distance=..10,nbt={SelectedItem:{id:"minecraft:tripwire_hook",tag:{EigKaefigZ.4Alle:true} } }] add EtiKaefigZ.4Schluessel

scoreboard players set @a[tag=EtiKaefigZ.4Schluessel] PZKaefigZ.4Zeit 0
scoreboard players set @a[tag=EtiKaefigZ.4Schluessel] PZKaefigZ.4Tote 0
tag @a[tag=EtiKaefigZ.4Schluessel] remove EtiKaefigZ.4Gefangen

tag @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,tag=!EtiKaefigZ.4Boden,nbt={OnGround:true}] add EtiKaefigZ.4Boden

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Boden,tag=EtiKaefigZ.4Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Boden,tag=EtiKaefigZ.4Kugel] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Boden,tag=EtiKaefigZ.4Quader] at @s run teleport @s ~ ~ ~ ~180 0
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Boden,tag=EtiKaefigZ.4Quader] run particle minecraft:totem_of_undying ^5.5 ^0.5 ^ 0 0 2 0.1 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Boden,tag=EtiKaefigZ.4Quader] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 2 0 0 0.1 10 force @a[distance=..25]

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run tellraw @a[distance=..10,scores={PZKaefigZ.4Tote=1..}] ["Käfigzone.4: ",{"text":"Du hast einen Dorfbewohner getötet! Dafür musst du sitzen!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run scoreboard players set @a[distance=..10,tag=!EtiKaefigZ.4Schluessel,scores={PZKaefigZ.4Tote=1..}] PZKaefigZ.4Tote -200
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run teleport @a[distance=2..,tag=!EtiKaefigZ.4Schluessel,scores={PZKaefigZ.4Tote=..-1}] ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] as @a[distance=..2,scores={PZKaefigZ.4Tote=..1}] run title @s actionbar ["",{"text":"Freiheit in ","color":"red","bold":true},{"score":{"name":"@s","objective":"PZKaefigZ.4Tote"} } ]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run scoreboard players add @a[scores={PZKaefigZ.4Tote=..-1}] PZKaefigZ.4Tote 1

execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] at @s positioned ~-5 ~ ~-5 if entity @a[dx=10,dy=10,dz=10,tag=!EtiKaefigZ.4Gefangen,tag=!EtiKaefigZ.4Schluessel] run scoreboard players add @s PZKaefigZ.4Zeit 200
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] positioned ~-5 ~ ~-5 run tellraw @a[dx=10,dy=10,dz=10,tag=!EtiKaefigZ.4Gefangen] ["Käfigzone.4: ",{"text":"Du hast dich der Käfigzone zu stark genähert, dafür musst du nun eine Zeit lang hier bleiben!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,tag=!EtiKaefigZ.4Gefangen] add EtiKaefigZ.4Gefangen

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,tag=!EtiKaefigZ.4ImKaefig] add EtiKaefigZ.4ImKaefig

execute as @a[tag=EtiKaefigZ.4Gefangen,tag=!EtiKaefigZ.4ImKaefig] at @s positioned as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=1..},sort=nearest,limit=1] run teleport @s ~ ~ ~ ~ ~

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=..0}] run tellraw @a[distance=5..10,tag=!EtiKaefigZ.4ImKaefig,tag=EtiKaefigZ.4Gefangen] ["Käfigzone.4: ",{"text":"Du bist nun frei, kehre nicht zur Zone zurück!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=..0}] run tag @a[distance=5..10,tag=!EtiKaefigZ.4ImKaefig,tag=EtiKaefigZ.4Gefangen] remove EtiKaefigZ.4Gefangen
tag @a[tag=EtiKaefigZ.4ImKaefig] remove EtiKaefigZ.4ImKaefig
execute as @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=0..}] at @s positioned ~-5 ~ ~-5 run title @a[dx=10,dy=10,dz=10,tag=EtiKaefigZ.4Gefangen] actionbar ["",{"text":"Freiheit in ","color":"red"},{"score":{"name":"@s","objective":"PZKaefigZ.4Zeit"} } ]

scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone,scores={PZKaefigZ.4Zeit=0..}] PZKaefigZ.4Zeit 1

tag @a[tag=EtiKaefigZ.4Schluessel] remove EtiKaefigZ.4Schluessel
