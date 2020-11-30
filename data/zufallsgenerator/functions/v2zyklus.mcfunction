
execute if entity @p[distance=..25,scores={PZZufG.2Wert=1}] store success score VarZufG.2Wahrheitswert PZZufG.2Wert if predicate zufallsgenerator:v2zufall
execute if entity @p[distance=..25,scores={PZZufG.2Wert=1}] if score VarZufG.2Wahrheitswert PZZufG.2Wert matches 0 run data merge storage zufallsgenerator:v2daten {EigZufG.2Bool:'{"text":"falsch","color":"red","bold":true}'}
execute if entity @p[distance=..25,scores={PZZufG.2Wert=1}] if score VarZufG.2Wahrheitswert PZZufG.2Wert matches 1 run data merge storage zufallsgenerator:v2daten {EigZufG.2Bool:'{"text":"wahr","color":"green","bold":true}'}

execute if score VarZufG.2Wahrheitswert PZZufG.2Wert = VarZufG.2Wahrheitswert PZZufG.2Wert as @a[distance=..25] unless entity @s[scores={PZZufG.2Wert=0}] run tellraw @a[distance=..25] ["Zufallsgenerator.2: ",{"text":"\nbool = ","bold":true},{"text":"zufall()","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für einen Zufallswert"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.2Wert set 1"} },{"text":"\nbool == ","bold":true},{"storage":"zufallsgenerator:v2daten","nbt":"\"EigZufG.2Bool\"","interpret":true} ]

execute as @a[distance=..25] unless entity @s[scores={PZZufG.2Wert=0}] run scoreboard players enable @s PZZufG.2Wert
execute as @a[distance=..25] unless entity @s[scores={PZZufG.2Wert=0}] run scoreboard players set @s PZZufG.2Wert 0
