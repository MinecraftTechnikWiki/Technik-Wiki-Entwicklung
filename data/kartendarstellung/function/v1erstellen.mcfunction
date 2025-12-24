
tag @s add EtiKartDar.1Erstellen

summon minecraft:marker ~ ~ ~ {Tags:["EtiKartDar.1Alle","EtiKartDar.1Entfernen","EtiKartDar.1Position"]}
execute rotated ~ 0 run teleport @n[distance=..5,type=minecraft:marker,tag=EtiKartDar.1Position] ^-1 ^2 ^1

scoreboard players operation VarKartDar.1Darsteller PZKartDar.1Ausl = VarKartDar.1Quadrat PZKartDar.1Ausl
execute store result score VarKartDar.1Schleife PZKartDar.1Ausl run scoreboard players operation VarKartDar.1Darsteller PZKartDar.1Ausl *= VarKartDar.1Darsteller PZKartDar.1Ausl
execute summon minecraft:block_display run function kartendarstellung:v1darsteller
