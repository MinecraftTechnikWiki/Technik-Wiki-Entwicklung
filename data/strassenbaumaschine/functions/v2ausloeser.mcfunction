# Wenn der Spieler auf die Option Zweierspur geklickt hat, besitzt er den entsprechenden Wert und bekommt das Etikett hinzugefügt oder entfernt.
execute if entity @s[scores={PZStraBM.2Ausl=1}] if score VarStraBM.2Spuren PZStraBM.2Laen matches ..15 run scoreboard players add VarStraBM.2Spuren PZStraBM.2Laen 1
execute if entity @s[scores={PZStraBM.2Ausl=-1}] if score VarStraBM.2Spuren PZStraBM.2Laen matches 2.. run scoreboard players remove VarStraBM.2Spuren PZStraBM.2Laen 1

# Wenn der Spieler auf den Schiffskanal geklickt hat, wird dem Spieler ein Etikett gegeben um diese Einstellung zu speichern.
tag @s[tag=!EtiStraBM.2Bahngleis,scores={PZStraBM.2Ausl=2}] add EtiStraBM.2Bahngleis
tag @s[tag=EtiStraBM.2Bahngleis,scores={PZStraBM.2Ausl=-2}] remove EtiStraBM.2Bahngleis

# In dem Optionen-Menü kann der Spieler die Länge festlegen wie lang der Kanal maximal sein soll. Diese Option kann jeder Spieler ändern und es gilt dann für alle Spieler die gleiche Länge.
execute if entity @s[scores={PZStraBM.2Ausl=3}] if score VarStraBM.2Laenge PZStraBM.2Laen matches ..255 run scoreboard players add VarStraBM.2Laenge PZStraBM.2Laen 1
execute if entity @s[scores={PZStraBM.2Ausl=-3}] if score VarStraBM.2Laenge PZStraBM.2Laen matches 5.. run scoreboard players remove VarStraBM.2Laenge PZStraBM.2Laen 1

# Der Spieler erhält ein Optionen-Menü in dem die spezifischen Werte angeklickt werden können, damit lassen sich die Zweierspur, das Straßenbahngleis und die Länge einstellen.
tellraw @s ["Straßenbaumaschine.2:\n",{"text":"spuren = ","bold":true},{"text":"spuren + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Spuren + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStraBM.2Ausl set 1"} },"\n",{"text":"spuren = ","bold":true},{"text":"spuren - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Spuren - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStraBM.2Ausl set -1"} },"\n",{"text":"spuren == ","bold":true},{"score":{"name":"VarStraBM.2Spuren","objective":"PZStraBM.2Laen"},"color":"dark_purple","bold":true},"\n",{"text":"strassengleis = ","bold":true},{"text":"wahr","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZStraBM.2Ausl set 2"} },"\n",{"text":"strassengleis = ","bold":true},{"text":"falsch","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZStraBM.2Ausl set -2"} }]
tellraw @s[tag=!EtiStraBM.2Bahngleis] ["",{"text":"strassengleis == ","bold":true},{"text":"falsch","color":"red","bold":true}]
tellraw @s[tag=EtiStraBM.2Bahngleis] ["",{"text":"strassengleis == ","bold":true},{"text":"wahr","color":"green","bold":true}]

tellraw @s ["",{"text":"maxlänge = ","bold":true},{"text":"maxlänge + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Länge + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStraBM.2Ausl set 3"} },"\n",{"text":"maxlänge = ","bold":true},{"text":"maxlänge - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Länge - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStraBM.2Ausl set -3"} },"\n",{"text":"maxlänge == ","bold":true},{"score":{"name":"VarStraBM.2Laenge","objective":"PZStraBM.2Laen"},"color":"dark_purple","bold":true}]

# Damit die Nachricht nur dann erscheint, wenn man in ihr die Optionen angeklickt hat, wird der Wert des Spielers auf null gesetzt und erhält erneut die Erlaubnis, die Auslöser auszulösen.
scoreboard players enable @s PZStraBM.2Ausl
scoreboard players set @s PZStraBM.2Ausl 0
