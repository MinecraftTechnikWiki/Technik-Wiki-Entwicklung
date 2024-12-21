# Es werden zwei Punkte-Ziele für das Droppen und für die Stapelgröße angelegt.
scoreboard objectives add PZDrRezM.1Drop minecraft.custom:minecraft.drop ["Drop-Rezeptmaschine.1: ",{"text":"Nummer und Droppen","bold":true}]
scoreboard objectives add PZDrRezM.1Stap dummy ["Drop-Rezeptmaschine.1: ",{"text":"Stapel und Handwerksnummer","bold":true}]

# Es werden die Rezept-Gegenstände ausgehändigt.
give @a[distance=..15] minecraft:string[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 2
give @a[distance=..15] minecraft:paper[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 4
give @a[distance=..15] minecraft:bow[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 2
give @a[distance=..15] minecraft:iron_ingot[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 4
give @a[distance=..15] minecraft:tripwire_hook[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 2
give @a[distance=..15] minecraft:oak_planks[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 2
give @a[distance=..15] minecraft:oak_log[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 4
give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 2
give @a[distance=..15] minecraft:smooth_stone_slab[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.1Alle:true}] 2

# Damit die Spieler wissen wie die Rezepte lauten, werden sie als Nachricht ausgegeben.
tellraw @a[distance=..15] ["Drop-Rezeptmaschine.1:\n",{"text":"Namensschild:\n Droppe mit Q einen Faden und zwei Papiere zusammen.\nArmbrust:\n Droppe mit Q einen Bogen, zwei Eisenbarren und einen Haken zusammen.","bold":true}]
