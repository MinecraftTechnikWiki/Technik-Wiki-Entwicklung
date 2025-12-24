#welt reihe
#scoreboard players set VarKartDar.1Block PZKartDar.1Ausl 0
#scoreboard players operation VarKartDar.1Schleife3 PZKartDar.1Ausl = VarKartDar.1Bloecke PZKartDar.1Ausl
#tellraw @s [{score:{name:"VarKartDar.1Schleife3",objective:"PZKartDar.1Ausl"} }]
#tellraw @s [{score:{name:"VarKartDar.1Zaehler",objective:"PZKartDar.1Ausl"} }]
#scoreboard players remove VarKartDar.1Zaehler PZKartDar.1Ausl 1
#execute positioned over world_surface positioned ~ ~-1 ~ run function kartendarstellung:v1bloecke
#execute positioned over world_surface run setblock ~ ~ ~ minecraft:sand


execute positioned ~ ~-1 ~ unless entity @n[distance=..0.7,type=minecraft:marker,tag=EtiKartDar.1Welt] run summon minecraft:marker ~ ~ ~ {Tags:["EtiKartDar.1Alle","EtiKartDar.1Welt","EtiKartDar.1Messen"]}
#execute positioned ~ ~-1 ~ store result score @n[distance=..1,type=minecraft:marker,tag=EtiKartDar.1Welt] PZKartDar.1Ausl run scoreboard players remove VarKartDar.1Zaehler PZKartDar.1Ausl 1

#say @n[distance=..1,type=minecraft:marker,tag=EtiKartDar.1Welt]

#tellraw @p [{score:{name:"VarKartDar.1Zaehler",objective:"PZKartDar.1Ausl"} }]

scoreboard players remove VarKartDar.1Schleife2 PZKartDar.1Ausl 1
execute if score VarKartDar.1Schleife2 PZKartDar.1Ausl matches 1.. positioned ~1 ~ ~ run function kartendarstellung:v1welt_reihe
