
scoreboard objectives add PZDrRezM.p1Drop minecraft.custom:minecraft.drop ["Drop-Rezeptmaschine.erweitert.1: ",{"text":"Nummer und Droppen","bold":true}]
scoreboard objectives add PZDrRezM.p1Stap dummy ["Drop-Rezeptmaschine.erweitert.1: ",{"text":"Stapel und Handwerksnummer","bold":true}]

data merge storage drop-rezeptmaschine:vp1daten {EigDrRezM.p1Rezepte:[]}

data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte" append value {EigDrRezM.p1Ausgabe:{id:"minecraft:name_tag",Count:1b},EigDrRezM.p1Eingabe:[{id:"minecraft:string",Count:1b},{id:"minecraft:paper",Count:2b}]}
data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte" append value {EigDrRezM.p1Ausgabe:{id:"minecraft:crossbow",Count:1b},EigDrRezM.p1Eingabe:[{id:"minecraft:bow",Count:1b},{id:"minecraft:iron_ingot",Count:2b},{id:"minecraft:tripwire_hook",Count:1b}]}
data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte" append value {EigDrRezM.p1Ausgabe:{id:"minecraft:armor_stand",Count:1b},EigDrRezM.p1Eingabe:[{id:"minecraft:oak_planks",Count:1b},{id:"minecraft:stick",Count:2b},{id:"minecraft:smooth_stone_slab",Count:1b}]}

give @a[distance=..15] minecraft:string{EigDrRezM.p1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:paper{EigDrRezM.p1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 4
give @a[distance=..15] minecraft:bow{EigDrRezM.p1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:iron_ingot{EigDrRezM.p1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 4
give @a[distance=..15] minecraft:tripwire_hook{EigDrRezM.p1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2

tellraw @a[distance=..15] ["Drop-Rezeptmaschine.erweitert.1:\n",{"text":"Namensschild:\n Droppe mit Q einen Faden und zwei Papiere zusammen.\nArmbrust:\n Droppe mit Q einen Bogen, zwei Eisenbarren und einen Haken zusammen.","bold":true}]
