
fill ~ ~ ~ ~-2 ~2 ~-2 minecraft:quartz_block

scoreboard players add #VarLaUIr.1LaengePosition PZLaUIr.1Gross 1
execute if score #VarLaUIr.1LaengePosition PZLaUIr.1Gross <= #VarLaUIr.1Laenge PZLaUIr.1Gross positioned ~ ~ ~-2 run function labyrinth_und_irrgarten:v1erstellen_laenge
