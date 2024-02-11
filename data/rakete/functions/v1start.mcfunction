
scoreboard objectives add PZRakete.1Wert dummy ["Rakete.1: ",{"text":"Wert der Rakete","bold":true}]

scoreboard players set KonstRakete.1ZWEI PZRakete.1Wert 2
scoreboard players set VarRakete.1Zeit PZRakete.1Wert 0

bossbar add rakete:v1zaehler ["",{"text":"Zeit == ","bold":true},{"score":{"name":"VarRakete.1Zeit","objective":"PZRakete.1Wert"},"color":"dark_purple","bold":true}]
bossbar set rakete:v1zaehler max 10

give @a[distance=..15] minecraft:armor_stand{EigRakete.1Alle:true,EigRakete.1Rakete:true,display:{Name:'{"text":"Rakete","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Rakete dort zu erzeugen"']},EntityTag:{Small:true,CustomNameVisible:true,CustomName:'{"text":"Rakete","color":"gold","bold":true}',Tags:["EtiRakete.1Alle","EtiRakete.1Erstellen"]} }

give @a[distance=..15] minecraft:armor_stand{EigRakete.1Alle:true,EigRakete.1Rampe:true,display:{Name:'{"text":"Start-Rampe","color":"blue","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Start-Rampe dort zu errichten"']},EntityTag:{Small:true,CustomNameVisible:true,CustomName:'{"text":"Start-Rampe","color":"blue","bold":true}',Tags:["EtiRakete.1Alle","EtiRakete.1Bauwerk"]} }
