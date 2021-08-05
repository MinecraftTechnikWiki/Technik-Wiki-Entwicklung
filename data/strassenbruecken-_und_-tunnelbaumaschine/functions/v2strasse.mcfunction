
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^5 ^2 ^ ^-5 ^4 ^ minecraft:glass replace #strassenbruecken-_und_-tunnelbaumaschine:v2bloecke
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^1 ^ ^ ^-1 ^ ^ minecraft:white_concrete replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^4 ^1 ^ ^-4 ^1 ^ minecraft:polished_andesite replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^3 ^1 ^ ^-3 ^1 ^ minecraft:quartz_slab replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^1 ^1 ^ ^-1 ^1 ^ minecraft:water replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^4 ^2 ^ ^-4 ^3 ^ minecraft:air replace

scoreboard players set VarStrBTBM.2Schleife PZStrBTBM.2Laen 0
function strassenbruecken-_und_-tunnelbaumaschine:v2strasse_spur



execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^7 ^2 ^ ^-7 ^4 ^ minecraft:glass replace #strassenbruecken-_und_-tunnelbaumaschine:v2bloecke
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^3 ^ ^ ^-3 ^ ^ minecraft:white_concrete replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^6 ^1 ^ ^-6 ^1 ^ minecraft:polished_andesite replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^5 ^1 ^ ^-5 ^1 ^ minecraft:quartz_slab replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^3 ^1 ^ ^-3 ^1 ^ minecraft:water replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] run fill ^6 ^2 ^ ^-6 ^3 ^ minecraft:air replace

execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^11 ^5 ^ ^-11 ^19 ^ minecraft:glass replace #strassenbruecken-_und_-tunnelbaumaschine:v2bloecke
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^8 ^ ^ ^-8 ^ ^ minecraft:white_concrete replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^8 ^1 ^ ^-8 ^4 ^ minecraft:quartz_block replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^10 ^4 ^ ^-10 ^4 ^ minecraft:polished_andesite replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^9 ^4 ^ ^-9 ^4 ^ minecraft:quartz_slab replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^7 ^1 ^ ^-7 ^4 ^ minecraft:water replace
execute if entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^10 ^5 ^ ^-10 ^18 ^ minecraft:air replace

execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^19 ^5 ^ ^-19 ^19 ^ minecraft:glass replace #strassenbruecken-_und_-tunnelbaumaschine:v2bloecke
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^16 ^ ^ ^-16 ^ ^ minecraft:white_concrete replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^16 ^1 ^ ^-16 ^4 ^ minecraft:quartz_block replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^18 ^4 ^ ^-18 ^4 ^ minecraft:polished_andesite replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^17 ^4 ^ ^-17 ^4 ^ minecraft:quartz_slab replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^15 ^1 ^ ^-15 ^4 ^ minecraft:water replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur,tag=EtiStrBTBM.2Strassenbahn] run fill ^18 ^5 ^ ^-18 ^18 ^ minecraft:air replace

scoreboard players add VarStrBTBM.2Pfeiler PZStrBTBM.2Schl 1

execute if score VarStrBTBM.2Pfeiler PZStrBTBM.2Schl matches 14.. align xyz run summon minecraft:area_effect_cloud ~ ~-1 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiStrBTBM.2Alle","EtiStrBTBM.2Pfeiler"]}

execute unless entity @s[tag=!EtiStrBTBM.2Zweierspur,tag=!EtiStrBTBM.2Strassenbahn] if score VarStrBTBM.2Pfeiler PZStrBTBM.2Schl matches 14.. align xyz run summon minecraft:area_effect_cloud ~ ~-1 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiStrBTBM.2Alle","EtiStrBTBM.2Pfeiler"]}

execute if score VarStrBTBM.2Pfeiler PZStrBTBM.2Schl matches 14.. as @e[type=minecraft:area_effect_cloud,tag=EtiStrBTBM.2Pfeiler,sort=nearest,limit=2] store success score @s PZStrBTBM.2Schl if entity @s[tag=EtiStrBTBM.2Strassenbahn]

execute if entity @s[tag=EtiStrBTBM.2Zweierspur] if score VarStrBTBM.2Pfeiler PZStrBTBM.2Schl matches 14.. as @e[type=minecraft:area_effect_cloud,tag=EtiStrBTBM.2Pfeiler] at @s facing ~ ~-1 ~ run teleport @s ^ ^ ^-3
execute if entity @s[tag=EtiStrBTBM.2Strassenbahn] if score VarStrBTBM.2Pfeiler PZStrBTBM.2Schl matches 14.. as @e[type=minecraft:area_effect_cloud,tag=EtiStrBTBM.2Pfeiler] at @s facing ~ ~-1 ~ run teleport @s ^ ^ ^-7

execute if score VarStrBTBM.2Pfeiler PZStrBTBM.2Schl matches 14.. run scoreboard players set VarStrBTBM.2Pfeiler PZStrBTBM.2Schl 0

scoreboard players set @s[scores={PZStrBTBM.2Laen=1}] PZStrBTBM.2Schl 1

execute if entity @s[tag=EtiStrBTBM.2Zweierspur] run scoreboard players add VarStrBTBM.2StrichLinie PZStrBTBM.2Schl 1
execute unless score @s[tag=EtiStrBTBM.2Zweierspur] PZStrBTBM.2Schl = @s PZStrBTBM.2Laen run setblock ~ ~1 ~ minecraft:quartz_slab[waterlogged=true] replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur] if score VarStrBTBM.2StrichLinie PZStrBTBM.2Schl matches 3.. run setblock ~ ~1 ~ minecraft:water replace
execute if entity @s[tag=EtiStrBTBM.2Zweierspur] if score VarStrBTBM.2StrichLinie PZStrBTBM.2Schl matches 3.. run scoreboard players set VarStrBTBM.2StrichLinie PZStrBTBM.2Schl 0

execute if score @s[tag=!EtiStrBTBM.2Strassenbahn] PZStrBTBM.2Schl = @s PZStrBTBM.2Laen run fill ^3 ^1 ^ ^-3 ^1 ^ minecraft:quartz_slab replace minecraft:water
execute if score @s[tag=EtiStrBTBM.2Strassenbahn] PZStrBTBM.2Schl = @s PZStrBTBM.2Laen run fill ^15 ^1 ^ ^-15 ^3 ^ minecraft:quartz_block replace minecraft:water
execute if score @s[tag=EtiStrBTBM.2Strassenbahn] PZStrBTBM.2Schl = @s PZStrBTBM.2Laen run fill ^15 ^4 ^ ^-15 ^4 ^ minecraft:quartz_slab replace minecraft:water

scoreboard players remove @s PZStrBTBM.2Laen 1

execute if score @s PZStrBTBM.2Laen matches 1.. positioned ^ ^ ^1 run function strassenbruecken-_und_-tunnelbaumaschine:v2strasse
