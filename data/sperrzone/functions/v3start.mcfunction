
#summon minecraft:armor_stand ~-15 ~ ~ {Small:true,Marker:true,NoGravity:true,Tags:["EtiSperrZ.3Alle","EtiSperrZ.3Zone"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] }
#setblock ~-5 ~ ~ minecraft:chest[facing=east]{Items:[{Slot:13b,id:"minecraft:name_tag",Count:1b,tag:{EigSperrZ.3Alle:true,display:{Name:'{"text":"Ausweis","bold":true}',Lore:['"Trage diesen Ausweis"','"im Inventar um"','"Zugang zur Zone zu erhalten"']} } }]}


scoreboard objectives add PZSperrZ.3Winkel dummy ["Sperrzone.3: ",{"text":"Kamera-Winkel"}]


give @a[distance=..15] minecraft:armor_stand{EigSperrZ.3Alle:true,display:{Name:'{"text":"Kamera-Kugel","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Sperrzone zu erzeugen"']},EntityTag:{Small:true,Marker:true,ShowArms:true,CustomNameVisible:true,CustomName:'{"text":"Kamera","color":"gold","bold":true}',Tags:["EtiSperrZ.3Alle","EtiSperrZ.3Kamera","EtiSperrZ.3Kugel","EtiSperrZ.3Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b} ] } }

give @a[distance=..15] minecraft:armor_stand{EigSperrZ.3Alle:true,display:{Name:'{"text":"Kamera-Quader","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Sperrzone zu erzeugen"']},EntityTag:{Small:true,Marker:true,ShowArms:true,CustomNameVisible:true,CustomName:'{"text":"Kamera","color":"gold","bold":true}',Tags:["EtiSperrZ.3Alle","EtiSperrZ.3Kamera","EtiSperrZ.3Quader","EtiSperrZ.3Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b} ] } }

give @a[distance=..15] minecraft:potion{EigSperrZ.3Alle:true,Potion:"minecraft:invisibility",display:{Lore:['"Trinke den Trank"','"um von den Kameras"','"nicht erfasst werden zu können"']} } 3
