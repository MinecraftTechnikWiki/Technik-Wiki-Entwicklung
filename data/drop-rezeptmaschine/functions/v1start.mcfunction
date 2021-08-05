# Es werden zwei Punkte-Ziele für das Droppen und für die Stapelgröße angelegt.
scoreboard objectives add PZDrRezM.1Drop minecraft.custom:minecraft.drop ["Drop-Rezeptmaschine.1: ",{"text":"Nummer und Droppen","bold":true}]
scoreboard objectives add PZDrRezM.1Stap dummy ["Drop-Rezeptmaschine.1: ",{"text":"Stapel und Handwerksnummer","bold":true}]

# Es werden die Rezept-Gegenstände ausgehändigt.
give @a[distance=..15] minecraft:string{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:paper{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 4
give @a[distance=..15] minecraft:bow{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:iron_ingot{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 4
give @a[distance=..15] minecraft:tripwire_hook{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:oak_planks{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:oak_log{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 4
give @a[distance=..15] minecraft:stick{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:smooth_stone_slab{EigDrRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2

# Damit die Spieler wissen wie die Rezepte lauten, werden sie als Nachricht ausgegeben.
tellraw @a[distance=..15] ["Drop-Rezeptmaschine.1:\n",{"text":"Namensschild:\n Droppe mit Q einen Faden und zwei Papiere zusammen.\nArmbrust:\n Droppe mit Q einen Bogen, zwei Eisenbarren und einen Haken zusammen.","bold":true}]
