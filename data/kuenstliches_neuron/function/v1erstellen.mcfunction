
execute if entity @s[tag=EtiKNeur.1Eingangswert] run summon minecraft:armor_stand ~ ~ ~ {Small:true,ShowArms:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"undefiniert",color:"yellow",bold:true},Tags:["EtiKNeur.1Alle","EtiKNeur.1Ausloeser","EtiKNeur.1Eingangswert","EtiKNeur.1Wert"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"falsch",color:"red",bold:true},Tags:["EtiKNeur.1Alle","EtiKNeur.1Eingangswert","EtiKNeur.1Bool"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"Eingangswert",color:"green",bold:true},Tags:["EtiKNeur.1Alle","EtiKNeur.1Eingangswert"]}]}]}

execute if entity @s[tag=EtiKNeur.1Schwellenwert] run summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"falsch",color:"red",bold:true},Tags:["EtiKNeur.1Alle","EtiKNeur.1Schwellenwert","EtiKNeur.1Bool"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"undefiniert",color:"yellow",bold:true},Tags:["EtiKNeur.1Alle","EtiKNeur.1Ausloeser","EtiKNeur.1Schwellenwert","EtiKNeur.1Wert"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"Künstliches Neuron",color:"aqua",bold:true},Tags:["EtiKNeur.1Alle","EtiKNeur.1Schwellenwert"]}]}]}

execute store result score @s PZKNeur.1Wert run data get entity @s UUID[0]
execute store result score @n[type=minecraft:armor_stand,tag=EtiKNeur.1Ausloeser,tag=EtiKNeur.1Wert] PZKNeur.1Wert run scoreboard players operation @s PZKNeur.1Wert %= KonstKNeur.1HUNDERT PZKNeur.1Wert
scoreboard players operation @n[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,tag=EtiKNeur.1Wert] PZKNeur.1Wert += KonstKNeur.1HUNDERT PZKNeur.1Wert
execute as @n[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,tag=EtiKNeur.1Wert] run scoreboard players operation @s PZKNeur.1Wert += @s PZKNeur.1Wert

tag @n[type=minecraft:armor_stand,tag=EtiKNeur.1Ausloeser,tag=EtiKNeur.1Wert] add EtiKNeur.1Selbst
execute at @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schild] run data merge block ~ ~ ~ {front_text:{messages:[{score:{name:"@n[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst]",objective:"PZKNeur.1Wert"},color:"dark_purple",bold:true},"","",""]} }
execute at @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schild] run data modify entity @n[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst] CustomName set from block ~ ~ ~ front_text.messages[0]
tag @n[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst] remove EtiKNeur.1Selbst

kill @s
