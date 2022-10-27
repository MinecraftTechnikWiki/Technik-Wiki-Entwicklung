# Es wird ein Punkte-Ziel für Werte und Auslöser erstellt.
scoreboard objectives add PZStraBM.1Wert trigger ["Straßenbaumaschine.1: ",{"text":"Wert der Variablen","bold":true}]

# Spieler im Umkreis erhalten einen Rüstungsständer, den man platzieren kann um die Baumaschine zu erzeugen.
give @a[distance=..15] minecraft:armor_stand{EigStraBM.1Alle:true,display:{Name:'{"text":"Straßenbaumaschine","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Straßenbaumaschine zu erstellen"','"und um eine Angel zu erhalten"'] },EntityTag:{Small:true,Invisible:true,NoGravity:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Erstellen"] } } 16

# Man erhält ein wenig von dem Material dass zum Bau der Spuren verwendet wird.
give @a[distance=..15] minecraft:gray_concrete{EigStraBM.1Alle:true} 192
give @a[distance=..15] minecraft:quartz_block{EigStraBM.1Alle:true} 128
give @a[distance=..15] minecraft:stone_brick_slab{EigStraBM.1Alle:true} 256

# Eine kurze Anleitung, wie die Baumaschine aktiviert werden kann.
tellraw @a[distance=..15] ["Straßenbaumaschine.1:\n",{"text":"Platziere den Rüstungsständer um die Straßenbaumaschine zu erzeugen. Setze dich in die Lore und steuere die Maschine durch das Auswählen der Angel. Um die Maschine zu löschen, wirf den Köder von der Angel auf diese.","bold":true}]

# Der Chunk wird aktiviert.
forceload add ~ ~
