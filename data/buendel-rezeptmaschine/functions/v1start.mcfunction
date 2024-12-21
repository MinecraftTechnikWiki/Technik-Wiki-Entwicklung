# Es werden zwei Punkte-Ziele für das Droppen und für die Stapelgröße angelegt.
scoreboard objectives add PZBuRezM.1Buend minecraft.used:minecraft.bundle ["Bündel-Rezeptmaschine.1: ",{"text":"Bündel","bold":true}]
#scoreboard objectives add PZBuRezM.1Rezept dummy ["Bündel-Rezeptmaschine.1: ",{"text":"Stapel und Handwerksnummer","bold":true}]

data merge storage buendel-rezeptmaschine:v1daten {EigBuRezM.1Buendel:[]}

# Es werden die Rezept-Gegenstände ausgehändigt.
give @a[distance=..15] minecraft:bundle[minecraft:lore=['"Nutze das Bündel als Rezeptmaschine"'],minecraft:custom_name='{"text":"Bündel-Rezepte","bold":true}',minecraft:custom_data={EigBuRezM.1Alle:true,EigBuRezM.1Buendel:true},minecraft:enchantment_glint_override=true] 2

give @a[distance=..15] minecraft:stone[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigBuRezM.1Alle:true}] 2
give @a[distance=..15] minecraft:cobblestone[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigBuRezM.1Alle:true}] 2
give @a[distance=..15] minecraft:coal[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigBuRezM.1Alle:true}] 4
give @a[distance=..15] minecraft:gold_ingot[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigBuRezM.1Alle:true}] 2

summon minecraft:item_frame ~ ~1 ~ {Invisible:false,Facing:1b,Tags:["EtiBuRezM.1Alle","EtiBuRezM.1Rahmen"]}
