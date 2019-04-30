# Es wird nach dem Feld mit der entsprechenden Position gesucht und dann wird dessen Wert in eine Variable gespeichert und anschließend in einer tellraw-Nachricht ausgegeben
execute as @e[type=minecraft:armor_stand,name=ObjFeld.p3Inhalt,tag=EtiFeld.p3AlleFelder] if score @s PZFeld.p3Pos = #VarFeld.p3PositionAusgeben PZFeld.p3Pos run scoreboard players operation #VarFeld.p3WertInhalt PZFeld.p3Wert = @s PZFeld.p3Wert
execute at @s run tellraw @a[distance=..25] ["",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p3PositionAusgeben","objective":"PZFeld.p3Pos"},"bold":true,"color":"green"},{"text":"] = ","bold":true},{"score":{"name":"#VarFeld.p3WertInhalt","objective":"PZFeld.p3Wert"},"bold":true,"color":"dark_purple"} ]

# Die Position wird um eins erhöht und wenn sie kleiner gleich der maximalen Länge des Feldes ist, wird diese Funktion selbst nochmal mit der neuen Position aufgerufen
scoreboard players add #VarFeld.p3PositionAusgeben PZFeld.p3Pos 1
execute if score #VarFeld.p3PositionAusgeben PZFeld.p3Pos <= @s PZFeld.p3Felder run function direktzugriffsspeicher:vp3menu_werte_felder
