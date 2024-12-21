
scoreboard objectives add PZDrRezM.p1Drop minecraft.custom:minecraft.drop ["Drop-Rezeptmaschine.erweitert.1: ",{"text":"Nummer und Droppen","bold":true}]
scoreboard objectives add PZDrRezM.p1Stap dummy ["Drop-Rezeptmaschine.erweitert.1: ",{"text":"Stapel und Handwerksnummer","bold":true}]

data merge storage drop-rezeptmaschine:vp1daten {EigDrRezM.p1Rezepte:[]}

data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte" append value {EigDrRezM.p1Ausgabe:{id:"minecraft:name_tag",count:1},EigDrRezM.p1Eingabe:[{id:"minecraft:string",count:1},{id:"minecraft:paper",count:2}]}
data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte" append value {EigDrRezM.p1Ausgabe:{id:"minecraft:crossbow",count:1},EigDrRezM.p1Eingabe:[{id:"minecraft:bow",count:1},{id:"minecraft:iron_ingot",count:2},{id:"minecraft:tripwire_hook",count:1}]}
data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte" append value {EigDrRezM.p1Ausgabe:{id:"minecraft:armor_stand",count:1},EigDrRezM.p1Eingabe:[{id:"minecraft:oak_planks",count:1},{id:"minecraft:stick",count:2},{id:"minecraft:smooth_stone_slab",count:1}]}

give @a[distance=..15] minecraft:string[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.p1Alle:true}] 2
give @a[distance=..15] minecraft:paper[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.p1Alle:true}] 4
give @a[distance=..15] minecraft:bow[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.p1Alle:true}] 2
give @a[distance=..15] minecraft:iron_ingot[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.p1Alle:true}] 4
give @a[distance=..15] minecraft:tripwire_hook[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.p1Alle:true}] 2

tellraw @a[distance=..15] ["Drop-Rezeptmaschine.erweitert.1:\n",{"text":"Namensschild:\n Droppe mit Q einen Faden und zwei Papiere zusammen.\nArmbrust:\n Droppe mit Q einen Bogen, zwei Eisenbarren und einen Haken zusammen.","bold":true}]
