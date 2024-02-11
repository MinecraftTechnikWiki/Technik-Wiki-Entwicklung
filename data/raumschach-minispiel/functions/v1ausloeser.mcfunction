
execute if entity @s[scores={PZRSchMS.1Brett=1}] run data merge storage raumschach-minispiel:v1daten {EigRSchMS.1Variante:'{"text":"Raumschach","color":"blue","bold":true}'}
execute if entity @s[scores={PZRSchMS.1Brett=1}] run scoreboard players set VarRSchMS.1Variante PZRSchMS.1Brett 0

execute if entity @s[scores={PZRSchMS.1Brett=2}] run data merge storage raumschach-minispiel:v1daten {EigRSchMS.1Variante:'{"text":"Dreierraumschach","color":"gold","bold":true}'}
execute if entity @s[scores={PZRSchMS.1Brett=2}] run scoreboard players set VarRSchMS.1Variante PZRSchMS.1Brett 1

#execute if entity @s[scores={PZRSchMS.1Brett=3}] run data merge storage raumschach-minispiel:v1daten {EigRSchMS.1Variante:'{"text":"Viererraumschach","color":"dark_green","bold":true}'}
#execute if entity @s[scores={PZRSchMS.1Brett=3}] run scoreboard players set VarRSchMS.1Variante PZRSchMS.1Brett 2

execute if entity @s[scores={PZRSchMS.1Brett=4}] run data merge storage raumschach-minispiel:v1daten {EigRSchMS.1Horde:'{"text":"wahr","color":"green","bold":true}'}
execute if entity @s[scores={PZRSchMS.1Brett=4}] run scoreboard players set VarRSchMS.1Horde PZRSchMS.1Brett 1

execute if entity @s[scores={PZRSchMS.1Brett=5}] run data merge storage raumschach-minispiel:v1daten {EigRSchMS.1Horde:'{"text":"falsch","color":"red","bold":true}'}
execute if entity @s[scores={PZRSchMS.1Brett=5}] run scoreboard players set VarRSchMS.1Horde PZRSchMS.1Brett 0

tellraw @s ["Raumschach-Minispiel.1:\n",{"text":"variante = ","bold":true},{"text":"Raumschach","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für die variante = Raumschach"} },"clickEvent":{"action":"run_command","value":"/trigger PZRSchMS.1Brett set 1"} },"\n",{"text":"variante = ","bold":true},{"text":"Dreierraumschach","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für die variante = Dreierraumschach"} },"clickEvent":{"action":"run_command","value":"/trigger PZRSchMS.1Brett set 2"} },"\n",{"text":"variante == ","bold":true},{"storage":"raumschach-minispiel:v1daten","nbt":"\"EigRSchMS.1Variante\"","interpret":true},"\n",{"text":"horde = ","bold":true},{"text":"wahr","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für die horde = wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZRSchMS.1Brett set 4"} },"\n",{"text":"horde = ","bold":true},{"text":"falsch","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für die horde = falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZRSchMS.1Brett set 5"} },"\n",{"text":"horde == ","bold":true},{"storage":"raumschach-minispiel:v1daten","nbt":"\"EigRSchMS.1Horde\"","interpret":true} ]

scoreboard players enable @s PZRSchMS.1Brett
scoreboard players set @s PZRSchMS.1Brett 0
