# Wenn der Spieler die Angel mit der gleichnamigen Eigenschaft ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigStrBTBM.2Angel:true} } }] add EtiStrBTBM.2Ausgewaehlt

# Wenn der Spieler das Etikett der Angel besitzt und dabei auf dem Boden steht, erhält er ein weiteres Etikett.
tag @a[tag=EtiStrBTBM.2Ausgewaehlt,nbt={OnGround:true}] add EtiStrBTBM.2AufBoden

# Da Spieler nicht von Anfang einen Wert besitzen wird ihnen der Wert auf null addiert, sodass sie einen besitzen und solche die vorher schon einen Wert besaßen, dieser sich nicht ändert.
scoreboard players add @a[tag=EtiStrBTBM.2Ausgewaehlt,tag=!EtiStrBTBM.2Auswahl] PZStrBTBM.2Schl 0
scoreboard players add @a[tag=EtiStrBTBM.2Ausgewaehlt,tag=!EtiStrBTBM.2Auswahl] PZStrBTBM.2Laen 0
scoreboard players set @a[tag=EtiStrBTBM.2Ausgewaehlt,tag=!EtiStrBTBM.2Auswahl] PZStrBTBM.2Ausl -99

# Wenn Spieler die Angel ausgewählt haben und den Auslöse-Wert nicht auf null haben, wird die Funktion für diese Spieler aufgerufen.
execute as @a[tag=EtiStrBTBM.2Ausgewaehlt] unless entity @s[scores={PZStrBTBM.2Ausl=0}] run function strassenbruecken-_und_-tunnelbaumaschine:v2ausloeser

# Wenn Spieler den Köder ausgeworfen haben, wird der Längenwert auf null zurückgesetzt. Ansonsten wird der Längenwert jedes mal um eins erhöht.
scoreboard players set @a[tag=EtiStrBTBM.2Ausgewaehlt,tag=EtiStrBTBM.2Abbrechen] PZStrBTBM.2Laen 0
execute as @a[tag=EtiStrBTBM.2AufBoden,tag=EtiStrBTBM.2Ausgewaehlt,tag=!EtiStrBTBM.2Abbrechen,scores={PZStrBTBM.2Schl=1..}] if score @s PZStrBTBM.2Laen < VarStrBTBM.2Laenge PZStrBTBM.2Laen run scoreboard players add @s PZStrBTBM.2Laen 1

# Spieler die die zwei Etiketten besitzen und aktuell schleichen, erhalten eine Schnellleisten-Nachricht, die ausgibt ob man Shift gedrückt hält oder nicht.
execute as @a[tag=EtiStrBTBM.2AufBoden,tag=EtiStrBTBM.2Ausgewaehlt,scores={PZStrBTBM.2Schl=1..}] run title @s actionbar ["",{"text":"Kanal-Länge == ","bold":true},{"score":{"name":"@s","objective":"PZStrBTBM.2Laen"},"color":"dark_purple","bold":true}]

# Wenn die Angel nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiStrBTBM.2Ausgewaehlt,tag=EtiStrBTBM.2Auswahl] actionbar [""]

#execute as @a[tag=!EtiStrBTBM.2Ausgewaehlt,tag=EtiStrBTBM.2Auswahl] run say abbrechen
tag @a[tag=!EtiStrBTBM.2Ausgewaehlt,tag=EtiStrBTBM.2Auswahl,tag=EtiStrBTBM.2Shift] add EtiStrBTBM.2Abbrechen
execute as @a[tag=EtiStrBTBM.2Auswahl,tag=EtiStrBTBM.2Shift] at @s if entity @e[distance=..5,type=minecraft:fishing_bobber] run tag @s add EtiStrBTBM.2Abbrechen

# Um zu erfassen ob der Spieler gerade die Angel ausgewählt hat oder sie nicht mehr auswählt, wird ihm ein Etikett entsprechend gegeben oder entfernt.
tag @a[tag=EtiStrBTBM.2Ausgewaehlt,tag=!EtiStrBTBM.2Auswahl] add EtiStrBTBM.2Auswahl
tag @a[tag=!EtiStrBTBM.2Ausgewaehlt,tag=EtiStrBTBM.2Auswahl] remove EtiStrBTBM.2Auswahl

