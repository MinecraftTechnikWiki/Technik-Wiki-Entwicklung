
execute at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Kanalbett,sort=nearest,limit=3] rotated ~ 0 run fill ^6 ^ ^-2 ^-6 ^4 ^-2 minecraft:light_gray_stained_glass replace minecraft:cave_air
execute at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Kanalbett,sort=nearest,limit=3] rotated ~ 0 run fill ^5 ^1 ^-2 ^-5 ^3 ^-2 minecraft:air replace

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="falsch"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Wasser,sort=nearest,limit=1] rotated ~ 0 run fill ^3 ^1 ^1 ^-3 ^1 ^-1 minecraft:quartz_slab replace minecraft:air
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="falsch"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Wasser,sort=nearest,limit=1] rotated ~ 0 run fill ^1 ^1 ^ ^-1 ^1 ^ minecraft:water replace
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="falsch"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Kanalbett,sort=nearest,limit=3] rotated ~ 0 rotated ~ 0 run setblock ~ ~ ~ minecraft:white_concrete replace

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Wasser,sort=nearest,limit=1] rotated ~ 0 run fill ^3 ^1 ^1 ^-3 ^1 ^-1 minecraft:quartz_slab replace minecraft:air
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Wasser,sort=nearest,limit=1] rotated ~ 0 run fill ^3 ^1 ^ ^-3 ^1 ^ minecraft:water replace
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Kanalbett,sort=nearest,limit=3] rotated ~ 0 rotated ~ 0 run fill ^1 ^ ^ ^-1 ^ ^ minecraft:white_concrete replace

execute at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Kanalufer,sort=nearest,limit=4] rotated ~ 0 run setblock ~ ~ ~ minecraft:quartz_slab replace
execute at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Kanalrand,sort=nearest,limit=2] rotated ~ 0 run setblock ~ ~ ~ minecraft:polished_andesite replace

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr"] run scoreboard players add @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Wasser,sort=nearest,limit=1] PZKanaBM.1Wert 1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr"] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Wasser,scores={PZKanaBM.1Wert=3..},sort=nearest,limit=1] rotated ~ 0 run fill ^ ^1 ^ ^ ^1 ^1 minecraft:quartz_slab replace
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr"] run scoreboard players set @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Wasser,scores={PZKanaBM.1Wert=3..},sort=nearest,limit=1] PZKanaBM.1Wert 0

execute rotated ~ 0 run teleport @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine,sort=nearest,limit=1] ^ ^ ^1
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Neigung,name="Automatisch",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine,sort=nearest,limit=1] at @s rotated ~ 0 unless block ^ ^ ^4 minecraft:air run teleport @s ~ ~1 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Neigung,name="Automatisch",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine,sort=nearest,limit=1] at @s rotated ~ 0 if block ^ ^-1 ^4 minecraft:air run teleport @s ~ ~-1 ~

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Neigung,name="Oben",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine,sort=nearest,limit=1] at @s run teleport @s ~ ~1 ~ ~ 0
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Neigung,name="Unten",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine,sort=nearest,limit=1] at @s run teleport @s ~ ~-1 ~ ~ 0
