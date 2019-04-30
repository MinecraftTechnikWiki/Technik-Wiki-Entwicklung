
fill ^3 ^ ^ ^-3 ^ ^ minecraft:white_concrete replace
fill ^6 ^1 ^ ^-6 ^1 ^ minecraft:polished_andesite replace
fill ^5 ^1 ^ ^-5 ^1 ^1 minecraft:quartz_slab replace
fill ^3 ^1 ^ ^1 ^1 ^ minecraft:water replace
fill ^-1 ^1 ^ ^-3 ^1 ^ minecraft:water replace

scoreboard players add VarKanV.1StrichLinie PZKanV.1Schl 1
execute if score VarKanV.1StrichLinie PZKanV.1Schl matches 3.. run setblock ~ ~1 ~ minecraft:water replace
execute if score VarKanV.1StrichLinie PZKanV.1Schl matches 3.. run scoreboard players set VarKanV.1StrichLinie PZKanV.1Schl 0

scoreboard players remove VarKanV.1Laenge PZKanV.1Schl 1
execute if score VarKanV.1Laenge PZKanV.1Schl matches 1.. positioned ^ ^ ^1 run function kanalverleger:v1kanal_zweispur
