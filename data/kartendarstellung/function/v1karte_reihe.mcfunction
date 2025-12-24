#karte reihe
execute as @e[distance=..5,type=minecraft:block_display,tag=EtiKartDar.1Block] if score @s PZKartDar.1Ausl = VarKartDar.1Zaehler PZKartDar.1Ausl run teleport @s ~ ~ ~ ~ ~

scoreboard players remove VarKartDar.1Zaehler PZKartDar.1Ausl 1
scoreboard players remove VarKartDar.1Schleife2 PZKartDar.1Ausl 1
execute if score VarKartDar.1Schleife2 PZKartDar.1Ausl matches 1.. positioned ^0.02 ^ ^ run function kartendarstellung:v1karte_reihe
