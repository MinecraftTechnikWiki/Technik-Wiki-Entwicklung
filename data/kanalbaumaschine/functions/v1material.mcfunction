
execute store result score VarKanaBM.1Beton PZKanaBM.1Wert run clear @s minecraft:white_concrete 0
execute store result score VarKanaBM.1Stufe PZKanaBM.1Wert run clear @s minecraft:quartz_slab 0
execute store result score VarKanaBM.1Andesit PZKanaBM.1Wert run clear @s minecraft:polished_andesite 0

execute if score VarKanaBM.1Beton PZKanaBM.1Wert matches 3.. if score VarKanaBM.1Stufe PZKanaBM.1Wert matches 4.. if score VarKanaBM.1Andesit PZKanaBM.1Wert matches 2.. run tag @s add EtiKanaBM.1Material
execute if entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr",sort=nearest,limit=1] unless score VarKanaBM.1Beton PZKanaBM.1Wert matches 7.. run tag @s[tag=EtiKanaBM.1Material] remove EtiKanaBM.1Material

clear @s[tag=EtiKanaBM.1Material] minecraft:white_concrete 3
clear @s[tag=EtiKanaBM.1Material] minecraft:quartz_slab 4
clear @s[tag=EtiKanaBM.1Material] minecraft:polished_andesite 2

execute if entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr",sort=nearest,limit=1] run clear @s[tag=EtiKanaBM.1Material] minecraft:white_concrete 4

execute if entity @s[tag=EtiKanaBM.1Material] run function kanalbaumaschine:v1kanal_bauen
tellraw @s[tag=!EtiKanaBM.1Material] ["Kanalbaumaschine.1 ",{"text":"Du hast zu wenig Blöcke bei dir!","color":"red","bold":true}]

execute if entity @s[tag=!EtiKanaBM.1Material] run data merge entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiKanaBM.1Tempomat,name="wahr",sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

tag @s[tag=EtiKanaBM.1Material] remove EtiKanaBM.1Material
