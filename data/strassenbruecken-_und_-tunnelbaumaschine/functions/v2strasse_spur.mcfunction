
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^5 ^2 ^ ^-5 ^4 ^ minecraft:glass replace #strassenbruecken-_und_-tunnelbaumaschine:v2bloecke
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^1 ^ ^ ^-1 ^ ^ minecraft:white_concrete replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^4 ^1 ^ ^-4 ^1 ^ minecraft:polished_andesite replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^3 ^1 ^ ^-3 ^1 ^ minecraft:quartz_slab replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^1 ^1 ^ ^-1 ^1 ^ minecraft:water replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^4 ^2 ^ ^-4 ^3 ^ minecraft:air replace

scoreboard players add VarStrBTBM.2Schleife PZStrBTBM.2Laen 1
execute if score VarStrBTBM.2Schleife PZStrBTBM.2Laen < VarStrBTBM.2Spur PZStrBTBM.2Laen positioned ^-8 ^ ^ run function strassenbruecken-_und_-tunnelbaumaschine:v2strasse_spur
