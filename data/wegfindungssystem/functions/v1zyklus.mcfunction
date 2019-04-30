
execute as @e[tag=EtiWegFS.1Erstellen] at @s align xyz positioned ~0.5 ~ ~0.5 run function wegfindungssystem:v1erstellen

execute unless entity @e[tag=EtiWegFS.1Fertig] if entity @e[tag=EtiWegFS.1Ziel] as @e[tag=EtiWegFS.1Knoten] at @s align xyz positioned ~0.5 ~ ~0.5 run function wegfindungssystem:v1knoten