# Wenn der Spieler gerade erst Shift gedrückt oder gerade losgelassen hat, wird ihm eine Chat-Nachricht ausgegeben. Ebenfalls wird ihm die Länge angezeigt, falls er den Vorgang abgebrochen hat, wird dies ebenfalls angezeigt.
tellraw @a[tag=EtiStrBTBM.2AufBoden,tag=EtiStrBTBM.2Auswahl,tag=!EtiStrBTBM.2Shift,scores={PZStrBTBM.2Schl=1..,PZStrBTBM.2Laen=1..}] ["Kanalbrücken- und -tunnelbaumaschine.2:\n",{"text":"Shiftklick == ","bold":true},{"text":"wahr","color":"green","bold":true}]
execute as @a[tag=EtiStrBTBM.2AufBoden,tag=EtiStrBTBM.2Auswahl,tag=EtiStrBTBM.2Shift,tag=!EtiStrBTBM.2Abbrechen,scores={PZStrBTBM.2Schl=0}] run tellraw @s ["Kanalbrücken- und -tunnelbaumaschine.2:\n",{"text":"Shiftklick == ","bold":true},{"text":"falsch","color":"red","bold":true},"\n",{"text":"Kanal-Länge == ","bold":true},{"score":{"name":"@s","objective":"PZStrBTBM.2Laen"},"color":"dark_purple","bold":true}]
tellraw @a[tag=EtiStrBTBM.2AufBoden,tag=EtiStrBTBM.2Auswahl,tag=EtiStrBTBM.2Shift,tag=EtiStrBTBM.2Abbrechen,scores={PZStrBTBM.2Schl=0,PZStrBTBM.2Laen=1..}] ["Kanalbrücken- und -tunnelbaumaschine.2:\n",{"text":"Shiftklick == ","bold":true},{"text":"undefiniert","color":"yellow","bold":true},"\n",{"text":"Kanal-Länge == ","bold":true},{"text":"0","color":"dark_purple","bold":true}]

# Wenn man auf dem Boden steht, die Angel ausgewählt hat, geschlichen ist und gerade losgelassen hat, so wird die Ausrichtungs-Funktion vom Spieler aus vor ihm zwei Blöcke versetzt aufgerufen.
execute as @a[tag=EtiStrBTBM.2AufBoden,tag=EtiStrBTBM.2Auswahl,tag=EtiStrBTBM.2Shift,tag=!EtiStrBTBM.2Abbrechen,scores={PZStrBTBM.2Schl=0}] at @s rotated ~ 0 positioned ^ ^ ^1 run function strassenbruecken-_und_-tunnelbaumaschine:v2ausrichtung

# Wenn der Spieler nicht mehr schleicht, wird das Etikett entfernt, falls er es besaß und der Wert für die Länge wird auf null gesetzt.
tag @a[tag=EtiStrBTBM.2Auswahl,tag=EtiStrBTBM.2Shift,tag=EtiStrBTBM.2Abbrechen,scores={PZStrBTBM.2Schl=0}] remove EtiStrBTBM.2Abbrechen

# Wenn der Spieler nicht mehr schleicht, wird das Etikett entfernt, falls er es besaß und der Wert für die Länge wird auf null gesetzt.
scoreboard players set @a[tag=EtiStrBTBM.2Auswahl,tag=EtiStrBTBM.2Shift,scores={PZStrBTBM.2Schl=0}] PZStrBTBM.2Laen 0

# Wenn der Spieler Shift klickt oder loslässt wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiStrBTBM.2Auswahl,tag=!EtiStrBTBM.2Shift,scores={PZStrBTBM.2Schl=1..}] add EtiStrBTBM.2Shift
tag @a[tag=EtiStrBTBM.2Auswahl,tag=EtiStrBTBM.2Shift,scores={PZStrBTBM.2Schl=0}] remove EtiStrBTBM.2Shift

# Der Punkte-Wert der Spieler wird auf null gesetzt, wenn sie Shift geklickt haben.
scoreboard players set @a[scores={PZStrBTBM.2Schl=1..}] PZStrBTBM.2Schl 0

# Das Etikett für den Boden wird wieder entfernt.
tag @a[tag=EtiStrBTBM.2AufBoden] remove EtiStrBTBM.2AufBoden

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiStrBTBM.2Ausgewaehlt] remove EtiStrBTBM.2Ausgewaehlt

# Falls Pfeiler-Objekte existieren, wird von ihnen aus die Pfeiler-Funktion gestartet.
execute as @e[tag=EtiStrBTBM.2Pfeiler] at @s run function strassenbruecken-_und_-tunnelbaumaschine:v2pfeiler
