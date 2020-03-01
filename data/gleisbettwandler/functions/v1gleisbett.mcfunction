
execute if block ~ ~-1 ~ #minecraft:rails run teleport @s ~ ~-1 ~
execute if block ~ ~1 ~ #minecraft:rails run teleport @s ~ ~1 ~

execute if block ~ ~ ~ minecraft:rail run scoreboard players set @s PZGlBW.1Schl 1
execute if block ~ ~ ~ minecraft:powered_rail run scoreboard players set @s PZGlBW.1Schl 2
execute if block ~ ~ ~ minecraft:detector_rail run scoreboard players set @s PZGlBW.1Schl 3
execute if block ~ ~ ~ minecraft:activator_rail run scoreboard players set @s PZGlBW.1Schl 4

execute if entity @s[tag=!EtiGlBW.1Abbrechen] if block ~ ~ ~ #minecraft:rails run setblock ~ ~-1 ~ minecraft:structure_block{posX:0,posY:0,posZ:0,ignoreEntities:true,mode:"LOAD",name:"gleisbettwandler:v1gleisbett"} replace
execute if entity @s[tag=!EtiGlBW.1Abbrechen] if block ~ ~ ~ #minecraft:rails run setblock ~ ~ ~ minecraft:redstone_block replace

execute if entity @s[scores={PZGlBW.1Schl=1}] run setblock ~ ~ ~ minecraft:rail replace
execute if entity @s[scores={PZGlBW.1Schl=2}] run setblock ~ ~ ~ minecraft:powered_rail replace
execute if entity @s[scores={PZGlBW.1Schl=3}] run setblock ~ ~ ~ minecraft:detector_rail replace
execute if entity @s[scores={PZGlBW.1Schl=4}] run setblock ~ ~ ~ minecraft:activator_rail replace

scoreboard players set @s PZGlBW.1Erfolg 0
execute store success score @s PZGlBW.1Erfolg if block ^ ^ ^1 #minecraft:rails run teleport @s ^ ^ ^1
execute if block ^ ^1 ^1 #minecraft:rails store success score @s[scores={PZGlBW.1Erfolg=0}] PZGlBW.1Erfolg run teleport @s ^ ^1 ^1
execute if block ^ ^-1 ^1 #minecraft:rails store success score @s[scores={PZGlBW.1Erfolg=0}] PZGlBW.1Erfolg run teleport @s ^ ^-1 ^1

execute if entity @s[scores={PZGlBW.1Erfolg=0}] run tellraw @a[distance=..10] ["Gleisbettwandler.1: ",{"text":"Keine Schiene liegt voraus!","color":"red","bold":true}]

tag @e[type=minecraft:armor_stand,tag=EtiGlBW.1Wandler,tag=!EtiGlBW.1Abbrechen,scores={PZGlBW.1Erfolg=0}] add EtiGlBW.1Abbrechen
tag @e[type=minecraft:armor_stand,tag=EtiGlBW.1Wandler,tag=EtiGlBW.1Abbrechen,scores={PZGlBW.1Erfolg=1}] remove EtiGlBW.1Abbrechen
