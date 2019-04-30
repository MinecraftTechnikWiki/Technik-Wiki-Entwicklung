
scoreboard objectives add PZObjSt.10Nr dummy ["Objekt-Steuerung.10: ",{"text":"Positionsnummer","bold":true}]
scoreboard objectives add PZObjSt.10Vergl dummy ["Objekt-Steuerung.10: ",{"text":"Vergleichsnummer","bold":true}]
scoreboard objectives add PZObjSt.10Laenge dummy ["Objekt-Steuerung.10: ",{"text":"Länge","bold":true}]

tag @p[distance=..15] add EtiObjSt.10Spieler
tag @p[tag=EtiObjSt.10Spieler] add EtiObjSt.10Alle
scoreboard players set @p[tag=EtiObjSt.10Spieler] PZObjSt.10Nr 0
scoreboard players set @p[tag=EtiObjSt.10Spieler] PZObjSt.10Laenge 10
