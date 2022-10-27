
tag @s remove EtiEisenB.1Erstellen
execute unless block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run tag @s add EtiEisenB.1KeinGleis

execute if entity @s[tag=!EtiEisenB.1KeinGleis] run function eisenbahn:v1ausrichtung
execute at @s[tag=!EtiEisenB.1KeinGleis] run function eisenbahn:v1bahn_lok

execute if entity @s[tag=EtiEisenB.1KeinGleis] run tellraw @a[distance=..3] ["Eisenbahn.1: ",{"text":"Der Rüstungsständer für die Eisenbahn muss auf magenta glasierte Keramik (Eisenbahngleis) platziert werden!","color":"red","bold":true}]
kill @s[tag=EtiEisenB.1KeinGleis]
