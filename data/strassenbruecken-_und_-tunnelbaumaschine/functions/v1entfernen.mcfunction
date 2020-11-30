
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EigStrBTBM.1Alle:true,display:{Name:'{"text":"Straßenbrücken- und -tunnelbaumaschine","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Straßenbrücken- und"','"-tunnelbaumaschine zu erstellen"','"und um eine Angel zu erhalten"'] },EntityTag:{Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Erstellen"] } } },Motion:[0.0d,0.3d,0.0d]}

execute unless entity @e[distance=..10,tag=EtiStrBTBM.1Erstellen] run clear @p[distance=..10] minecraft:fishing_rod{EigStrBTBM.1Alle:true} 1

execute unless entity @e[distance=..10,tag=EtiStrBTBM.1Erstellen] as @e[distance=..10,tag=EtiStrBTBM.1Entfernen] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:minecart] run kill @s
kill @s
