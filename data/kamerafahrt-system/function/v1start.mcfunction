
scoreboard objectives add PZKamFah.1Ausl trigger ["Kamerafahrt-System.1: ",{text:"Auslöser für Nachrichten",bold:true}]
scoreboard objectives add PZKamFah.1Wert dummy ["Kamerafahrt-System.1: ",{text:"Werte für Blöcke und Anzahl.",bold:true}]

give @a[distance=..15] minecraft:stick[minecraft:enchantment_glint_override=true,minecraft:custom_name={text:"Block-Zähler",color:"dark_purple",bold:true},minecraft:lore=["Wähle den Stock aus","um das Block-Zähler-Menü","anzeigen zu lassen."],minecraft:custom_data={EigKamFah.1Alle:true,EigKamFah.1Stock:true}]

give @a[distance=..15] minecraft:chicken_spawn_egg[minecraft:enchantment_glint_override=true,minecraft:custom_name={text:"Block-Zähler",color:"dark_purple",bold:true},minecraft:lore=["Wähle den Stock aus","um das Block-Zähler-Menü","anzeigen zu lassen."],minecraft:entity_data={id:"minecraft:marker",Tags:["EtiKamFah.1Alle","EtiKamFah.1Punkt"]},minecraft:custom_data={EigKamFah.1Alle:true,EigKamFah.1Stock:true}]

data merge storage kamerafahrt-system:v1daten {EigKamFah.1Kamera:[]}
