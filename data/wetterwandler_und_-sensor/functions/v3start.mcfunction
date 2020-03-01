# Das Punktestand-Ziel wird erstellt
scoreboard objectives add PZWetWS.3Wert trigger ["Wetterwandler und -sensor.3: ",{"text":"Wert der Variablen","bold":true}]

# Die Konstante Hundert wird erstellt
scoreboard players set KonstWetWS.3HUNDERT PZWetWS.3Wert 100

# Die Variable für Dauer des Wetters sowie der Rüstungsständer der die Wetterart speichert werden erstellt
scoreboard players set VarWetWS.3Dauer PZWetWS.3Wert 1
summon minecraft:armor_stand ~ ~1 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"klares Wetter","color":"yellow","bold":true}',Tags:["EtiWetWS.3Alle","EtiWetWS.3Wetter"]}

# Spielern im Umkreis von 15 Metern wird ein Rüstungsständer und mehrere Wasserflaschen ins Inventar gegeben
give @a[distance=..15] minecraft:armor_stand{wetterwandler_und_-sensor:"v3gegenstand",display:{Name:'{"text":"Wetteranlage","color":"aqua","bold":true}',Lore:['"Platziere den"','"Rüstungsständer um"','"die Wetteranlage"','"zu erstellen"']},EntityTag:{DisabledSlots:2039583,Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Wetteranlage","color":"aqua","bold":true}',Tags:["EtiWetWS.3Alle","EtiWetWS.3Wetteranlage"],ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b} ] } }
give @a[distance=..15] minecraft:potion{wetterwandler_und_-sensor:"v3gegenstand",Potion:"minecraft:water",display:{Lore:['"Wirf mit Q die"','"Wasserflasche auf"','"die Wetteranlage"'] } } 4
