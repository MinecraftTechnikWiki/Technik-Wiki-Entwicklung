# Dem Spieler wird eine Nummer gegeben, indem der Wert der Spielernummer um eins erhöht wird und das Ergebnis davon dem Spieler zugewisen wird. Danach wird ihm ein Etikett gegeben wenn er tatsächlich eine Nummer erhalten hat.
execute store result score @s PZZone.1Nr run scoreboard players add #VarZone.1SpielerNummer PZZone.1Nr 1
tag @s[scores={PZZone.1Nr=1..}] add EtiZone.1SpielerNummer
