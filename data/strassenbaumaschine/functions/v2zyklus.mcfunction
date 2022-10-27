# Wenn der Spieler die Angel mit der gleichnamigen Eigenschaft ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigStraBM.2Angel:true} } }] add EtiStraBM.2Ausgewaehlt

# Wenn der Spieler das Etikett der Angel besitzt und dabei auf dem Boden steht, erhält er ein weiteres Etikett.
tag @a[tag=EtiStraBM.2Ausgewaehlt,nbt={OnGround:true}] add EtiStraBM.2AufBoden

# Da Spieler nicht von Anfang einen Wert besitzen wird ihnen der Wert auf null addiert, sodass sie einen besitzen und solche die vorher schon einen Wert besaßen, dieser sich nicht ändert.
scoreboard players add @a[tag=EtiStraBM.2Ausgewaehlt,tag=!EtiStraBM.2Auswahl] PZStraBM.2Schl 0
scoreboard players add @a[tag=EtiStraBM.2Ausgewaehlt,tag=!EtiStraBM.2Auswahl] PZStraBM.2Laen 0
scoreboard players set @a[tag=EtiStraBM.2Ausgewaehlt,tag=!EtiStraBM.2Auswahl] PZStraBM.2Ausl -99

# Wenn Spieler die Angel ausgewählt haben und den Auslöse-Wert nicht auf null haben, wird die Funktion für diese Spieler aufgerufen.
execute as @a[tag=EtiStraBM.2Ausgewaehlt] unless entity @s[scores={PZStraBM.2Ausl=0}] run function strassenbaumaschine:v2ausloeser

# Wenn Spieler den Köder ausgeworfen haben, wird der Längenwert auf null zurückgesetzt. Ansonsten wird der Längenwert jedes mal um eins erhöht.
scoreboard players set @a[tag=EtiStraBM.2Ausgewaehlt,tag=EtiStraBM.2Abbrechen] PZStraBM.2Laen 0
execute as @a[tag=EtiStraBM.2AufBoden,tag=EtiStraBM.2Ausgewaehlt,tag=!EtiStraBM.2Abbrechen,scores={PZStraBM.2Schl=1..}] if score @s PZStraBM.2Laen < VarStraBM.2Laenge PZStraBM.2Laen run scoreboard players add @s PZStraBM.2Laen 1

# Spieler die die zwei Etiketten besitzen und aktuell schleichen, erhalten eine Schnellleisten-Nachricht, die ausgibt ob man Shift gedrückt hält oder nicht.
execute as @a[tag=EtiStraBM.2AufBoden,tag=EtiStraBM.2Ausgewaehlt,scores={PZStraBM.2Schl=1..}] run title @s actionbar ["",{"text":"Spur-Länge == ","bold":true},{"score":{"name":"@s","objective":"PZStraBM.2Laen"},"color":"dark_purple","bold":true}]

# Wenn die Angel nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiStraBM.2Ausgewaehlt,tag=EtiStraBM.2Auswahl] actionbar [""]

# Wenn man schleicht und dabei die Angel nicht mehr auswählt, wird dem Spieler ein Etikett zum Abrechen des Vorgangs gegeben, gleiches gilt, wenn er die Angel ausgeworfen hat, dann wird ebenfalls das Etikett vergeben um den Straßenbau abzubrechen.
tag @a[tag=!EtiStraBM.2Ausgewaehlt,tag=EtiStraBM.2Auswahl,tag=EtiStraBM.2Shift] add EtiStraBM.2Abbrechen
execute as @a[tag=EtiStraBM.2Auswahl,tag=EtiStraBM.2Shift] at @s if entity @e[distance=..5,type=minecraft:fishing_bobber] run tag @s add EtiStraBM.2Abbrechen

# Um zu erfassen ob der Spieler gerade die Angel ausgewählt hat oder sie nicht mehr auswählt, wird ihm ein Etikett entsprechend gegeben oder entfernt.
tag @a[tag=EtiStraBM.2Ausgewaehlt,tag=!EtiStraBM.2Auswahl] add EtiStraBM.2Auswahl
tag @a[tag=!EtiStraBM.2Ausgewaehlt,tag=EtiStraBM.2Auswahl] remove EtiStraBM.2Auswahl

