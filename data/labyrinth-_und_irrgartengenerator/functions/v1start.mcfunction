# Ein Punktestand-Ziel, dass als Auslöser arbeitet um die Optionen der Nachrichten anzuzeigen.
scoreboard objectives add PZLaUIr.2Gross trigger ["Labyrinth- und Irrgartengenerator.1: ",{"text":"Größe des Labyrinths","bold":true}]

# Eine Variable für die Größe des Labyrinths und eine Konstante für das Multiplizieren mit zwei
scoreboard players set #VarLaUIr.2Groesse PZLaUIr.2Gross 4
scoreboard players set #KonstLaUIr.2ZWEI PZLaUIr.2Gross 2

# Allen Spielern in Umkreis der Befehlsquelle von bis zu 25 Metern erhalten einen Rüstungsständer mit dem man Labyrinthe generieren lassen kann.
give @a[distance=..25] minecraft:armor_stand{labyrinth-_und_irrgartengenerator:"v1gegenstand",display:{Name:'{"text":"Labyrinth erstellen","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Irrgarten"','"zu erstellen"']},EntityTag:{Small:true,Invisible:true,NoGravity:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Erzeuger","EtiLaUIr.1Generieren","EtiLaUIr.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b} ] } }

# Eine Anleitung in Form einer tellraw-Nachricht, damit man als Spieler weis was zu tun ist.
tellraw @a[distance=..25] ["Labyrinth- und Irrgartengenerator.1: ",{"text":"Man platziert den Rüstungsständer und das Labyrinth wird von dort im Zentrum aus generiert.","bold":true}]
