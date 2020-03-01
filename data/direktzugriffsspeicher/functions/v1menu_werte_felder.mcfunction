# Es wird nach dem Feld mit der entsprechenden Position gesucht und dann wird dessen Wert in eine Variable gespeichert und anschließend in einer tellraw-Nachricht ausgegeben
execute as @e[type=minecraft:armor_stand,tag=EtiFeld.1Inhalt,tag=EtiFeld.1AlleFelder] if score @s PZFeld.1Pos = #VarFeld.1PositionAusgeben PZFeld.1Pos run scoreboard players operation #VarFeld.1WertInhalt PZFeld.1Wert = @s PZFeld.1Wert
execute at @s run tellraw @a[distance=..25] ["",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.1PositionAusgeben","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"] == ","bold":true},{"score":{"name":"#VarFeld.1WertInhalt","objective":"PZFeld.1Wert"},"bold":true,"color":"dark_purple"} ]

# Die Position wird um eins erhöht und wenn sie kleiner gleich der maximalen Länge des Feldes ist, wird diese Funktion selbst nochmal mit der neuen Position aufgerufen
scoreboard players add #VarFeld.1PositionAusgeben PZFeld.1Pos 1
execute if score #VarFeld.1PositionAusgeben PZFeld.1Pos <= @s PZFeld.1Pos run function direktzugriffsspeicher:v1menu_werte_felder