# Wenn der Spieler gerade erst Shift gedrückt oder gerade losgelassen hat, wird ihm eine Chat-Nachricht ausgegeben. Ebenfalls wird ihm die Länge angezeigt, falls er den Vorgang abgebrochen hat, wird dies ebenfalls angezeigt.
tellraw @a[tag=EtiStraBM.2AufBoden,tag=EtiStraBM.2Auswahl,tag=!EtiStraBM.2Shift,scores={PZStraBM.2Schl=1..}] ["Straßenbaumaschine.2:\n",{"text":"Shiftklick == ","bold":true},{"text":"wahr","color":"green","bold":true}]
execute as @a[tag=EtiStraBM.2AufBoden,tag=EtiStraBM.2Auswahl,tag=EtiStraBM.2Shift,tag=!EtiStraBM.2Abbrechen,scores={PZStraBM.2Schl=0,PZStraBM.2Laen=1..}] run tellraw @s ["Straßenbaumaschine.2:\n",{"text":"Shiftklick == ","bold":true},{"text":"falsch","color":"red","bold":true},"\n",{"text":"Spur-Länge == ","bold":true},{"score":{"name":"@s","objective":"PZStraBM.2Laen"},"color":"dark_purple","bold":true}]
tellraw @a[tag=EtiStraBM.2AufBoden,tag=EtiStraBM.2Auswahl,tag=EtiStraBM.2Shift,tag=EtiStraBM.2Abbrechen,scores={PZStraBM.2Schl=0}] ["Straßenbaumaschine.2:\n",{"text":"Shiftklick == ","bold":true},{"text":"undefiniert","color":"yellow","bold":true},"\n",{"text":"Spur-Länge == ","bold":true},{"text":"0","color":"dark_purple","bold":true}]

# Wenn man auf dem Boden steht, die Angel ausgewählt hat, geschlichen ist und gerade losgelassen hat, so wird die Ausrichtungs-Funktion vom Spieler aus vor ihm zwei Blöcke versetzt aufgerufen.
execute as @a[tag=EtiStraBM.2AufBoden,tag=EtiStraBM.2Auswahl,tag=EtiStraBM.2Shift,tag=!EtiStraBM.2Abbrechen,scores={PZStraBM.2Schl=0,PZStraBM.2Laen=1..}] at @s align xyz rotated ~ 0 positioned ~0.5 ~ ~0.5 positioned ^ ^ ^1 run function strassenbaumaschine:v2ausrichtung

# Wenn der Spieler nicht mehr schleicht, wird das Etikett entfernt, falls er es besaß und der Wert für die Länge wird auf null gesetzt.
tag @a[tag=EtiStraBM.2Auswahl,tag=EtiStraBM.2Shift,tag=EtiStraBM.2Abbrechen,scores={PZStraBM.2Schl=0}] remove EtiStraBM.2Abbrechen
scoreboard players set @a[tag=EtiStraBM.2Auswahl,tag=EtiStraBM.2Shift,scores={PZStraBM.2Schl=0}] PZStraBM.2Laen 0

# Wenn der Spieler Shift klickt oder loslässt wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiStraBM.2Auswahl,tag=!EtiStraBM.2Shift,scores={PZStraBM.2Schl=1..}] add EtiStraBM.2Shift
tag @a[tag=EtiStraBM.2Auswahl,tag=EtiStraBM.2Shift,scores={PZStraBM.2Schl=0}] remove EtiStraBM.2Shift

# Der Punkte-Wert der Spieler wird auf null gesetzt, wenn sie Shift geklickt haben.
scoreboard players set @a[scores={PZStraBM.2Schl=1..}] PZStraBM.2Schl 0

# Das Etikett für den Boden wird wieder entfernt.
tag @a[tag=EtiStraBM.2AufBoden] remove EtiStraBM.2AufBoden

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiStraBM.2Ausgewaehlt] remove EtiStraBM.2Ausgewaehlt
