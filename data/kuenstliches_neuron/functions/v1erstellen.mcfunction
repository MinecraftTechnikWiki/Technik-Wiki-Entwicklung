
execute if entity @s[tag=EtiKNeur.1Eingangswert] run summon minecraft:armor_stand ~ ~ ~ {Small:true,ShowArms:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"undefiniert","color":"yellow","bold":true}',Tags:["EtiKNeur.1Alle","EtiKNeur.1Ausloeser","EtiKNeur.1Eingangswert","EtiKNeur.1Wert"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiKNeur.1Alle","EtiKNeur.1Eingangswert","EtiKNeur.1Bool"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Eingangswert","color":"green","bold":true}',Tags:["EtiKNeur.1Alle","EtiKNeur.1Eingangswert"]}]}]}

execute if entity @s[tag=EtiKNeur.1Schwellenwert] run summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiKNeur.1Alle","EtiKNeur.1Schwellenwert","EtiKNeur.1Bool"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"undefiniert","color":"yellow","bold":true}',Tags:["EtiKNeur.1Alle","EtiKNeur.1Ausloeser","EtiKNeur.1Schwellenwert","EtiKNeur.1Wert"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Künstliches Neuron","color":"aqua","bold":true}',Tags:["EtiKNeur.1Alle","EtiKNeur.1Schwellenwert"]}]}]}

execute store result score @s PZKNeur.1Wert run data get entity @s UUID[0]
execute store result score @e[type=minecraft:armor_stand,tag=EtiKNeur.1Ausloeser,tag=EtiKNeur.1Wert,sort=nearest,limit=1] PZKNeur.1Wert run scoreboard players operation @s PZKNeur.1Wert %= KonstKNeur.1HUNDERT PZKNeur.1Wert
scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,tag=EtiKNeur.1Wert,sort=nearest,limit=1] PZKNeur.1Wert += KonstKNeur.1HUNDERT PZKNeur.1Wert
execute as @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,tag=EtiKNeur.1Wert,sort=nearest,limit=1] run scoreboard players operation @s PZKNeur.1Wert += @s PZKNeur.1Wert

tag @e[type=minecraft:armor_stand,tag=EtiKNeur.1Ausloeser,tag=EtiKNeur.1Wert,sort=nearest,limit=1] add EtiKNeur.1Selbst
execute at @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schild] run data merge block ~ ~ ~ {front_text:{messages:['{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst,sort=nearest,limit=1]","objective":"PZKNeur.1Wert"},"color":"dark_purple","bold":true}','""','""','""']} }
execute at @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schild] run data modify entity @e[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst,sort=nearest,limit=1] CustomName set from block ~ ~ ~ front_text.messages[0]
tag @e[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst,sort=nearest,limit=1] remove EtiKNeur.1Selbst

kill @s
