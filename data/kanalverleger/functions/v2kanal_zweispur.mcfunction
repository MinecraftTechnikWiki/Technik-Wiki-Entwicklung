
fill ^7 ^2 ^ ^-7 ^4 ^ minecraft:glass replace minecraft:water
fill ^6 ^2 ^ ^-6 ^3 ^ minecraft:air replace

fill ^4 ^ ^ ^-4 ^-1 ^ minecraft:white_concrete replace
fill ^7 ^1 ^ ^-7 ^1 ^ minecraft:polished_andesite replace
fill ^6 ^1 ^ ^-6 ^1 ^1 minecraft:quartz_slab replace
fill ^3 ^1 ^ ^1 ^1 ^ minecraft:water replace
fill ^-1 ^1 ^ ^-3 ^1 ^ minecraft:water replace

scoreboard players add VarKanV.2StrichLinie PZKanV.2Schl 1
execute if score VarKanV.2StrichLinie PZKanV.2Schl matches 3.. run setblock ~ ~1 ~ minecraft:water replace
execute if score VarKanV.2StrichLinie PZKanV.2Schl matches 3.. run scoreboard players set VarKanV.2StrichLinie PZKanV.2Schl 0

scoreboard players add VarKanV.2Pfeiler PZKanV.2Schl 1
execute if score VarKanV.2Pfeiler PZKanV.2Schl matches 14.. align xyz run summon minecraft:area_effect_cloud ^3 ^-2 ^ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiKanV.2Alle","EtiKanV.2Pfeiler"]}
execute if score VarKanV.2Pfeiler PZKanV.2Schl matches 14.. align xyz run summon minecraft:area_effect_cloud ^-3 ^-2 ^ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiKanV.2Alle","EtiKanV.2Pfeiler"]}
execute if score VarKanV.2Pfeiler PZKanV.2Schl matches 14.. run scoreboard players set VarKanV.2Pfeiler PZKanV.2Schl 0

scoreboard players remove VarKanV.2Laenge PZKanV.2Schl 1
execute if score VarKanV.2Laenge PZKanV.2Schl matches 1.. positioned ^ ^ ^1 run function kanalverleger:v2kanal_zweispur
