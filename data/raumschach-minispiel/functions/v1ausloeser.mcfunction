
execute if entity @s[scores={PZRSchMS.1Brett=1}] run data merge storage raumschach-minispiel:v1werte {EigRSchMS.1Variante:'{"text":"Raumschach","color":"blue","bold":true}'}
execute if entity @s[scores={PZRSchMS.1Brett=1}] run scoreboard players set VarRSchMS.1Variante PZRSchMS.1Brett 0

execute if entity @s[scores={PZRSchMS.1Brett=2}] run data merge storage raumschach-minispiel:v1werte {EigRSchMS.1Variante:'{"text":"Dreierraumschach","color":"gold","bold":true}'}
execute if entity @s[scores={PZRSchMS.1Brett=2}] run scoreboard players set VarRSchMS.1Variante PZRSchMS.1Brett 1

#execute if entity @s[scores={PZRSchMS.1Brett=3}] run data merge storage raumschach-minispiel:v1werte {EigRSchMS.1Variante:'{"text":"Viererraumschach","color":"dark_green","bold":true}'}
#execute if entity @s[scores={PZRSchMS.1Brett=3}] run scoreboard players set VarRSchMS.1Variante PZRSchMS.1Brett 2

execute if entity @s[scores={PZRSchMS.1Brett=4}] run data merge storage raumschach-minispiel:v1werte {EigRSchMS.1Horde:'{"text":"wahr","color":"green","bold":true}'}
execute if entity @s[scores={PZRSchMS.1Brett=4}] run scoreboard players set VarRSchMS.1Horde PZRSchMS.1Brett 1

execute if entity @s[scores={PZRSchMS.1Brett=5}] run data merge storage raumschach-minispiel:v1werte {EigRSchMS.1Horde:'{"text":"falsch","color":"red","bold":true}'}
execute if entity @s[scores={PZRSchMS.1Brett=5}] run scoreboard players set VarRSchMS.1Horde PZRSchMS.1Brett 0

tellraw @s ["Raumschach-Minispiel.1: ",{"text":"\nvariante = ","bold":true},{"text":"Raumschach","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die variante = Raumschach"} },"clickEvent":{"action":"run_command","value":"/trigger PZRSchMS.1Brett set 1"} },{"text":"\nvariante = ","bold":true},{"text":"Dreierraumschach","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die variante = Dreierraumschach"} },"clickEvent":{"action":"run_command","value":"/trigger PZRSchMS.1Brett set 2"} },{"text":"\nvariante == ","bold":true},{"storage":"raumschach-minispiel:v1werte","nbt":"\"EigRSchMS.1Variante\"","interpret":true},{"text":"\nhorde = ","bold":true},{"text":"wahr","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die horde = wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZRSchMS.1Brett set 4"} },{"text":"\nhorde = ","bold":true},{"text":"falsch","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die horde = falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZRSchMS.1Brett set 5"} },{"text":"\nhorde == ","bold":true},{"storage":"raumschach-minispiel:v1werte","nbt":"\"EigRSchMS.1Horde\"","interpret":true} ]

scoreboard players enable @s PZRSchMS.1Brett
scoreboard players set @s PZRSchMS.1Brett 0
