
scoreboard objectives add PZSchwB.p1Ausl trigger ["Schwebebahn.erweitert.1: ",{"text":"Auslöser für Optionen","bold":true}]

give @a[distance=..15] minecraft:armor_stand{schwebebahn:"vp1gegenstand",display:{Name:'{"text":"Transrapid","color":"gold"}',Lore:['"Platziere den Rüstungsständer"','"auf eine Transrapid-Strecke"','"um einen Transrapid"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Erstellen"] } }

give @a[distance=..15] minecraft:armor_stand{schwebebahn:"vp1gegenstand",display:{Name:'{"text":"Transrapid-Strecke"}',Lore:['"Platziere den Rüstungsständer"','"um eine Transrapid-Strecke"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Strecke"] } }

tellraw @a[distance=..15] ["Schwebebahn.erweitert.1: ",{"text":"Drücke E um das Inventar zu öffnen und fahre mit der Maus über die Rüstungsständer, um zu erfahren wie man sie einsetzt um den Transrapid zu benutzen.","bold":true}]
