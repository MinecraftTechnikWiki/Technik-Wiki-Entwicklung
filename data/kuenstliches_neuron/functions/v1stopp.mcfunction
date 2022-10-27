
scoreboard objectives remove PZKNeur.1Wert

clear @a minecraft:stick{EigKNeur.1Alle:true}
clear @a minecraft:armor_stand{EigKNeur.1Alle:true}

tag @a[tag=EtiKNeur.1Auswahl] remove EtiKNeur.1Auswahl

execute at @e[type=minecraft:marker,tag=EtiKNeur.1Schild] run setblock ~ ~ ~ minecraft:air replace

kill @e[tag=EtiKNeur.1Alle]
