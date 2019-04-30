# Dem Spieler wird eine Nummer gegeben, falls er noch keine besitzt
scoreboard players add #VarZone.1SpielerNummer PZZone.1Nr 1
scoreboard players operation @s PZZone.1Nr = #VarZone.1SpielerNummer PZZone.1Nr
tag @s add EtiZone.1SpielerNummer
