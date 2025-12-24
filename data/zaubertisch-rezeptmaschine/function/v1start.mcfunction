
scoreboard objectives add PZZaRezM.1Wert dummy ["Zaubertisch-Rezeptmaschine.1: ",{text:"Fortschritt der Erhitzung",bold:true}]

scoreboard objectives add PZZaRezM.1Fort dummy ["Zaubertisch-Rezeptmaschine.1: ",{text:"Fortschritt der Erhitzung",bold:true}]
scoreboard objectives add PZZaRezM.1Dau dummy ["Zaubertisch-Rezeptmaschine.1: ",{text:"Dauer der Erhitzung",bold:true}]
scoreboard objectives add PZZaRezM.1Mat dummy ["Zaubertisch-Rezeptmaschine.1: ",{text:"Material",bold:true}]

scoreboard players set KonstZaRezM.1ZWANZIG PZZaRezM.1Wert 20

# Zufallswert der immer dann gesetzt wird, wenn man eine Verzauberung auf einen Gegenstand angewendet hat. Die Zufallszahl ist der Index der Verzauberungsliste im Storage.
scoreboard players set VarZaRezM.1Zufall PZZaRezM.1Wert 1

data merge storage zaubertisch-rezeptmaschine:v1daten {EigZaRezM.1ZauberSpeicher:[]}

# Flüche, damit es sich lohnt Zauberbücher zu nutzen um weitere Verzauberungen freizuschalten.
data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append value {id:"minecraft:vanishing_curse",lvl:1s}
data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append value {id:"minecraft:binding_curse",lvl:1s}

#data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append value {id:"minecraft:looting"}
#data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append value {id:"minecraft:mending"}
#data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append value {id:"minecraft:silk_touch"}
#data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append value {id:"minecraft:piercing"}
data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append value {id:"minecraft:flame",lvl:1s}
data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append value {id:"minecraft:unbreaking",lvl:1s}

give @a[distance=..15] minecraft:dropper[minecraft:lore=["Platziere den Spender,","platziere den Rahmen darauf","und lege in diesen den Zaubertisch."],minecraft:custom_data={EigZaRezM.1Alle:true}] 1
give @a[distance=..15] minecraft:item_frame[minecraft:lore=["Platziere den Spender,","platziere den Rahmen darauf","und lege in diesen den Zaubertisch."],minecraft:custom_data={EigZaRezM.1Alle:true}] 1
give @a[distance=..15] minecraft:enchanting_table[minecraft:lore=["Platziere den Spender,","platziere den Rahmen darauf","und lege in diesen den Zaubertisch."],minecraft:custom_data={EigZaRezM.1Alle:true}] 1

give @a[distance=..15] minecraft:diamond_sword[minecraft:lore=["Rezept-Gegenstand"],minecraft:custom_data={EigZaRezM.1Alle:true}] 1
give @a[distance=..15] minecraft:golden_pickaxe[minecraft:lore=["Rezept-Gegenstand"],minecraft:custom_data={EigZaRezM.1Alle:true}] 1
give @a[distance=..15] minecraft:netherite_hoe[minecraft:lore=["Rezept-Gegenstand"],minecraft:custom_data={EigZaRezM.1Alle:true}] 1

give @a[distance=..15] minecraft:lapis_lazuli[minecraft:lore=["Rezept-Gegenstand"],minecraft:custom_data={EigZaRezM.1Alle:true}] 64

give @a[distance=..15] minecraft:enchanted_book[minecraft:lore=["Rezept-Gegenstand"],minecraft:stored_enchantments={"minecraft:protection":3},minecraft:custom_data={EigZaRezM.1Alle:true}] 1
give @a[distance=..15] minecraft:enchanted_book[minecraft:lore=["Rezept-Gegenstand"],minecraft:stored_enchantments={"minecraft:protection":3,projectile_protection:3},minecraft:custom_data={EigZaRezM.1Alle:true}] 1
give @a[distance=..15] minecraft:enchanted_book[minecraft:lore=["Rezept-Gegenstand"],minecraft:stored_enchantments={"minecraft:protection":3,projectile_protection:3},minecraft:custom_data={EigZaRezM.1Alle:true}] 1
