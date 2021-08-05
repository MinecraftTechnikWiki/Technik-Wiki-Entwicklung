
execute at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Strassenbett,sort=nearest,limit=3] rotated ~ 0 run fill ^6 ^ ^-2 ^-6 ^4 ^-2 minecraft:light_gray_stained_glass replace minecraft:cave_air
execute at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Strassenbett,sort=nearest,limit=1] rotated ~ 0 run fill ^5 ^1 ^-2 ^-5 ^3 ^-2 minecraft:air replace

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="falsch"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Wasser,sort=nearest,limit=1] rotated ~ 0 run fill ^3 ^1 ^1 ^-3 ^1 ^-1 minecraft:stone_brick_slab replace minecraft:air
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="falsch"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Wasser,sort=nearest,limit=1] rotated ~ 0 run fill ^1 ^1 ^ ^-1 ^1 ^ minecraft:water replace
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="falsch"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Strassenbett,sort=nearest,limit=3] rotated ~ 0 run setblock ~ ~ ~ minecraft:gray_concrete replace

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Wasser,sort=nearest,limit=1] rotated ~ 0 run fill ^3 ^1 ^1 ^-3 ^1 ^-1 minecraft:stone_brick_slab replace minecraft:air
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Wasser,sort=nearest,limit=1] rotated ~ 0 run fill ^3 ^1 ^ ^-3 ^1 ^ minecraft:water replace
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Strassenbett,sort=nearest,limit=3] rotated ~ 0 run fill ^1 ^ ^ ^-1 ^ ^ minecraft:gray_concrete replace

execute at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Strassenrand,sort=nearest,limit=2] rotated ~ 0 run setblock ~ ~ ~ minecraft:quartz_block replace

execute at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Buergersteig,sort=nearest,limit=4] rotated ~ 0 run setblock ~ ~ ~ minecraft:stone_brick_slab replace

scoreboard players add VarStrBTBM.1Pfeiler PZStrBTBM.1Wert 1
execute if score VarStrBTBM.1Pfeiler PZStrBTBM.1Wert matches 14.. align xyz run summon minecraft:area_effect_cloud ^2 ^ ^-2 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Pfeiler"]}
execute if score VarStrBTBM.1Pfeiler PZStrBTBM.1Wert matches 14.. align xyz run summon minecraft:area_effect_cloud ^-3 ^ ^-2 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Pfeiler"]}
execute if score VarStrBTBM.1Pfeiler PZStrBTBM.1Wert matches 14.. run scoreboard players set VarStrBTBM.1Pfeiler PZStrBTBM.1Wert 0

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr"] run scoreboard players add @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Mitte,sort=nearest,limit=1] PZStrBTBM.1Wert 1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Mitte,scores={PZStrBTBM.1Wert=3..},sort=nearest,limit=1] rotated ~ 0 run fill ^ ^ ^ ^ ^ ^1 minecraft:quartz_block replace
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr"] run scoreboard players set @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Mitte,scores={PZStrBTBM.1Wert=3..},sort=nearest,limit=1] PZStrBTBM.1Wert 0

execute rotated ~ 0 run teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Baumaschine,sort=nearest,limit=1] ^ ^ ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Neigung,name="Automatisch",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Baumaschine,sort=nearest,limit=1] at @s rotated ~ 0 unless block ^ ^ ^4 minecraft:air run teleport @s ~ ~1 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Neigung,name="Automatisch",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Baumaschine,sort=nearest,limit=1] at @s rotated ~ 0 if block ^ ^-1 ^4 minecraft:air run teleport @s ~ ~-1 ~

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Neigung,name="Oben",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Baumaschine,sort=nearest,limit=1] at @s run teleport @s ~ ~1 ~ ~ 0
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Neigung,name="Unten",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Baumaschine,sort=nearest,limit=1] at @s run teleport @s ~ ~-1 ~ ~ 0
