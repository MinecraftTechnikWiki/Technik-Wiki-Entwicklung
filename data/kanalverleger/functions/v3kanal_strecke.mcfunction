
fill ^10 ^21 ^ ^-10 ^4 ^ minecraft:glass replace minecraft:water
fill ^8 ^20 ^ ^-8 ^4 ^ minecraft:air replace

fill ^8 ^ ^ ^-8 ^ ^1 minecraft:white_concrete replace
fill ^8 ^1 ^ ^-8 ^4 ^1 minecraft:quartz_block replace
fill ^10 ^4 ^ ^-10 ^4 ^ minecraft:polished_andesite replace
fill ^9 ^4 ^ ^-9 ^4 ^1 minecraft:quartz_slab replace
fill ^7 ^1 ^ ^-7 ^4 ^ minecraft:water replace

scoreboard players remove VarKanV.3Laenge PZKanV.3Schl 1
execute if score VarKanV.3Laenge PZKanV.3Schl matches 1.. positioned ^ ^ ^1 run function kanalverleger:v3kanal_strecke
