# Es werden vier Punkte-Ziele erstellt.
scoreboard objectives add PZSchwB.p1Ausgewaehlt dummy ["Schwebebahn.erweitert.1: ",{"text":"Ausgewaehlter Wert","bold":true}]
scoreboard objectives add PZSchwB.p1Auswahl dummy ["Schwebebahn.erweitert.1: ",{"text":"Wert der Auswahl","bold":true}]
scoreboard objectives add PZSchwB.p1Ausl trigger ["Schwebebahn.erweitert.1: ",{"text":"Auslöser für Optionen","bold":true}]
scoreboard objectives add PZSchwB.p1Wert dummy ["Schwebebahn.erweitert.1: ",{"text":"Wert der Variablen","bold":true}]

# Eine Konstante wird angelegt.
scoreboard players set KonstSchwB.p1MINUSEINS PZSchwB.p1Wert -1

# Spieler in der Nähe erhalten vier Rüstungsständer, mit denen die Schwebebahn, die Spur, die Spur-Kreuzung und die Station platziert werden können.
give @a[distance=..15] minecraft:armor_stand{EigSchwB.p1Alle:true,display:{Name:'{"text":"Transrapid","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"auf eine Transrapid-Strecke"','"um einen Transrapid"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Erstellen"] } }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p1Alle:true,EigSchwB.p1Ausgewaehlt:2,display:{Name:'{"text":"Spur","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Transrapid-Strecke"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Bauwerk","EtiSchwB.p1Spuren","EtiSchwB.p1Spur"] } }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p1Alle:true,EigSchwB.p1Ausgewaehlt:2,display:{Name:'{"text":"Spur-Kreuz","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Transrapid-Kreuzung"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Bauwerk","EtiSchwB.p1Spuren","EtiSchwB.p1SpurKreuz"] } }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p1Alle:true,display:{Name:'{"text":"Station","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Transrapid-Station"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Bauwerk","EtiSchwB.p1Station"] } }

# Ein Erklärtext wird den Spielern angezeigt.
tellraw @a[distance=..15] ["Schwebebahn.erweitert.1:\n",{"text":"Drücke E um das Inventar zu öffnen und fahre mit der Maus über die Rüstungsständer, um zu erfahren wie man sie einsetzt um die Schwebebahn zu benutzen.","bold":true}]

# Der Chunk in dem die Technik gestartet wurde, wird dauerhaft geladen.
forceload add ~ ~
