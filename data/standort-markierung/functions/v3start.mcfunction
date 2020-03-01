
scoreboard objectives add PZStaMa.3Wert trigger ["Standort-Markierung.3: ",{"text":"Wert der Variablen","bold":true}]
scoreboard players set VarStaMa.3Variable PZStaMa.3Wert 5
scoreboard players set KonstStaMa.3MINUSEINS PZStaMa.3Wert -1

give @a[distance=..15] minecraft:armor_stand{standort-markierung:"v3gegenstand",display:{Name:'{"text":"Markierung","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Markierung zu setzen"']},EntityTag:{NoGravity:true,Tags:["EtiStaMa.3Alle","EtiStaMa.3Mittelpunkt"]} }
