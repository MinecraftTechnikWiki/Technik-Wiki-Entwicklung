
execute if entity @p[distance=..25,scores={PZZufG.3Wert=1}] store result score VarZufG.3Zufallswert PZZufG.3Wert run loot spawn ~ ~ ~ loot zufallsgenerator:v3zufall

execute if score VarZufG.3Zufallswert PZZufG.3Wert = VarZufG.3Zufallswert PZZufG.3Wert as @a[distance=..25] unless entity @s[scores={PZZufG.3Wert=0}] run tellraw @a[distance=..25] ["Zufallsgenerator.3: ",{"text":"\nvar = ","bold":true},{"text":"zufall(100)","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für einen Zufallswert"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.3Wert set 1"} },{"text":"\nvar == ","bold":true},{"score":{"name":"VarZufG.3Zufallswert","objective":"PZZufG.3Wert"},"color":"dark_purple","bold":true} ]

execute as @a[distance=..25] unless entity @s[scores={PZZufG.3Wert=0}] run scoreboard players enable @s PZZufG.3Wert
execute as @a[distance=..25] unless entity @s[scores={PZZufG.3Wert=0}] run scoreboard players set @s PZZufG.3Wert 0
