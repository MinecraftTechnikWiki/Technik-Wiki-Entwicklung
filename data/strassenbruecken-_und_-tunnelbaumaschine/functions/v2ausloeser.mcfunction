
#tag @s[tag=!EtiStrBTBM.2Zweierspur,scores={PZStrBTBM.2Ausl=1}] add EtiStrBTBM.2Zweierspur
#tag @s[tag=EtiStrBTBM.2Zweierspur,scores={PZStrBTBM.2Ausl=-1}] remove EtiStrBTBM.2Zweierspur

execute if entity @s[scores={PZStrBTBM.2Ausl=1}] if score VarStrBTBM.2Spur PZStrBTBM.2Laen matches ..9 run scoreboard players add VarStrBTBM.2Spur PZStrBTBM.2Laen 1
execute if entity @s[scores={PZStrBTBM.2Ausl=-1}] if score VarStrBTBM.2Spur PZStrBTBM.2Laen matches 2.. run scoreboard players remove VarStrBTBM.2Spur PZStrBTBM.2Laen 1

tag @s[tag=!EtiStrBTBM.2Strassenbahn,scores={PZStrBTBM.2Ausl=2}] add EtiStrBTBM.2Strassenbahn
tag @s[tag=EtiStrBTBM.2Strassenbahn,scores={PZStrBTBM.2Ausl=-2}] remove EtiStrBTBM.2Strassenbahn

# In dem Optionen-Menü kann der Spieler die Länge festlegen wie lang der Kanal maximal sein soll. Diese Option kann jeder Spieler ändern und es gilt dann für alle Spieler die gleiche Länge.
execute if entity @s[scores={PZStrBTBM.2Ausl=3}] if score VarStrBTBM.2Laenge PZStrBTBM.2Laen matches ..255 run scoreboard players add VarStrBTBM.2Laenge PZStrBTBM.2Laen 1
execute if entity @s[scores={PZStrBTBM.2Ausl=-3}] if score VarStrBTBM.2Laenge PZStrBTBM.2Laen matches 5.. run scoreboard players remove VarStrBTBM.2Laenge PZStrBTBM.2Laen 1

tellraw @s ["Kanalbrücken- und -tunnelbaumaschine.2:\n",{"text":"spuren = ","bold":true},{"text":"wahr","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Spuren + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStrBTBM.2Ausl set 1"} },"\n",{"text":"spuren = ","bold":true},{"text":"falsch","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Spuren - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStrBTBM.2Ausl set -1"} },"\n",{"text":"spuren == ","bold":true},{"score":{"name":"VarStrBTBM.2Spur","objective":"PZStrBTBM.2Laen"},"color":"dark_purple","bold":true},"\n",{"text":"straßenbahn = ","bold":true},{"text":"wahr","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Wert wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZStrBTBM.2Ausl set 2"} },"\n",{"text":"straßenbahn = ","bold":true},{"text":"falsch","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Wert falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZStrBTBM.2Ausl set -2"} }]
tellraw @s[tag=!EtiStrBTBM.2Strassenbahn] ["",{"text":"straßenbahn == ","bold":true},{"text":"falsch","color":"red","bold":true}]
tellraw @s[tag=EtiStrBTBM.2Strassenbahn] ["",{"text":"straßenbahn == ","bold":true},{"text":"wahr","color":"green","bold":true}]

tellraw @s ["",{"text":"maxlänge = ","bold":true},{"text":"maxlänge + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Länge + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStrBTBM.2Ausl set 3"} },"\n",{"text":"maxlänge = ","bold":true},{"text":"maxlänge - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Länge - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZStrBTBM.2Ausl set -3"} },"\n",{"text":"maxlänge == ","bold":true},{"score":{"name":"VarStrBTBM.2Laenge","objective":"PZStrBTBM.2Laen"},"color":"dark_purple","bold":true}]

# Damit die Nachricht nur dann erscheint, wenn man in ihr die Optionen angeklickt hat, wird der Wert des Spielers auf null gesetzt und erhält erneut die Erlaubnis, die Auslöser auszulösen.
scoreboard players enable @s PZStrBTBM.2Ausl
scoreboard players set @s PZStrBTBM.2Ausl 0
