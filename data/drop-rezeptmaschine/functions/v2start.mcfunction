#
scoreboard objectives add PZDrRezM.2Drop minecraft.custom:minecraft.drop ["Drop-Rezeptmaschine.2: ",{"text":"Nummer und Droppen","bold":true}]
scoreboard objectives add PZDrRezM.2Fort dummy ["Drop-Rezeptmaschine.2: ",{"text":"Fortschritt","bold":true}]

scoreboard players set KonstDrRezM.2VIER PZDrRezM.2Drop 4

give @a[distance=..15] minecraft:furnace{EigDrRezM.2Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"']} } 4

give @a[distance=..15] minecraft:oak_log{EigDrRezM.2Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 32
give @a[distance=..15] minecraft:coal{EigDrRezM.2Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64
give @a[distance=..15] minecraft:lava_bucket{EigDrRezM.2Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2

give @a[distance=..15] minecraft:cod{EigDrRezM.2Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64
give @a[distance=..15] minecraft:porkchop{EigDrRezM.2Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64
give @a[distance=..15] minecraft:mutton{EigDrRezM.2Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64
give @a[distance=..15] minecraft:potato{EigDrRezM.2Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64

# Damit die Spieler wissen wie man den Ofen verwenden muss, wird ihnen eine Nachricht ausgegeben.
tellraw @a[distance=..15] ["Drop-Rezeptmaschine.2: ",{"text":"Droppe einen Ofen mit der Teste Q und wirf daneben einen Brennstoff. Werfe als letztes ein Brennmaterial hin, dass erhitzt werden soll. Nach einer bestimmten Zeit der Erhitzung wird das Brennmaterial umgewandelt.","bold":true}]
