# Punktestand-Ziele werden erstellt
scoreboard objectives add PZHungS.1GlEss dummy ["Hungerpunkt-System.1: ",{"text":"Gleiches Essen","bold":true}]

scoreboard objectives add PZHungS.1Apfel minecraft.used:minecraft.apple ["Hungerpunkt-System.1: ",{"text":"Apfel essen","bold":true}]
scoreboard objectives add PZHungS.1GeSchfl minecraft.used:minecraft.cooked_porkchop ["Hungerpunkt-System.1 :",{"text":"Gebratenes Schweinefleisch essen","bold":true}]
scoreboard objectives add PZHungS.1Brot minecraft.used:minecraft.bread ["Hungerpunkt-System.1: ",{"text":"Brot essen","bold":true}]
scoreboard objectives add PZHungS.1GeKabj minecraft.used:minecraft.cooked_cod ["Hungerpunkt-System.1: ",{"text":"Gebratener Kabeljau essen","bold":true}]

# Der Spieler wird in den Überlebensmodus gesetzt
gamemode survival @s[gamemode=!survival]

effect give @s minecraft:hunger 6 255 true

give @s minecraft:apple{display:{Lore:["Hungerpunkt-System.1"]} } 64
give @s minecraft:cooked_porkchop{display:{Lore:["Hungerpunkt-System.1"]} } 64
give @s minecraft:bread{display:{Lore:["Hungerpunkt-System.1"]} } 64
give @s minecraft:cooked_cod{display:{Lore:["Hungerpunkt-System.1"]} } 64
