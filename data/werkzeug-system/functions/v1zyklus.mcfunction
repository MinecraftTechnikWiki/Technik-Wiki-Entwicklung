# Etikette werden vergeben, falls man Ackerpflanzen abbaut
tag @s[scores={PZWerkS.1Weizen=1..}] add EtiWerkS.1Ernte
tag @s[scores={PZWerkS.1Karotte=1..}] add EtiWerkS.1Ernte
tag @s[scores={PZWerkS.1Kartoff=1..}] add EtiWerkS.1Ernte
tag @s[scores={PZWerkS.1Bete=1..}] add EtiWerkS.1Ernte

# Nur für die Spieler wird die Funktion aufgerufen, die tatsächlich eine Ackerpflanze geerntet haben
execute if entity @s[tag=EtiWerkS.1Ernte] run function werkzeug-system:v1schritt1

# Den Punktestand für das Ernten der Ackerpflanze wieder zurücksetzen
scoreboard players reset @s[tag=EtiWerkS.1Ernte] PZWerkS.1Weizen
scoreboard players reset @s[tag=EtiWerkS.1Ernte] PZWerkS.1Karotte
scoreboard players reset @s[tag=EtiWerkS.1Ernte] PZWerkS.1Kartoff
scoreboard players reset @s[tag=EtiWerkS.1Ernte] PZWerkS.1Bete

# Das Etikett für die Ernte wieder entfernen
tag @s[tag=EtiWerkS.1Ernte] remove EtiWerkS.1Ernte
