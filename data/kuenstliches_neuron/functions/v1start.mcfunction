
#give @a[distance=..15] minecraft:armor_stand

scoreboard objectives add PZKNeur.1Wert trigger ["Künstliches Neuron.1: ",{"text":"Wert der Variablen","bold":true}]
#scoreboard players set KonstKNeur.1HUNDERT PZKNeur.1Wert 100

give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um einen Eingang für Neuronen"','"zu schalten."'],minecraft:custom_name='{"text":"Künstliches Neuron","color":"green","bold":true}',minecraft:custom_data={EigKNeur.1Alle:true,EigKNeur.1Steuern:true},minecraft:enchantment_glint_override=true]

summon minecraft:marker ~ ~ ~ {Tags:["EtiKNeur.1Alle","EtiKNeur.1Neuron"],data:{EigKNeur.1Eingang:[0,0],EigKNeur.1Ausgang:'{"text":"falsch","color":"red","bold":true}'} }
scoreboard players set @e[type=minecraft:marker,tag=EtiKNeur.1Neuron,sort=nearest,limit=1] PZKNeur.1Wert 2


summon minecraft:armor_stand ~ ~2 ~ {Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'["",{"text":"Σ","color":"gold","bold":true},{"text":">=","color":"gray","bold":true},{"text":"2","color":"dark_purple","bold":true}]',ArmorItems:[{},{},{},{id:"minecraft:ender_eye",count:1}],DisabledSlots:2039583,Tags:["EtiKNeur.1Alle","EtiKNeur.1Wert"]}


#summon minecraft:armor_stand ~ ~1 ~ {Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'["",{"text":"Σ","color":"gold","bold":true},{"text":">=","color":"gray","bold":true},{"text":"2","color":"dark_purple","bold":true}]',Tags:["EtiKNeur.1Alle","EtiKNeur.1Wert"]}

#give @a[distance=..15] minecraft:armor_stand[minecraft:lore=['"Platziere den Rüstungsständer"','"um einen Eingang für Neuronen"','"zu erstellen."'],minecraft:custom_name='{"text":"Neuronen-Eingang","color":"green","bold":true}',minecraft:custom_data={EigKNeur.1Alle:true,"minecraft:entity_data":{CustomName:'{"text":"falsch","color":"red","bold":true}',CustomNameVisible:true,NoGravity:true,ShowArms:true,Small:true,Tags:["EtiKNeur.1Alle","EtiKNeur.1Erstellen","EtiKNeur.1Eingangswert"]}}]


#give @a[distance=..15] minecraft:armor_stand[minecraft:lore=['"Platziere den Rüstungsständer"','"um ein künstliches Neuron"','"zu erstellen."'],minecraft:custom_name='{"text":"Künstliches Neuron","color":"green","bold":true}',minecraft:custom_data={EigKNeur.1Alle:true,"minecraft:entity_data":{CustomName:'{"text":"falsch","color":"red","bold":true}',CustomNameVisible:true,NoGravity:true,Small:true,Tags:["EtiKNeur.1Alle","EtiKNeur.1Erstellen","EtiKNeur.1Schwellenwert"]}}]

summon minecraft:marker ~ ~1 ~ {Tags:["EtiKNeur.1Alle","EtiKNeur.1Schild"]}
execute at @e[type=minecraft:marker,tag=EtiKNeur.1Schild] run setblock ~ ~ ~ minecraft:oak_sign[rotation=8] replace
