
scoreboard players add VarKugelG.3Radius PZKugelG.3Hor 1
setblock ~ ~ ~ minecraft:coarse_dirt keep

execute if score VarKugelG.3Radius PZKugelG.3Hor = VarKugelG.3Groesse PZKugelG.3Hor run tag @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kugel,tag=!EtiKugelG.3Radius,tag=EtiKugelG.3Richtung,sort=nearest,limit=1] add EtiKugelG.3Radius
execute if score VarKugelG.3Radius PZKugelG.3Hor = VarKugelG.3Groesse PZKugelG.3Hor run tag @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kugel,tag=EtiKugelG.3Radius,tag=EtiKugelG.3Richtung] remove EtiKugelG.3Richtung

execute if score VarKugelG.3Radius PZKugelG.3Hor <= VarKugelG.3Groesse PZKugelG.3Hor if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Richtung] positioned ^ ^ ^1 run function kugelgenerator:v3kugel_radius
