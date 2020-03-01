# Etikette werden vergeben, falls man Ackerpflanzen abbaut
tag @a[scores={PZWerkS.1Weizen=1..}] add EtiWerkS.1Ernte
tag @a[scores={PZWerkS.1Karotte=1..}] add EtiWerkS.1Ernte
tag @a[scores={PZWerkS.1Kartoff=1..}] add EtiWerkS.1Ernte
tag @a[scores={PZWerkS.1Bete=1..}] add EtiWerkS.1Ernte

# Nur für die Spieler wird die Funktion aufgerufen, die tatsächlich eine Ackerpflanze geerntet haben
execute as @a[tag=EtiWerkS.1Ernte] run function werkzeug-system:v1hacke_stufe

# Den Punktestand für das Ernten der Ackerpflanze wieder zurücksetzen
scoreboard players reset @a[tag=EtiWerkS.1Ernte] PZWerkS.1Weizen
scoreboard players reset @a[tag=EtiWerkS.1Ernte] PZWerkS.1Karotte
scoreboard players reset @a[tag=EtiWerkS.1Ernte] PZWerkS.1Kartoff
scoreboard players reset @a[tag=EtiWerkS.1Ernte] PZWerkS.1Bete

# Das Etikett für die Ernte wieder entfernen
tag @a[tag=EtiWerkS.1Ernte] remove EtiWerkS.1Ernte
