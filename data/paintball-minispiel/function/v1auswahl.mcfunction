
scoreboard players operation VarPaintBMS.1Auswahl PZPaintBMS.1Wert = @s PZPaintBMS.1Wert 

execute store result score @s PZPaintBMS.1Wert run data get entity @s SelectedItem.components.minecraft:custom_data."EigPaintBMS.1Team"

kill @e[distance=..5,type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{EigPaintBMS.1Alle:true} } } }]

execute store result score VarPaintBMS.1Banner PZPaintBMS.1Wert run clear @s minecraft:red_banner[minecraft:custom_data~{EigPaintBMS.1Alle:true}] 0
execute unless score VarPaintBMS.1Banner PZPaintBMS.1Wert matches 1..2 run clear @s minecraft:red_banner[minecraft:custom_data~{EigPaintBMS.1Alle:true}]

execute store result score VarPaintBMS.1Banner PZPaintBMS.1Wert run clear @s minecraft:blue_banner[minecraft:custom_data~{EigPaintBMS.1Alle:true}] 0
execute unless score VarPaintBMS.1Banner PZPaintBMS.1Wert matches 1..2 run clear @s minecraft:blue_banner[minecraft:custom_data~{EigPaintBMS.1Alle:true}]

item replace entity @s hotbar.8 with minecraft:red_banner[minecraft:enchantments={"minecraft:binding_curse":1},minecraft:custom_name={text:"Rotes Team",color:"red",bold:true},minecraft:custom_data={EigPaintBMS.1Alle:true,EigPaintBMS.1Team:1}]
item replace entity @s hotbar.7 with minecraft:blue_banner[minecraft:enchantments={"minecraft:binding_curse":1},minecraft:custom_name={text:"Blaues Team",color:"blue",bold:true},minecraft:custom_data={EigPaintBMS.1Alle:true,EigPaintBMS.1Team:2}]

execute if score @s[scores={PZPaintBMS.1Wert=0}] PZPaintBMS.1Wert = VarPaintBMS.1Auswahl PZPaintBMS.1Wert run return 0

item replace entity @s[scores={PZPaintBMS.1Wert=0}] armor.head with minecraft:air

execute if entity @s[scores={PZPaintBMS.1Wert=0}] run return run tellraw @s ["Paintball-Minispiel.1:\n",{text:"Du hast die Mannschaft verlassen!",color:"gray",bold:true}]

execute if score @s PZPaintBMS.1Wert = VarPaintBMS.1Auswahl PZPaintBMS.1Wert run return 0

scoreboard players set VarPaintBMS.1Beginnen PZPaintBMS.1Wert 16

item replace entity @s armor.head from entity @s weapon.mainhand

scoreboard players set VarPaintBMS.1Warten PZPaintBMS.1Wert 10

execute if entity @s[scores={PZPaintBMS.1Wert=1}] run return run tellraw @s ["Paintball-Minispiel.1:\n",{text:"Du bist der roten Mannschaft beigetreten!",color:"red",bold:true}]
tellraw @s ["Paintball-Minispiel.1:\n",{text:"Du bist der blauen Mannschaft beigetreten!",color:"blue",bold:true}]
