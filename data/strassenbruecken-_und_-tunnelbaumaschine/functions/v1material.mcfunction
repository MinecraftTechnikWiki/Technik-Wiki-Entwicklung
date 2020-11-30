
execute store result score VarStrBTBM.1Beton PZStrBTBM.1Wert run clear @s minecraft:gray_concrete 0
execute store result score VarStrBTBM.1Quarz PZStrBTBM.1Wert run clear @s minecraft:quartz_block 0
execute store result score VarStrBTBM.1Stufe PZStrBTBM.1Wert run clear @s minecraft:stone_brick_slab 0

execute if score VarStrBTBM.1Beton PZStrBTBM.1Wert matches 3.. if score VarStrBTBM.1Stufe PZStrBTBM.1Wert matches 4.. if score VarStrBTBM.1Quarz PZStrBTBM.1Wert matches 2.. run tag @s add EtiStrBTBM.1Material
execute if entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr",sort=nearest,limit=1] unless score VarStrBTBM.1Beton PZStrBTBM.1Wert matches 7.. run tag @s[tag=EtiStrBTBM.1Material] remove EtiStrBTBM.1Material

clear @s[tag=EtiStrBTBM.1Material] minecraft:gray_concrete 3
clear @s[tag=EtiStrBTBM.1Material] minecraft:quartz_block 2
clear @s[tag=EtiStrBTBM.1Material] minecraft:stone_brick_slab 4

execute if entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr",sort=nearest,limit=1] run clear @s[tag=EtiStrBTBM.1Material] minecraft:gray_concrete 4

execute if entity @s[tag=EtiStrBTBM.1Material] rotated ~ 0 run function strassenbruecken-_und_-tunnelbaumaschine:v1strasse_bauen
tellraw @s[tag=!EtiStrBTBM.1Material] ["Straßenbrücken- und -tunnelbaumaschine.1 ",{"text":"Du hast zu wenig Blöcke bei dir!","color":"red","bold":true}]

execute if entity @s[tag=!EtiStrBTBM.1Material] run data merge entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiStrBTBM.1Tempomat,name="wahr",sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

tag @s[tag=EtiStrBTBM.1Material] remove EtiStrBTBM.1Material
