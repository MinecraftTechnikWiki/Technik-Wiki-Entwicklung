
scoreboard players operation VarManSA.1Auswahl PZManSA.1Wert = @s PZManSA.1Wert

execute store result score @s PZManSA.1Wert run data get entity @s SelectedItem.components.minecraft:custom_data."EigManSA.1Team"

kill @e[distance=..5,type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{EigManSA.1Alle:true} } } }]

execute store result score VarManSA.1Banner PZManSA.1Wert run clear @s minecraft:red_banner[minecraft:custom_data~{EigManSA.1Alle:true}] 0
execute unless score VarManSA.1Banner PZManSA.1Wert matches 1..2 run clear @s minecraft:red_banner[minecraft:custom_data~{EigManSA.1Alle:true}]
item replace entity @s hotbar.8 with minecraft:red_banner[minecraft:enchantments={levels:{"minecraft:binding_curse":1} },minecraft:custom_name='{"text":"Rotes Team","color":"red","bold":true}',minecraft:custom_data={EigManSA.1Alle:true,EigManSA.1Team:1}]

execute store result score VarManSA.1Banner PZManSA.1Wert run clear @s minecraft:blue_banner[minecraft:custom_data~{EigManSA.1Alle:true}] 0
execute unless score VarManSA.1Banner PZManSA.1Wert matches 1..2 run clear @s minecraft:blue_banner[minecraft:custom_data~{EigManSA.1Alle:true}]
item replace entity @s hotbar.7 with minecraft:blue_banner[minecraft:enchantments={levels:{"minecraft:binding_curse":1} },minecraft:custom_name='{"text":"Blaues Team","color":"blue","bold":true}',minecraft:custom_data={EigManSA.1Alle:true,EigManSA.1Team:2}]

execute if score @s[scores={PZManSA.1Wert=0}] PZManSA.1Wert = VarManSA.1Auswahl PZManSA.1Wert run return 0

item replace entity @s[scores={PZManSA.1Wert=0}] armor.head with minecraft:air

execute if entity @s[scores={PZManSA.1Wert=0}] run return run tellraw @s ["Mannschaftsauswahl.1:\n",{"text":"Du hast die Mannschaft verlassen!","color":"gray","bold":true}]

execute if score @s PZManSA.1Wert = VarManSA.1Auswahl PZManSA.1Wert run return 0

scoreboard players set VarManSA.1Beginnen PZManSA.1Wert 15

item replace entity @s armor.head from entity @s weapon.mainhand

execute if entity @s[scores={PZManSA.1Wert=1}] run return run tellraw @s ["Mannschaftsauswahl.1:\n",{"text":"Du bist der roten Mannschaft beigetreten!","color":"red","bold":true}]
tellraw @s ["Mannschaftsauswahl.1:\n",{"text":"Du bist der blauen Mannschaft beigetreten!","color":"blue","bold":true}]
