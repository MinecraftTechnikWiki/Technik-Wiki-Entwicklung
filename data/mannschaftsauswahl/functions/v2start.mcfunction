
scoreboard objectives add PZManSA.2Ausl trigger ["Mannschaftsauswahl.2: ",{"text":"Auslöser","bold":true}]

scoreboard players set VarManSA.2Mannschaften PZManSA.2Ausl 4

data modify storage mannschaftsauswahl:v2daten "EigManSA.2Argumente" set value {Index:0,Mannschaft:"Team0",Farbe:"white"}
data modify storage mannschaftsauswahl:v2daten "EigManSA.2Mannschaften" set value [{Name:"Team1",Farbe:"red"},{Name:"Team2",Farbe:"blue"},{Name:"Team3",Farbe:"green"},{Name:"Team4",Farbe:"yellow"}]

# Alle Spieler im Umkreis von 15 Blöcken erhalten einen Stock, mit dem man den Mannschaftsverteiler einstellen kann.
give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um die Mannschafts-"','"Optionen anzeigen zu lassen."'],minecraft:custom_name='{"text":"Mannschaftsoptionen","color":"dark_purple","bold":true}',minecraft:custom_data={EigManSA.2Alle:true,EigManSA.2Stock:true},minecraft:enchantment_glint_override=true]

summon minecraft:marker ~-10 ~ ~ {Tags:["EtiManSA.2Alle","EtiManSA.2Wartesaal"]}
execute at @e[type=minecraft:marker,tag=EtiManSA.2Wartesaal] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:gray_concrete replace
