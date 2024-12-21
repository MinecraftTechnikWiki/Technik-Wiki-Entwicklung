
scoreboard objectives remove PZAufTraS.2Reden
scoreboard objectives remove PZAufTraS.2Antwort

data remove storage auftrag-system:v2daten "EigAufTraS.2Nachrichten"
data remove storage auftrag-system:v2daten "EigAufTraS.2Antworten"
data remove storage auftrag-system:v2daten "EigAufTraS.2Antwort"

kill @e[tag=EtiAufTraS.2Alle]
