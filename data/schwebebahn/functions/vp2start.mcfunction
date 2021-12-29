
scoreboard objectives add PZSchwB.p2Ausl trigger ["Schwebebahn.erweitert.2: ",{"text":"Auslöser für Optionen","bold":true}]

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p2Alle:true,display:{Name:'{"text":"Hyperloop","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"auf eine Hyperloop-Strecke"','"um eine Hyperloop"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Erstellen"] } }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p2Alle:true,display:{Name:'{"text":"Hyperloop-Strecke","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Hyperloop-Strecke"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Strecke","EtiSchwB.p2Gleis"] } }

tellraw @a[distance=..15] ["Schwebebahn.erweitert.2: ",{"text":"Drücke E um das Inventar zu öffnen und fahre mit der Maus über die Rüstungsständer, um zu erfahren wie man sie einsetzt um die Hyperloop zu benutzen.","bold":true}]

forceload add ~ ~
