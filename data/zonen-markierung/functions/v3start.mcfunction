
scoreboard objectives add PZZonMa.3Nummer dummy ["Zonen-Markierung.3: ",{"text":"Zonen-Nummer","bold":true}]
scoreboard objectives add PZZonMa.3Betritt minecraft.custom:minecraft.leave_game ["Zonen-Markierung.3: ",{"text":"Spiel verlassen und Rangfolge","bold":true}]

give @a[distance=..15] minecraft:armor_stand{EigZonMa.3Alle:true,display:{Name:'{"text":"Kugel-Zone","color":"red","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Kugel-Zone zu erstellen"']},EntityTag:{Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"-hausen","color":"red","bold":true}',Tags:["EtiZonMa.3Alle","EtiZonMa.3Zone","EtiZonMa.3Kugel","EtiZonMa.3Rangfolge"] } } 16
give @a[distance=..15] minecraft:armor_stand{EigZonMa.3Alle:true,display:{Name:'{"text":"Quader-Zone","color":"red","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Quader-Zone zu erstellen"']},EntityTag:{Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"-hausen","color":"red","bold":true}',Tags:["EtiZonMa.3Alle","EtiZonMa.3Zone","EtiZonMa.3Quader","EtiZonMa.3Rangfolge"],Rotation:[0.0f,0.0f]} } 16

give @a[distance=..15] minecraft:crafting_table{EigZonMa.3Alle:true,display:{Lore:['"Droppe den Block"','"um die Zone festzulegen"'] } } 16
give @a[distance=..15] minecraft:chest{EigZonMa.3Alle:true,display:{Lore:['"Droppe den Block"','"um die Zone festzulegen"'] } } 16
give @a[distance=..15] minecraft:furnace{EigZonMa.3Alle:true,display:{Lore:['"Droppe den Block"','"um die Zone festzulegen"'] } } 16
