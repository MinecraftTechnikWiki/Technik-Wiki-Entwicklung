
scoreboard objectives add PZWegFS.1Wert dummy ["Wegfindungssystem.1: ",{"text":"Wert","bold":true}]
scoreboard objectives add PZWegFS.1Vergl dummy ["Wegfindungssystem.1: ",{"text":"Temporärer Wert","bold":true}]

scoreboard players set #VarWegFS.1Vorgaenger PZWegFS.1Wert 1

give @p[distance=..15] minecraft:armor_stand{display:{Lore:["Wegfindungssystem.1","Startpunkt"]},EntityTag:{Tags:["EtiWegFS.1Alle","EtiWegFS.1Erstellen"]}}
give @p[distance=..15] minecraft:armor_stand{display:{Lore:["Wegfindungssystem.1","Endpunkt"]},EntityTag:{Tags:["EtiWegFS.1Alle","EtiWegFS.1Ziel"]}}
