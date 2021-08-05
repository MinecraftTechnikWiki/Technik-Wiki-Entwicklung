# Wenn der Spieler auf die Variablen-Option geklickt hat, wird die Variable entweder um eins erhöht oder verringert.
execute if entity @s[scores={PZManSV.2Ausl=1}] if score VarManSV.2Mannschaften PZManSV.2Ausl matches ..3 run scoreboard players add VarManSV.2Mannschaften PZManSV.2Ausl 1
execute if entity @s[scores={PZManSV.2Ausl=-1}] if score VarManSV.2Mannschaften PZManSV.2Ausl matches 3.. run scoreboard players remove VarManSV.2Mannschaften PZManSV.2Ausl 1

# Dem Spieler wird im Chat die Einstellungsmöglichkeit gezeigt, um die Anzahl der Teams zu bestimmen.
tellraw @s ["Mannschaftsverteiler.2:\n",{"text":"mannschaften = ","bold":true},{"text":"mannschaften + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Mannschaften + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZManSV.2Ausl set 1"} },"\n",{"text":"mannschaften = ","bold":true},{"text":"mannschaften - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Mannschaften - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZManSV.2Ausl set -1"} },"\n",{"text":"mannschaften == ","bold":true},{"score":{"name":"VarManSV.2Mannschaften","objective":"PZManSV.2Ausl"},"color":"dark_purple","bold":true} ]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZManSV.2Ausl
scoreboard players set @s PZManSV.2Ausl 0
