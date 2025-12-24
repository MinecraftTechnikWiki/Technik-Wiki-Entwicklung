
scoreboard objectives remove PZKNeur.1Wert

clear @a *[minecraft:custom_data~{EigKNeur.1Alle:true}]

tag @a[tag=EtiKNeur.1Auswahl] remove EtiKNeur.1Auswahl

execute at @e[type=minecraft:marker,tag=EtiKNeur.1Schild] run setblock ~ ~ ~ minecraft:air replace

kill @e[tag=EtiKNeur.1Alle]
