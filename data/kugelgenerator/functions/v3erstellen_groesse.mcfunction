
scoreboard players add VarKugelG.3Zahl PZKugelG.3Hor 1
summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,Tags:["EtiKugelG.3Alle","EtiKugelG.3Kugel"]}
execute if score VarKugelG.3Zahl PZKugelG.3Hor matches ..25 positioned ~ ~ ~-1 run function kugelgenerator:v3erstellen_groesse
