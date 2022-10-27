
#give @a[distance=..15] minecraft:armor_stand

scoreboard objectives add PZKNeur.1Wert trigger ["Künstliches Neuron.1: ",{"text":"Wert der Variablen","bold":true}]
#scoreboard players set KonstKNeur.1HUNDERT PZKNeur.1Wert 100

give @a[distance=..15] minecraft:stick{EigKNeur.1Alle:true,EigKNeur.1Steuern:true,display:{Name:'{"text":"Künstliches Neuron","color":"green","bold":true}',Lore:['"Wähle den Stock aus"','"um einen Eingang für Neuronen"','"zu schalten."']},Enchantments:[{}]}

summon minecraft:marker ~ ~ ~ {Tags:["EtiKNeur.1Alle","EtiKNeur.1Neuron"],data:{EigKNeur.1Eingang:[0,0],EigKNeur.1Ausgang:'{"text":"falsch","color":"red","bold":true}'} }
scoreboard players set @e[type=minecraft:marker,tag=EtiKNeur.1Neuron,sort=nearest,limit=1] PZKNeur.1Wert 2


summon minecraft:armor_stand ~ ~2 ~ {Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'["",{"text":"Σ","color":"gold","bold":true},{"text":">=","color":"gray","bold":true},{"text":"2","color":"dark_purple","bold":true}]',ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}],DisabledSlots:2039583,Tags:["EtiKNeur.1Alle","EtiKNeur.1Wert"]}


#summon minecraft:armor_stand ~ ~1 ~ {Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'["",{"text":"Σ","color":"gold","bold":true},{"text":">=","color":"gray","bold":true},{"text":"2","color":"dark_purple","bold":true}]',Tags:["EtiKNeur.1Alle","EtiKNeur.1Wert"]}


#give @a[distance=..15] minecraft:armor_stand{EigKNeur.1Alle:true,display:{Name:'{"text":"Neuronen-Eingang","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Eingang für Neuronen"','"zu erstellen."']},EntityTag:{Small:true,ShowArms:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiKNeur.1Alle","EtiKNeur.1Erstellen","EtiKNeur.1Eingangswert"] } }

#give @a[distance=..15] minecraft:armor_stand{EigKNeur.1Alle:true,display:{Name:'{"text":"Künstliches Neuron","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um ein künstliches Neuron"','"zu erstellen."']},EntityTag:{Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiKNeur.1Alle","EtiKNeur.1Erstellen","EtiKNeur.1Schwellenwert"] } }

summon minecraft:marker ~ ~1 ~ {Tags:["EtiKNeur.1Alle","EtiKNeur.1Schild"]}
execute at @e[type=minecraft:marker,tag=EtiKNeur.1Schild] run setblock ~ ~ ~ minecraft:oak_sign[rotation=8] replace
