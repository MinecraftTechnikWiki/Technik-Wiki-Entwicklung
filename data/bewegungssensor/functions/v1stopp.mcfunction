# Die Punktestand-Ziele für jede Form der Bewegung werden entfernt
scoreboard objectives remove PZBewS.1Gehen
scoreboard objectives remove PZBewS.1Plansch
scoreboard objectives remove PZBewS.1Schwim
scoreboard objectives remove PZBewS.1Sprint
scoreboard objectives remove PZBewS.1Schl
scoreboard objectives remove PZBewS.1Sprung

clear @a minecraft:stick{EigBewS.1Alle:true}

# Das Etikett wird entfernt, falls es noch vorhanden ist
tag @a[tag=EtiBewS.1BewegungErfasst] remove EtiBewS.1BewegungErfasst
