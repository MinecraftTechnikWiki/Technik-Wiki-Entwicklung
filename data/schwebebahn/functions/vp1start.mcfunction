
scoreboard objectives add PZSchwB.p1Ausl trigger ["Schwebebahn.erweitert.1: ",{"text":"Auslöser für Optionen","bold":true}]

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p1Alle:true,display:{Name:'{"text":"Transrapid","color":"gold"}',Lore:['"Platziere den Rüstungsständer"','"auf eine Transrapid-Strecke"','"um einen Transrapid"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Erstellen"] } }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.p1Alle:true,display:{Name:'{"text":"Transrapid-Hochstrecke"}',Lore:['"Platziere den Rüstungsständer"','"um eine Transrapid-Strecke"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Strecke","EtiSchwB.p1Hochstrecke"] } }
give @a[distance=..15] minecraft:armor_stand{EigSchwB.p1Alle:true,display:{Name:'{"text":"Transrapid-Rampe"}',Lore:['"Platziere den Rüstungsständer"','"um eine Transrapid-Strecke"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Strecke","EtiSchwB.p1Rampe"] } }
give @a[distance=..15] minecraft:armor_stand{EigSchwB.p1Alle:true,display:{Name:'{"text":"Transrapid-Strecke"}',Lore:['"Platziere den Rüstungsständer"','"um eine Transrapid-Strecke"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Strecke","EtiSchwB.p1Gleis"] } }

tellraw @a[distance=..15] ["Schwebebahn.erweitert.1: ",{"text":"Drücke E um das Inventar zu öffnen und fahre mit der Maus über die Rüstungsständer, um zu erfahren wie man sie einsetzt um den Transrapid zu benutzen.","bold":true}]

forceload add ~ ~
