
fill ^4 ^2 ^ ^-4 ^4 ^ minecraft:glass replace minecraft:water
fill ^3 ^2 ^ ^-3 ^3 ^ minecraft:air replace

fill ^2 ^ ^ ^-2 ^-1 ^ minecraft:white_concrete replace
fill ^5 ^1 ^ ^-5 ^1 ^ minecraft:polished_andesite replace
fill ^4 ^1 ^ ^-4 ^1 ^1 minecraft:quartz_slab replace
fill ^1 ^1 ^ ^-1 ^1 ^ minecraft:water replace

scoreboard players add VarKanV.2Pfeiler PZKanV.2Schl 1
execute if score VarKanV.2Pfeiler PZKanV.2Schl matches 14.. align xyz run summon minecraft:area_effect_cloud ~ ~-2 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiKanV.2Alle","EtiKanV.2Pfeiler"]}
execute if score VarKanV.2Pfeiler PZKanV.2Schl matches 14.. run scoreboard players set VarKanV.2Pfeiler PZKanV.2Schl 0

scoreboard players remove VarKanV.2Laenge PZKanV.2Schl 1
execute if score VarKanV.2Laenge PZKanV.2Schl matches 1.. positioned ^ ^ ^1 run function kanalverleger:v2kanal_einspur
