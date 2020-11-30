# Die Punktestand-Ziele für x, y und z Koordinaten, sowie für die Rotationen werden entfernt
scoreboard objectives remove PZBewS.2X
scoreboard objectives remove PZBewS.2Y
scoreboard objectives remove PZBewS.2Z
scoreboard objectives remove PZBewS.2Ric
scoreboard objectives remove PZBewS.2Nei

clear @a minecraft:stick{EigBewS.2Alle:true}

# Das Etikett wird entfernt, falls noch nicht geschehen
tag @a[tag=EtiBewS.2BewegungErfasst] remove EtiBewS.2BewegungErfasst
