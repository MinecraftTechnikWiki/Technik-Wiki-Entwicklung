# Das Punktestand-Ziel für die verschiedenen Befehle wird erstellt
scoreboard objectives add PZTausM.2Ausl trigger ["Tauschmaschine.2: ",{"text":"Auslöser fürs Tauschen","bold":true}]

give @a[distance=..25] minecraft:armor_stand{tauschmaschine:"v2gegenstand",display:{Name:'{"text":"Tauschautomat","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Tauschautomat"','"zu erstellen"']},EntityTag:{Small:true,Invisible:true,Marker:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"bold":true,"color":"gold","text":"Eichenstamm"}',Tags:["EtiTausM.2Alle","EtiTausM.2Material"]} }
give @a[distance=..25] minecraft:emerald{tauschmaschine:"v2gegenstand"} 16

summon minecraft:armor_stand ~ ~1 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"bold":true,"color":"gold","text":"Eichenstamm"}',Tags:["EtiTausM.2Alle","EtiTausM.2Material"]}
