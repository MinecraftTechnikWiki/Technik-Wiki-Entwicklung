
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{kanalbaumaschine:"v1gegenstand",display:{Name:'{"text":"Kanalbaumaschine","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Kanalbaumaschine zu erstellen"','"und um eine Angel zu erhalten"'] },EntityTag:{Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Erstellen"] } } },Motion:[0.0d,0.3d,0.0d]}

execute unless entity @e[distance=..10,tag=EtiKanaBM.1Erstellen] run clear @p[distance=..10] minecraft:fishing_rod{kanalbaumaschine:"v1gegenstand"} 1

execute unless entity @e[distance=..10,tag=EtiKanaBM.1Erstellen] as @e[distance=..10,tag=EtiKanaBM.1Entfernen] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:minecart] run kill @s
kill @s
