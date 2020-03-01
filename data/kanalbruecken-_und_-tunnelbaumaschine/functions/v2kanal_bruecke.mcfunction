
fill ^10 ^21 ^ ^-10 ^4 ^ minecraft:glass replace minecraft:water
fill ^8 ^20 ^ ^-8 ^4 ^ minecraft:air replace

fill ^9 ^ ^ ^-9 ^-1 ^1 minecraft:white_concrete replace
fill ^9 ^1 ^ ^-9 ^4 ^1 minecraft:quartz_block replace
fill ^11 ^4 ^ ^-11 ^4 ^ minecraft:polished_andesite replace
fill ^10 ^4 ^ ^-10 ^4 ^1 minecraft:quartz_slab replace
fill ^7 ^1 ^ ^-7 ^4 ^ minecraft:water replace

scoreboard players add VarKanBTBM.2StrichLinie PZKanBTBM.2Schl 1
execute if score VarKanBTBM.2StrichLinie PZKanBTBM.2Schl matches 3.. run setblock ~ ~1 ~ minecraft:water replace
execute if score VarKanBTBM.2StrichLinie PZKanBTBM.2Schl matches 3.. run scoreboard players set VarKanBTBM.2StrichLinie PZKanBTBM.2Schl 0

scoreboard players add VarKanBTBM.2Pfeiler PZKanBTBM.2Schl 1
execute if score VarKanBTBM.2Pfeiler PZKanBTBM.2Schl matches 14.. align xyz run summon minecraft:area_effect_cloud ^7 ^-2 ^ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiKanBTBM.2Alle","EtiKanBTBM.2Pfeiler"]}
execute if score VarKanBTBM.2Pfeiler PZKanBTBM.2Schl matches 14.. align xyz run summon minecraft:area_effect_cloud ^-7 ^-2 ^ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiKanBTBM.2Alle","EtiKanBTBM.2Pfeiler"]}
execute if score VarKanBTBM.2Pfeiler PZKanBTBM.2Schl matches 14.. run scoreboard players set VarKanBTBM.2Pfeiler PZKanBTBM.2Schl 0

scoreboard players remove VarKanBTBM.2Laenge PZKanBTBM.2Schl 1
execute if score VarKanBTBM.2Laenge PZKanBTBM.2Schl matches 1.. positioned ^ ^ ^1 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_bruecke
