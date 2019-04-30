
scoreboard players set #VarLaUIr.1BreitePosition PZLaUIr.1Gross 1
scoreboard players set #VarLaUIr.1LaengePosition PZLaUIr.1Gross 1

function labyrinth_und_irrgarten:v1erstellen_breite

tag @s remove EtiLaUIr.1Erstellen
tag @s add EtiLaUIr.1Generieren
execute align xyz positioned ~0.5 ~ ~0.5 run teleport @s ~-1 ~1 ~-1
