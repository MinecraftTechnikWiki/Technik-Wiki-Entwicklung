# Punktestand-Ziele werden erstellt
scoreboard objectives remove PZHungS.2Zeit

scoreboard objectives remove PZHungS.2Trinken

scoreboard objectives remove PZHungS.2WasFl
scoreboard objectives remove PZHungS.2Milch
scoreboard objectives remove PZHungS.2Ragout
scoreboard objectives remove PZHungS.2PilzS
scoreboard objectives remove PZHungS.2Bortsch
scoreboard objectives remove PZHungS.2Melone

# Der Spieler wird in den Kreativmodus gesetzt
gamemode creative @s[gamemode=!creative]

effect clear @s

tag @s[tag=EtiHungS.2HaelfteWasser] remove EtiHungS.2HaelfteWasser

clear @s minecraft:potion{display:{Lore:["Hungerpunkt-System.2"]} }
clear @s minecraft:milk_bucket{display:{Lore:["Hungerpunkt-System.2"]} }
clear @s minecraft:rabbit_stew{display:{Lore:["Hungerpunkt-System.2"]} }
clear @s minecraft:mushroom_stew{display:{Lore:["Hungerpunkt-System.2"]} }
clear @s minecraft:beetroot_soup{display:{Lore:["Hungerpunkt-System.2"]} }
clear @s minecraft:melon_slice{display:{Lore:["Hungerpunkt-System.2"]} }

kill @e[distance=..50,type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Hungerpunkt-System.2"]} } } }]
