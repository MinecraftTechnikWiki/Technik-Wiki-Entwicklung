
execute if entity @s[scores={PZStBrSy.1Ausl=1}] if score VarStBrSy.1Groesse PZStBrSy.1Ausl matches ..24 run scoreboard players add VarStBrSy.1Groesse PZStBrSy.1Ausl 1
execute if entity @s[scores={PZStBrSy.1Ausl=-1}] if score VarStBrSy.1Groesse PZStBrSy.1Ausl matches 6.. run scoreboard players remove VarStBrSy.1Groesse PZStBrSy.1Ausl 1

# Dem Spieler wird im Chat die Optionen-Liste angezeigt, mit Logik-, Richtungs- und Variablen-Option.
tellraw @s ["Steinbruch-System.1:\n",{"text":"groesse = ","bold":true},{"text":"groesse + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Größe + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStBrSy.1Ausl set 1"} },"\n",{"text":"groesse = ","bold":true},{"text":"groesse - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Größe - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStBrSy.1Ausl set -1"} },"\n",{"text":"groesse == ","bold":true},{"score":{"name":"VarStBrSy.1Groesse","objective":"PZStBrSy.1Ausl"},"color":"dark_purple","bold":true} ]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZStBrSy.1Ausl
scoreboard players set @s PZStBrSy.1Ausl 0
