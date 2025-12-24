#darstellung
#scoreboard players set VarKartDar.1Tick PZKartDar.1Ausl 0



#scoreboard players operation VarKartDar.1Schleife PZKartDar.1Ausl = VarKartDar.1Quadrat PZKartDar.1Ausl
#scoreboard players operation VarKartDar.1Zaehler PZKartDar.1Ausl = VarKartDar.1Darsteller PZKartDar.1Ausl
#execute at @p rotated ~ 0 run teleport @n[distance=..5,type=minecraft:marker,tag=EtiKartDar.1Position] ^-0.28 ^1.6 ^0.2 ~ ~
#execute at @p at @n[distance=..5,type=minecraft:marker,tag=EtiKartDar.1Position] run function kartendarstellung:v1karte

scoreboard players operation VarKartDar.1Schleife PZKartDar.1Ausl = VarKartDar.1Quadrat PZKartDar.1Ausl
scoreboard players operation VarKartDar.1Zaehler PZKartDar.1Ausl = VarKartDar.1Darsteller PZKartDar.1Ausl
execute positioned ~-5 ~ ~-5 run function kartendarstellung:v1welt

scoreboard players operation VarKartDar.1Schleife PZKartDar.1Ausl = VarKartDar.1Bloecke PZKartDar.1Ausl

#scoreboard players set VarKartDar.1Schleife PZKartDar.1Ausl 500
#function kartendarstellung:v1bloecke
#kill @e[type=minecraft:marker,tag=EtiKartDar.1Welt]
