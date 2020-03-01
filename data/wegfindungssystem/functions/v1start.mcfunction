# Zwei Punktestand-Ziele für die Berechnung des Weges werden erstellt.
scoreboard objectives add PZWegFS.1Wert dummy ["Wegfindungssystem.1: ",{"text":"Wert","bold":true}]
scoreboard objectives add PZWegFS.1Vergl dummy ["Wegfindungssystem.1: ",{"text":"Temporärer Wert","bold":true}]

# Die Variable Vorgänger wird angelegt und mit dem Wert eins belegt.
scoreboard players set #VarWegFS.1Vorgaenger PZWegFS.1Wert 1

# Dem nächstgelegenen Spieler in einem Umkreis von 15 Metern werden zwei Rüstungsständer ins Inventar gelegt. Welche den Startpunkt und den Endpunkt darstellen.
give @p[distance=..15] minecraft:armor_stand{wegfindungssystem:"v1gegenstand",display:{Name:'{"text":"Startpunkt","color":"blue","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Startpunkt zu markieren"']},EntityTag:{Small:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Startpunkt","color":"blue","bold":true}',Tags:["EtiWegFS.1Alle","EtiWegFS.1Erstellen"] } }
give @p[distance=..15] minecraft:armor_stand{wegfindungssystem:"v1gegenstand",display:{Name:'{"text":"Endpunkt","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Endpunkt zu markieren"']},EntityTag:{Small:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Endpunkt","color":"green","bold":true}',Tags:["EtiWegFS.1Alle","EtiWegFS.1Ziel"] } }
