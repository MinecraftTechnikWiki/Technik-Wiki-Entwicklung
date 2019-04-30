
fill ~ ~ ~ ~-2 ~2 ~-2 minecraft:quartz_block

scoreboard players add #VarLaUIr.1BreitePosition PZLaUIr.1Gross 1

scoreboard players set #VarLaUIr.1LaengePosition PZLaUIr.1Gross 2
execute if score #VarLaUIr.1Laenge PZLaUIr.1Gross matches 2.. positioned ~ ~ ~-2 run function labyrinth_und_irrgarten:v1erstellen_laenge
execute if score #VarLaUIr.1BreitePosition PZLaUIr.1Gross <= #VarLaUIr.1Breite PZLaUIr.1Gross positioned ~-2 ~ ~ run function labyrinth_und_irrgarten:v1erstellen_breite
