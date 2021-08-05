
execute if entity @p[distance=..25,scores={PZZufG.4Wert=1}] store success score VarZufG.4Wahrheitswert PZZufG.4Wert if predicate zufallsgenerator:v4zufall
execute if entity @p[distance=..25,scores={PZZufG.4Wert=1}] if score VarZufG.4Wahrheitswert PZZufG.4Wert matches 0 run data merge storage zufallsgenerator:v2daten {EigZufG.4Bool:'{"text":"falsch","color":"red","bold":true}'}
execute if entity @p[distance=..25,scores={PZZufG.4Wert=1}] if score VarZufG.4Wahrheitswert PZZufG.4Wert matches 1 run data merge storage zufallsgenerator:v2daten {EigZufG.4Bool:'{"text":"wahr","color":"green","bold":true}'}

execute if score VarZufG.4Wahrheitswert PZZufG.4Wert = VarZufG.4Wahrheitswert PZZufG.4Wert as @a[distance=..25] unless entity @s[scores={PZZufG.4Wert=0}] run tellraw @a[distance=..25] ["Zufallsgenerator.4: ",{"text":"\nbool = ","bold":true},{"text":"zufallswert(2)","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für einen Zufallswert"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.4Wert set 1"} },{"text":"\nbool == ","bold":true},{"storage":"zufallsgenerator:v2daten","nbt":"\"EigZufG.4Bool\"","interpret":true} ]

execute as @a[distance=..25] unless entity @s[scores={PZZufG.4Wert=0}] run scoreboard players enable @s PZZufG.4Wert
execute as @a[distance=..25] unless entity @s[scores={PZZufG.4Wert=0}] run scoreboard players set @s PZZufG.4Wert 0
