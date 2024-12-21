
execute store result storage mannschaftsauswahl:v2daten "EigManSA.2Argumente".Index int 1 run scoreboard players get VarManSA.2Mannschaften PZManSA.2Ausl

# Wenn der Spieler auf die Variablen-Option geklickt hat, wird die Variable entweder um eins erhöht oder verringert.
execute if entity @s[scores={PZManSA.2Ausl=1}] if score VarManSA.2Mannschaften PZManSA.2Ausl matches ..8 run scoreboard players add VarManSA.2Mannschaften PZManSA.2Ausl 1

scoreboard players set VarManSA.2Auswahl PZManSA.2Ausl 1
execute if entity @s[scores={PZManSA.2Ausl=-1..1}] unless entity @s[scores={PZManSA.2Ausl=0}] run function mannschaftsauswahl:v2liste with storage mannschaftsauswahl:v2daten "EigManSA.2Argumente"

scoreboard players set VarManSA.2Auswahl PZManSA.2Ausl 2
execute if entity @s[scores={PZManSA.2Ausl=-1..1}] unless entity @s[scores={PZManSA.2Ausl=0}] run function mannschaftsauswahl:v2liste with storage mannschaftsauswahl:v2daten "EigManSA.2Argumente"

execute if entity @s[scores={PZManSA.2Ausl=-1}] if score VarManSA.2Mannschaften PZManSA.2Ausl matches 2.. run scoreboard players remove VarManSA.2Mannschaften PZManSA.2Ausl 1

# Dem Spieler wird im Chat die Einstellungsmöglichkeit gezeigt, um die Anzahl der Teams zu bestimmen.
tellraw @s ["Mannschaftsauswahl.2:\n",{"text":"mannschaften = ","bold":true},{"text":"mannschaften + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Mannschaften + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZManSA.2Ausl set 1"} },"\n",{"text":"mannschaften = ","bold":true},{"text":"mannschaften - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Mannschaften - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZManSA.2Ausl set -1"} },"\n",{"text":"mannschaften == ","bold":true},{"score":{"name":"VarManSA.2Mannschaften","objective":"PZManSA.2Ausl"},"color":"dark_purple","bold":true} ]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZManSA.2Ausl
scoreboard players set @s PZManSA.2Ausl 0
