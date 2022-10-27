# Es werden vier Punkte-Ziele erstellt.
scoreboard objectives add PZSchwB.p2Ausgewaehlt dummy ["Schwebebahn.erweitert.2: ",{"text":"Ausgewaehlter Wert","bold":true}]
scoreboard objectives add PZSchwB.p2Auswahl dummy ["Schwebebahn.erweitert.2: ",{"text":"Wert der Auswahl","bold":true}]
scoreboard objectives add PZSchwB.p2Ausl dummy ["Schwebebahn.erweitert.2: ",{"text":"Auslöser für Optionen","bold":true}]
scoreboard objectives add PZSchwB.p2Wert dummy ["Schwebebahn.erweitert.2: ",{"text":"Wert der Variablen","bold":true}]

# Eine Konstante für den Wert minus eins wird gesetzt.
scoreboard players set KonstSchwB.p2MINUSEINS PZSchwB.p2Wert -1

# Die Spieler erhalten vier Rüstungsständer, mit denen man die Bahn, die Spur, das Spur-Kreuz und die Station platzieren kann.
give @a[distance=..15] minecraft:armor_stand{EigSchwB.p2Alle:true,display:{Name:'{"text":"Hyperloop","color":"red","bold":true}',Lore:['"Platziere den Rüstungsständer"','"auf eine Hyperloop-Strecke"','"um eine Hyperloop"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Erstellen"] } }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p2Alle:true,EigSchwB.p2Ausgewaehlt:2,display:{Name:'{"text":"Spur","color":"red","bold":true}',Lore:['"Drücke F um die Höhe einzustellen."','"Platziere den Rüstungsständer"','"um eine Hyperloop-Strecke"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Bauwerk","EtiSchwB.p2Spuren","EtiSchwB.p2Spur"] } }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p2Alle:true,EigSchwB.p2Ausgewaehlt:2,display:{Name:'{"text":"Spur-Kreuz","color":"red","bold":true}',Lore:['"Drücke F um die Höhe einzustellen."','"Platziere den Rüstungsständer"','"um eine Hyperloop-Kreuzung"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Bauwerk","EtiSchwB.p2Spuren","EtiSchwB.p2SpurKreuz"] } }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p2Alle:true,display:{Name:'{"text":"Station","color":"red","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Hyperloop-Station"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Bauwerk","EtiSchwB.p2Station"] } }

# Die Spieler erhalten eine Nachricht, wie sie die Bahn verwenden können.
tellraw @a[distance=..15] ["Schwebebahn.erweitert.2: ",{"text":"Drücke E um das Inventar zu öffnen und fahre mit der Maus über die Rüstungsständer, um zu erfahren wie man sie einsetzt um die Schwebebahn zu benutzen.","bold":true}]

# Der Chunk wird dauerhaft geladen.
forceload add ~ ~
