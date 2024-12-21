
execute positioned ~-4 ~-1 ~-4 if score @s PZPaintBMS.1Wert = @e[dx=8,dy=32,dz=8,type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,limit=1] PZPaintBMS.1Wert run tag @s add EtiPaintBMS.1Nachschub

execute if entity @s[tag=EtiPaintBMS.1Nachschub] store result score PZPaintBMS.1Baelle PZPaintBMS.1Wert run clear @s minecraft:snowball[minecraft:custom_data~{EigPaintBMS.1Alle:true}] 0

execute if entity @s[tag=EtiPaintBMS.1Nachschub,scores={PZPaintBMS.1Wert=1}] if score PZPaintBMS.1Baelle PZPaintBMS.1Wert matches 0 run give @s minecraft:snowball[minecraft:custom_name='{"text":"Paintball","color":"red","bold":true}',minecraft:custom_data={EigPaintBMS.1Alle:true,EigPaintBMS.1Mannschaft:1},minecraft:enchantment_glint_override=true] 16
execute if entity @s[tag=EtiPaintBMS.1Nachschub,scores={PZPaintBMS.1Wert=2}] if score PZPaintBMS.1Baelle PZPaintBMS.1Wert matches 0 run give @s[scores={PZPaintBMS.1Wert=2}] minecraft:snowball[minecraft:custom_name='{"text":"Paintball","color":"blue","bold":true}',minecraft:custom_data={EigPaintBMS.1Alle:true,EigPaintBMS.1Mannschaft:2},minecraft:enchantment_glint_override=true] 16

tag @s[tag=EtiPaintBMS.1Nachschub] remove EtiPaintBMS.1Nachschub

execute if entity @s[gamemode=creative] at @s run function paintball-minispiel:v1verloren
