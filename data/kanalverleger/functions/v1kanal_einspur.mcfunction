
fill ^1 ^ ^ ^-1 ^ ^ minecraft:white_concrete replace
fill ^4 ^1 ^ ^-4 ^1 ^ minecraft:polished_andesite replace
fill ^3 ^1 ^ ^-3 ^1 ^1 minecraft:quartz_slab replace
fill ^1 ^1 ^ ^-1 ^1 ^ minecraft:water replace

scoreboard players remove VarKanV.1Laenge PZKanV.1Schl 1
execute if score VarKanV.1Laenge PZKanV.1Schl matches 1.. positioned ^ ^ ^1 run function kanalverleger:v1kanal_einspur
