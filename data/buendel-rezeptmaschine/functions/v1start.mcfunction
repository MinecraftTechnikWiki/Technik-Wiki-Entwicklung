# Es werden zwei Punkte-Ziele für das Droppen und für die Stapelgröße angelegt.
scoreboard objectives add PZBuRezM.1Buend minecraft.used:minecraft.bundle ["Bündel-Rezeptmaschine.1: ",{"text":"Bündel","bold":true}]
#scoreboard objectives add PZBuRezM.1Rezept dummy ["Bündel-Rezeptmaschine.1: ",{"text":"Stapel und Handwerksnummer","bold":true}]

data merge storage buendel-rezeptmaschine:v1daten {EigBuRezM.1Buendel:[]}

# Es werden die Rezept-Gegenstände ausgehändigt.
give @a[distance=..15] minecraft:bundle{EigBuRezM.1Alle:true,EigBuRezM.1Buendel:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Bündel-Rezepte","bold":true}',Lore:['"Nutze das Bündel als Rezeptmaschine"'] } } 2

give @a[distance=..15] minecraft:stone{EigBuRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:cobblestone{EigBuRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2
give @a[distance=..15] minecraft:coal{EigBuRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 4
give @a[distance=..15] minecraft:gold_ingot{EigBuRezM.1Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 2

summon minecraft:item_frame ~ ~1 ~ {Invisible:false,Facing:1b,Tags:["EtiBuRezM.1Alle","EtiBuRezM.1Rahmen"]}
