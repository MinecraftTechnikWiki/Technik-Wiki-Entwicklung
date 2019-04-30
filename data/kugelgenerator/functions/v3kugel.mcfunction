
scoreboard players set VarKugelG.3Radius PZKugelG.3Hor 0

tag @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kugel,tag=!EtiKugelG.3Radius,sort=nearest,limit=1] add EtiKugelG.3Richtung
execute facing entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kugel,tag=!EtiKugelG.3Radius,tag=EtiKugelG.3Richtung,sort=nearest,limit=1] eyes run function kugelgenerator:v3kugel_radius

execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Kugel,tag=!EtiKugelG.3Radius,sort=nearest,limit=1] run function kugelgenerator:v3kugel
tag @e[type=minecraft:armor_stand,tag=EtiKugelG.3Radius] remove EtiKugelG.3Radius
