#welt
scoreboard players operation VarKartDar.1Schleife2 PZKartDar.1Ausl = VarKartDar.1Quadrat PZKartDar.1Ausl
execute positioned over world_surface run function kartendarstellung:v1welt_reihe

scoreboard players remove VarKartDar.1Schleife PZKartDar.1Ausl 1
execute if score VarKartDar.1Schleife PZKartDar.1Ausl matches 1.. positioned ~ ~ ~1 run function kartendarstellung:v1welt
