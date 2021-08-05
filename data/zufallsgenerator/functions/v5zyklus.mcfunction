
execute if entity @p[distance=..25,scores={PZZufG.5Wert=1}] store result score VarZufG.5Zufallswert PZZufG.5Wert run loot spawn ~ ~ ~ loot zufallsgenerator:v5zufall

execute if score VarZufG.5Zufallswert PZZufG.5Wert = VarZufG.5Zufallswert PZZufG.5Wert as @a[distance=..25] unless entity @s[scores={PZZufG.5Wert=0}] run tellraw @a[distance=..25] ["Zufallsgenerator.5: ",{"text":"\nvar = ","bold":true},{"text":"zufallswert(100)","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für einen Zufallswert"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.5Wert set 1"} },{"text":"\nvar == ","bold":true},{"score":{"name":"VarZufG.5Zufallswert","objective":"PZZufG.5Wert"},"color":"dark_purple","bold":true} ]

execute as @a[distance=..25] unless entity @s[scores={PZZufG.5Wert=0}] run scoreboard players enable @s PZZufG.5Wert
execute as @a[distance=..25] unless entity @s[scores={PZZufG.5Wert=0}] run scoreboard players set @s PZZufG.5Wert 0
