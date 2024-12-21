#
scoreboard objectives add PZDrRezM.2Drop minecraft.custom:minecraft.drop ["Drop-Rezeptmaschine.2: ",{"text":"Nummer und Droppen","bold":true}]
scoreboard objectives add PZDrRezM.2Fort dummy ["Drop-Rezeptmaschine.2: ",{"text":"Fortschritt","bold":true}]

scoreboard players set KonstDrRezM.2VIER PZDrRezM.2Drop 4

give @a[distance=..15] minecraft:furnace[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.2Alle:true}] 4

give @a[distance=..15] minecraft:oak_log[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.2Alle:true}] 32
give @a[distance=..15] minecraft:coal[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.2Alle:true}] 64
give @a[distance=..15] minecraft:lava_bucket[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.2Alle:true}] 2

give @a[distance=..15] minecraft:cod[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.2Alle:true}] 64
give @a[distance=..15] minecraft:porkchop[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.2Alle:true}] 64
give @a[distance=..15] minecraft:mutton[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.2Alle:true}] 64
give @a[distance=..15] minecraft:potato[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.2Alle:true}] 64

# Damit die Spieler wissen wie man den Ofen verwenden muss, wird ihnen eine Nachricht ausgegeben.
tellraw @a[distance=..15] ["Drop-Rezeptmaschine.2: ",{"text":"Droppe einen Ofen mit der Teste Q und wirf daneben einen Brennstoff. Werfe als letztes ein Brennmaterial hin, dass erhitzt werden soll. Nach einer bestimmten Zeit der Erhitzung wird das Brennmaterial umgewandelt.","bold":true}]
