
scoreboard objectives add PZParc.1Wert dummy ["Parcours.1: ",{"text":"Wert der Variablen","bold":true}]
#scoreboard objectives add PZParc.1Vergleich dummy ["Parcours.1: ",{"text":"Wert der Variablen","bold":true}]

give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={id:"minecraft:armor_stand",Small:true,Marker:true,Invisible:true,Tags:["EtiParc.1Alle","EtiParc.1Bauwerk"]},minecraft:custom_name='{"text":"Parcours","bold":true}',minecraft:custom_data={EigParc.1Alle:true}]
