# Es wird ein Auslöser-Punktestand-Ziel erstellt.
scoreboard objectives add PZLaUIr.2Gross trigger ["Labyrinth- und Irrgartengenerator.2: ",{"text":"Größe des Irrgartens","bold":true}]

# Variablen für Breite und Länge werden festgelegt.
scoreboard players set #VarLaUIr.2Breite PZLaUIr.2Gross 2
scoreboard players set #VarLaUIr.2Laenge PZLaUIr.2Gross 2

# Alle Spieler im Umkreis von 25 Metern erhalten einen Rüstungsständer mit dem man einen Irrgarten generieren lassen kann.
give @a[distance=..25] minecraft:armor_stand{labyrinth-_und_irrgartengenerator:"v2gegenstand",display:{Name:'{"text":"Irrgarten erstellen","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Irrgarten"','"zu erstellen"']},EntityTag:{Small:true,Invisible:true,NoGravity:true,Tags:["EtiLaUIr.2Alle","EtiLaUIr.2Generieren","EtiLaUIr.2Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b} ] } }
