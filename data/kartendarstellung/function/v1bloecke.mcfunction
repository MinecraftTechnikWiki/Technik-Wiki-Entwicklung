
data modify storage kartendarstellung:v1daten "EigKartDar.1Argumente".Block set from storage kartendarstellung:v1daten "EigKartDar.1Bloecke"[0]
#say blöcke start

execute as @e[type=minecraft:marker,tag=EtiKartDar.1Welt,tag=EtiKartDar.1Messen] at @s run function kartendarstellung:v1block with storage kartendarstellung:v1daten "EigKartDar.1Argumente"
#say blöcke end
data modify storage kartendarstellung:v1daten "EigKartDar.1Bloecke" append from storage kartendarstellung:v1daten "EigKartDar.1Bloecke"[0]
data remove storage kartendarstellung:v1daten "EigKartDar.1Bloecke"[0]

#execute if score VarKartDar.1Block PZKartDar.1Ausl matches 0 run say fail but ok

scoreboard players remove VarKartDar.1Schleife PZKartDar.1Ausl 1
execute if score VarKartDar.1Schleife PZKartDar.1Ausl matches 1.. if entity @e[type=minecraft:marker,tag=EtiKartDar.1Welt,tag=EtiKartDar.1Messen] run function kartendarstellung:v1bloecke
