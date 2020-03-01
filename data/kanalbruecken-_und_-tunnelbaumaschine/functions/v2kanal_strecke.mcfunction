
fill ^10 ^21 ^ ^-10 ^4 ^ minecraft:glass replace minecraft:water
fill ^8 ^20 ^ ^-8 ^4 ^ minecraft:air replace

fill ^8 ^ ^ ^-8 ^ ^1 minecraft:white_concrete replace
fill ^8 ^1 ^ ^-8 ^4 ^1 minecraft:quartz_block replace
fill ^10 ^4 ^ ^-10 ^4 ^ minecraft:polished_andesite replace
fill ^9 ^4 ^ ^-9 ^4 ^1 minecraft:quartz_slab replace
fill ^7 ^1 ^ ^-7 ^4 ^ minecraft:water replace

scoreboard players remove VarKanBTBM.2Laenge PZKanBTBM.2Schl 1
execute if score VarKanBTBM.2Laenge PZKanBTBM.2Schl matches 1.. positioned ^ ^ ^1 run function kanalbruecken-_und_-tunnelbaumaschine:v2kanal_strecke
