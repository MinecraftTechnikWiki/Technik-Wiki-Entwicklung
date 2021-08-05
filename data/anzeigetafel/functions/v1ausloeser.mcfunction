
scoreboard players add @s PZAnzTaf.1Wert 0
tag @s[tag=!EtiAnzTaf.1Rangliste] add EtiAnzTaf.1Rangliste

# Wenn der Spieler auf die Variablen-Option geklickt hat, wird die Variable entweder um eins erhöht oder verringert.
scoreboard players add @s[scores={PZAnzTaf.1Ausl=1,PZAnzTaf.1Wert=..99}] PZAnzTaf.1Wert 1
scoreboard players remove @s[scores={PZAnzTaf.1Ausl=-1,PZAnzTaf.1Wert=1..}] PZAnzTaf.1Wert 1

execute if entity @s[scores={PZAnzTaf.1Ausl=2}] if score VarAnzTaf.1Max PZAnzTaf.1Wert matches ..9 run scoreboard players add VarAnzTaf.1Max PZAnzTaf.1Wert 1
execute if entity @s[scores={PZAnzTaf.1Ausl=-2}] if score VarAnzTaf.1Max PZAnzTaf.1Wert matches 4.. run scoreboard players remove VarAnzTaf.1Max PZAnzTaf.1Wert 1

# Dem Spieler wird im Chat die Optionen-Liste angezeigt, mit Logik-, Richtungs- und Variablen-Option.
tellraw @s ["Anzeigetafel.1:\n",{"text":"wert = ","bold":true},{"text":"wert + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Wert + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZAnzTaf.1Ausl set 1"} },"\n",{"text":"wert = ","bold":true},{"text":"wert - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Wert - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZAnzTaf.1Ausl set -1"} },"\n",{"text":"wert == ","bold":true},{"score":{"name":"@s","objective":"PZAnzTaf.1Wert"},"color":"dark_purple","bold":true},"\n",{"text":"max = ","bold":true},{"text":"max + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Max + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZAnzTaf.1Ausl set 2"} },"\n",{"text":"max = ","bold":true},{"text":"max - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Max - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZAnzTaf.1Ausl set -2"} },"\n",{"text":"max == ","bold":true},{"score":{"name":"VarAnzTaf.1Max","objective":"PZAnzTaf.1Wert"},"color":"dark_purple","bold":true} ]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZAnzTaf.1Ausl
scoreboard players set @s PZAnzTaf.1Ausl 0
