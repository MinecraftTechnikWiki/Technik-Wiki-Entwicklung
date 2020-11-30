
scoreboard objectives add PZStrBTBM.1Wert trigger ["Straßenbrücken- und -tunnelbaumaschine.1: ",{"text":"Wert der Variablen","bold":true}]

give @a[distance=..25] minecraft:armor_stand{EigStrBTBM.1Alle:true,display:{Name:'{"text":"Straßenbrücken- und -tunnelbaumaschine","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Straßenbrücken- und"','"-tunnelbaumaschine zu erstellen"','"und um eine Angel zu erhalten"'] },EntityTag:{Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Erstellen"] } } 16

give @a[distance=..25] minecraft:gray_concrete{EigStrBTBM.1Alle:true} 192
give @a[distance=..25] minecraft:quartz_block{EigStrBTBM.1Alle:true} 128
give @a[distance=..25] minecraft:stone_brick_slab{EigStrBTBM.1Alle:true} 256

# Der Chunk wird aktiviert.
forceload add ~ ~
