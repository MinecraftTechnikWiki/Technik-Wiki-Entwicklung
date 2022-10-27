# Es wird der Rüstungsständer als Gegenstand erzeugt.
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EigStraBM.1Alle:true,display:{Name:'{"text":"Straßenbaumaschine","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Straßenbaumaschine zu erstellen"','"und um eine Angel zu erhalten"'] },EntityTag:{Small:true,Invisible:true,NoGravity:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Erstellen"]},Motion:[0.0d,0.3d,0.0d] } } }

# Wenn die Baumaschine bereits vorhanden war, wird dem Spieler die Angel aus dem Inventar entfernt.
execute if entity @s[tag=!EtiStraBM.1Erstellen] run clear @p[distance=..25,gamemode=!spectator,nbt={Inventory:[{id:"minecraft:fishing_rod"}]}] minecraft:fishing_rod{EigStraBM.1Alle:true} 1

# Falls die Baumaschine vollständig vorhanden war, werden alle Bauteile von ihr ebenfalls entfernt. Andernfalls nur sie selbst.
execute if entity @s[tag=!EtiStraBM.1Erstellen] run kill @e[distance=..10,tag=EtiStraBM.1Entfernen,sort=nearest,limit=17]
kill @s[tag=EtiStraBM.1Erstellen]

# Eine Meldung erscheint, damit der Spieler weis warum die Maschine entfernt wurde.
tellraw @p[distance=..10,gamemode=!spectator] ["Straßenbaumaschine.1:\n",{"text":"Die Straßenbaumaschine wurde entfernt. Auslöser dafür war ein Angelköder, ein fehlender Sitz oder eine andere Baumaschine.","color":"red","bold":true}]
