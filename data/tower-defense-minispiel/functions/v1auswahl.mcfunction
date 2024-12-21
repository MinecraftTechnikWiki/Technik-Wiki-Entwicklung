
scoreboard players operation VarTowDefMS.1Auswahl PZTowDefMS.1Wert = @s PZTowDefMS.1Wert

execute store result score @s PZTowDefMS.1Wert run data get entity @s SelectedItem.components.minecraft:custom_data."EigTowDefMS.1Team"

kill @e[distance=..5,type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{EigTowDefMS.1Alle:true} } } }]

execute store result score VarTowDefMS.1Banner PZTowDefMS.1Wert run clear @s minecraft:red_banner[minecraft:custom_data~{EigTowDefMS.1Alle:true}] 0
execute unless score VarTowDefMS.1Banner PZTowDefMS.1Wert matches 1..2 run clear @s minecraft:red_banner[minecraft:custom_data~{EigTowDefMS.1Alle:true}]

execute store result score VarTowDefMS.1Banner PZTowDefMS.1Wert run clear @s minecraft:blue_banner[minecraft:custom_data~{EigTowDefMS.1Alle:true}] 0
execute unless score VarTowDefMS.1Banner PZTowDefMS.1Wert matches 1..2 run clear @s minecraft:blue_banner[minecraft:custom_data~{EigTowDefMS.1Alle:true}]

item replace entity @a[team=TMTowDefMS.1Lobby] hotbar.8 with minecraft:red_banner[minecraft:enchantments={levels:{"minecraft:binding_curse":1} },minecraft:custom_name='{"text":"Rotes Team","color":"red","bold":true}',minecraft:custom_data={EigTowDefMS.1Alle:true,EigTowDefMS.1Team:1}]
item replace entity @a[team=TMTowDefMS.1Lobby] hotbar.7 with minecraft:blue_banner[minecraft:enchantments={levels:{"minecraft:binding_curse":1} },minecraft:custom_name='{"text":"Blaues Team","color":"blue","bold":true}',minecraft:custom_data={EigTowDefMS.1Alle:true,EigTowDefMS.1Team:2}]

execute if score @s[scores={PZTowDefMS.1Wert=0}] PZTowDefMS.1Wert = VarTowDefMS.1Auswahl PZTowDefMS.1Wert run return 0

item replace entity @s[scores={PZTowDefMS.1Wert=0}] armor.head with minecraft:air

execute if entity @s[scores={PZTowDefMS.1Wert=0}] run return run tellraw @s ["Tower-Defense-Minispiel.1:\n",{"text":"Du hast die Mannschaft verlassen!","color":"gray","bold":true}]

execute if score @s PZTowDefMS.1Wert = VarTowDefMS.1Auswahl PZTowDefMS.1Wert run return 0

scoreboard players set VarTowDefMS.1Beginnen PZTowDefMS.1Wert 16

item replace entity @s armor.head from entity @s weapon.mainhand

execute if entity @s[scores={PZTowDefMS.1Wert=1}] run return run tellraw @s ["Tower-Defense-Minispiel.1:\n",{"text":"Du bist der roten Mannschaft beigetreten!","color":"red","bold":true}]
tellraw @s ["Tower-Defense-Minispiel.1:\n",{"text":"Du bist der blauen Mannschaft beigetreten!","color":"blue","bold":true}]
