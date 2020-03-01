# Das Punktestand-Ziel für das Zählen der Uhrzeit wird erstellt.
scoreboard objectives add PZUhrA.1Zeichen dummy ["Uhrenanzeige.1: ",{"text":"Zeit der Uhr","bold":true}]

# Allen Spielern im Umkreis von 25 Metern wird ein Rüstungsständer ins Inventar gelegt, mit dem man die Uhren-Anzeige platzieren kann.
give @a[distance=..25] minecraft:armor_stand{uhren-anzeige:"v1gegenstand",Enchantments:[{id:-1}],display:{Name:'{"text":"Uhren-Anzeige","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Uhr"','"erscheinen zu lassen"']},EntityTag:{Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Ziffer","EtiUhrA.1Sekunden","EtiUhrA.1Erstellen"]} }
