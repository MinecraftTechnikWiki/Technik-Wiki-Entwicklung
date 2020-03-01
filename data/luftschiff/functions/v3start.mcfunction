# Punktestand-Ziele für das Droppen von Holzschwertern und Leinen werden erstellt.
scoreboard objectives add PZLuftS.3Steuer minecraft.dropped:minecraft.wooden_sword ["Luftschiff.3: ",{"text":"Holzschwert droppen um Luftschiff zu fahren","bold":true}]
scoreboard objectives add PZLuftS.3Leine minecraft.dropped:minecraft.lead ["Luftschiff.3: ",{"text":"Leine droppen um anzudocken","bold":true}]

# Ein Team für Piloten wird erstellt.
team add TMLuftS.3Pilot ["Luftschiff.3: ",{"text":"Piloten","bold":true}]

# Der nächstgelegene Spieler wird in den Überlebensmodus gesetzt.
gamemode survival @p[distance=..25,gamemode=!survival]

# Dem nächstgelegenen Spieler werden ein Rüstungsständer, eine Leine und 64 Kohle ins Inventar gegeben.
give @p[distance=..25] minecraft:armor_stand{luftschiff:"v3gegenstand",display:{Name:'{"text":"Andockplatz","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Landeplattform für"','"Luftschiffe zu erstellen"']},EntityTag:{Small:true,Invisible:true,Marker:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Andockplatz","bold":true}',Tags:["EtiLuftS.3Alle","EtiLuftS.3Andockplatz","EtiLuftS.3Erstellen"]} }
give @p[distance=..25] minecraft:lead{luftschiff:"v3gegenstand",display:{Lore:['"Wirf die Leine mit Q um"','"zum Luftschiff oder"','"Andockplatz zu gelangen"'] } } 1
give @p[distance=..25] minecraft:coal{luftschiff:"v3gegenstand"} 64
