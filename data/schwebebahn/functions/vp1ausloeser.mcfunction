# Der Wert des Spielers wird ausgelesen und in den Wert des Markierers gespeichert. Falls der Spieler nicht gefunden wurde, wird stattdessen der Wert null gespeichert.
execute store result score @s PZSchwB.p1Ausl run scoreboard players get @p[distance=..1,scores={PZSchwB.p1Ausgewaehlt=1..,PZSchwB.p1Ausl=1..}] PZSchwB.p1Ausl
execute store result score @s PZSchwB.p1Ausgewaehlt run scoreboard players get @p[distance=..1,scores={PZSchwB.p1Ausgewaehlt=1..}] PZSchwB.p1Ausgewaehlt

# Zuerst wird geprüft ob der Markierer überhaupt die Eigenschaft für die Richtung besitzt und falls nicht, wird ihm der Wert eins gegeben, sodass anschließend die Drehen-Funktion geladen wird. Sie wird ansonsten auch geladen, wenn der Spieler in eine der drei anderen Richtungen die Bahn drehen möchte.
execute store success score @s[scores={PZSchwB.p1Ausl=0}] PZSchwB.p1Ausl unless data entity @s data."EigSchwB.p1Richtung"[1]
execute at @s[scores={PZSchwB.p1Ausl=1..4}] run function schwebebahn:vp1drehen

# Der Spieler kann das Tempo der Bahn erhöhen oder verringern.
scoreboard players add @s[scores={PZSchwB.p1Ausl=8,PZSchwB.p1Wert=..2}] PZSchwB.p1Wert 1
scoreboard players remove @s[scores={PZSchwB.p1Ausl=9,PZSchwB.p1Wert=2..}] PZSchwB.p1Wert 1

# Der Spieler kann den Tempomat ein und ausschalten.
data modify entity @s[scores={PZSchwB.p1Ausl=5}] data."EigSchwB.p1Tempomat" set value '{"bold":true,"color":"green","text":"wahr"}'
data modify entity @s[scores={PZSchwB.p1Ausl=6}] data."EigSchwB.p1Tempomat" set value '{"bold":true,"color":"red","text":"falsch"}'

# Wenn der Spieler fahren möchte, wird zuvor die Bewegen-Variable auf null gesetzt und das Tempo vom Spieler-Wert kopiert, anschließend wird dann die Fahren-Funktion geladen.
scoreboard players set VarSchwB.p1Bewegen PZSchwB.p1Wert 0
scoreboard players operation VarSchwB.p1Tempo PZSchwB.p1Wert = @s[scores={PZSchwB.p1Ausl=7}] PZSchwB.p1Wert
execute at @s[scores={PZSchwB.p1Ausl=7}] run function schwebebahn:vp1fahren

# Wenn der Spieler die Spur-Höhe anpassen will, wird dies darüber gelöst.
scoreboard players add @s[scores={PZSchwB.p1Ausl=10,PZSchwB.p1Wert=..63}] PZSchwB.p1Wert 1
scoreboard players remove @s[scores={PZSchwB.p1Ausl=11,PZSchwB.p1Wert=1..}] PZSchwB.p1Wert 1

# Die Optionen sollen nur dann angezeigt werden, wenn der Spieler nicht gerade den Tempomaten am laufen hat und nur, wenn der Spieler auch das Schwert ausgewählt hat.
execute unless entity @s[scores={PZSchwB.p1Ausl=7},nbt={data:{EigSchwB.p1Tempomat:'{"bold":true,"color":"green","text":"wahr"}'} }] run tellraw @p[distance=..1,tag=EtiSchwB.p1Sitzen,scores={PZSchwB.p1Ausgewaehlt=1}] ["Schwebebahn.erweitert.1:\n",{"text":"richtung = ","bold":true},{"text":"drehen(","extra":[{"entity":"@s","nbt":"data.\"EigSchwB.p1Richtung\"[1]","color":"gray","interpret":true},{"text":")"}],"color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für nach Rechts"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 2"} },"\n",{"text":"richtung = ","bold":true},{"text":"drehen(","extra":[{"entity":"@s","nbt":"data.\"EigSchwB.p1Richtung\"[-1]","color":"gray","interpret":true},{"text":")"}],"color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für nach Links"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 3"} },"\n",{"text":"richtung = ","bold":true},{"text":"drehen(","extra":[{"entity":"@s","nbt":"data.\"EigSchwB.p1Richtung\"[2]","color":"gray","interpret":true},{"text":")"}],"color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Drehung um 180°"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 4"} },"\n",{"text":"richtung == ","bold":true},{"entity":"@s","nbt":"data.\"EigSchwB.p1Richtung\"[0]","interpret":true},"\n",{"text":"tempo = ","bold":true},{"text":"tempo + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Tempo + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 8"} },"\n",{"text":"tempo = ","bold":true},{"text":"tempo - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Tempo - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 9"} },"\n",{"text":"tempo == ","bold":true},{"score":{"name":"@s","objective":"PZSchwB.p1Wert"},"color":"dark_purple","bold":true},"\n",{"text":"tempomat = ","bold":true},{"text":"wahr","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 5"} },"\n",{"text":"tempomat = ","bold":true},{"text":"falsch","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 6"} },"\n",{"text":"tempomat == ","bold":true},{"entity":"@s","nbt":"data.\"EigSchwB.p1Tempomat\"","interpret":true},"\n",{"text":"solange(tempomat) fahren(tempo,richtung)","color":"gray","bold":true}]

# Falls der Spieler den Rüstungsständer ausgewählt hat, werden ihm die Spuren-Optionen angezeigt.
tellraw @s[scores={PZSchwB.p1Ausgewaehlt=2}] ["Schwebebahn.erweitert.1:\n",{"text":"hoehe = ","bold":true},{"text":"hoehe + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Spur-Höhe + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 10"} },"\n",{"text":"hoehe = ","bold":true},{"text":"hoehe - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Spur-Höhe - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 11"} },"\n",{"text":"hoehe == ","bold":true},{"score":{"name":"@s","objective":"PZSchwB.p1Wert"},"color":"dark_purple","bold":true} ]

# Dem Spieler wird der Auslöser-Wert auf null gesetzt und er bekommt erneut die Berechtigung fürs auslösen.
scoreboard players enable @p[distance=..1,scores={PZSchwB.p1Ausgewaehlt=1..}] PZSchwB.p1Ausl
scoreboard players set @p[distance=..1,scores={PZSchwB.p1Ausgewaehlt=1..}] PZSchwB.p1Ausl 0
