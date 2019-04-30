# Punktestand-Ziele werden erstellt
scoreboard objectives remove PZHungS.1GlEss

scoreboard objectives remove PZHungS.1Apfel
scoreboard objectives remove PZHungS.1GeSchfl
scoreboard objectives remove PZHungS.1Brot
scoreboard objectives remove PZHungS.1GeKabj

# Der Spieler wird in den Kreativmodus gesetzt
gamemode creative @s[gamemode=!creative]

effect clear @s

clear @s minecraft:apple{display:{Lore:["Hungerpunkt-System.1"]} }
clear @s minecraft:cooked_porkchop{display:{Lore:["Hungerpunkt-System.1"]} }
clear @s minecraft:bread{display:{Lore:["Hungerpunkt-System.1"]} }
clear @s minecraft:cooked_cod{display:{Lore:["Hungerpunkt-System.1"]} }

kill @e[distance=..50,type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Hungerpunkt-System.1"]} } } }]
