
scoreboard objectives add PZTuriM.1Wert trigger ["Turingmaschine.1: ",{"text":"Wert der Variablen","bold":true}]

data merge storage turingmaschine:v1daten {EigTuriM.1Zustandstabelle:[],EigTuriM.1Tabelleneintrag:[],EigTuriM.1Zustand:'{"text":"R","color":"red","bold":true}',EigTuriM.1Alphabet:'{"text":"#","color":"gold","bold":true}'}

give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={CustomName:'{"text":"Turingmaschine","color":"green","bold":true}',CustomNameVisible:true,Invisible:true,Marker:true,Small:true,Tags:["EtiTuriM.1Alle","EtiTuriM.1Turingmaschine","EtiTuriM.1Erstellen"],id:"minecraft:armor_stand"},minecraft:lore=['"Platziere den Rüstungsständer"','"um die Maschine zu erzeugen."','"Wähle den Rüstungsständer aus,"','"um ein Menü im Chat zu erhalten"'],minecraft:custom_name='{"text":"Turingmaschine","color":"green","bold":true}',minecraft:custom_data={EigTuriM.1Alle:true,EigTuriM.1Steuern:true}]
