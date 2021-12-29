
scoreboard players add @s PZBestLi.1Wert 0
tag @s[tag=!EtiBestLi.1Rangliste] add EtiBestLi.1Rangliste

# Wenn der Spieler auf die Variablen-Option geklickt hat, wird die Variable entweder um eins erhöht oder verringert.
scoreboard players add @s[scores={PZBestLi.1Ausl=1,PZBestLi.1Wert=..99}] PZBestLi.1Wert 1
scoreboard players remove @s[scores={PZBestLi.1Ausl=-1,PZBestLi.1Wert=1..}] PZBestLi.1Wert 1

execute if entity @s[scores={PZBestLi.1Ausl=2}] if score VarBestLi.1Max PZBestLi.1Wert matches ..9 run scoreboard players add VarBestLi.1Max PZBestLi.1Wert 1
execute if entity @s[scores={PZBestLi.1Ausl=-2}] if score VarBestLi.1Max PZBestLi.1Wert matches 4.. run scoreboard players remove VarBestLi.1Max PZBestLi.1Wert 1

# Dem Spieler wird im Chat die Optionen-Liste angezeigt, mit Logik-, Richtungs- und Variablen-Option.
tellraw @s ["Bestenliste.1:\n",{"text":"wert = ","bold":true},{"text":"wert + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBestLi.1Ausl set 1"} },"\n",{"text":"wert = ","bold":true},{"text":"wert - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBestLi.1Ausl set -1"} },"\n",{"text":"wert == ","bold":true},{"score":{"name":"@s","objective":"PZBestLi.1Wert"},"color":"dark_purple","bold":true},"\n",{"text":"max = ","bold":true},{"text":"max + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Max + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBestLi.1Ausl set 2"} },"\n",{"text":"max = ","bold":true},{"text":"max - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Max - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBestLi.1Ausl set -2"} },"\n",{"text":"max == ","bold":true},{"score":{"name":"VarBestLi.1Max","objective":"PZBestLi.1Wert"},"color":"dark_purple","bold":true} ]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZBestLi.1Ausl
scoreboard players set @s PZBestLi.1Ausl 0
