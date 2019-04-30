
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Kontrollpunkt-System.3"]} } } }] add EtiKontPS.3Alle
kill @e[type=minecraft:armor_stand,tag=EtiKontPS.3Alle]
clear @a[distance=..25,team=!] minecraft:dragon_breath{display:{Lore:["Kontrollpunkt-System.3"]} }
team remove TMKontPS.3Team1
team remove TMKontPS.3Team2
scoreboard objectives remove PZKontPS.3Wurf
