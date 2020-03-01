# Spielern im Umkreis von 15 Metern werden 16 Rüstungsständer ins Inventar gelegt. Diese können platziert werden um Kontrollpunkte zu erstellen.
give @a[distance=..15] minecraft:armor_stand{kontrollpunkt-system:"v4gegenstand",Enchantments:[{id:-1}],display:{Name:'{"text":"Kontrollpunkt","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Kontrollpunkt zu bauen"','"und um zwischen"','"diesen zu wechseln"']},EntityTag:{Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Kontrollpunkt","bold":true}',Tags:["EtiKontPS.4Alle","EtiKontPS.4Kontrollpunkt","EtiKontPS.4Plattform"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,Tags:["EtiKontPS.4Alle","EtiKontPS.4TeamROT"]},{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,Tags:["EtiKontPS.4Alle","EtiKontPS.4TeamBLAU"] } ] } } 16

# Zwei Teams werden erstellt. Für rot und blau.
team add TMKontPS.4ROT ["Kontrollpunkt-System.4: ",{"text":"Team Rot","bold":true}]
team add TMKontPS.4BLAU ["Kontrollpunkt-System.4: ",{"text":"Team Blau","bold":true}]

# Die Teams bekommen ihre entsprechende Farbe.
team modify TMKontPS.4ROT color red
team modify TMKontPS.4BLAU color blue

# Vier Punktestand-Ziele für den Auslöser, die Drehung und die Spieleranzahl der Teams.
scoreboard objectives add PZKontPS.4Wert trigger ["Kontrollpunkt-System.4: ",{"text":"Werte der Variablen","bold":true}]
scoreboard objectives add PZKontPS.4Dreh dummy ["Kontrollpunkt-System.4: ",{"text":"Drehung","bold":true}]

scoreboard objectives add PZKontPS.4ROT dummy ["Kontrollpunkt-System.4: ",{"text":"Spieler Team Rot","bold":true}]
scoreboard objectives add PZKontPS.4BLAU dummy ["Kontrollpunkt-System.4: ",{"text":"Spieler Team Blau","bold":true}]
