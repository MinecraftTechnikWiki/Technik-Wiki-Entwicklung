
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute store success score @s PZSchwB.p2Ausl if block ~ ~-1 ~ minecraft:chiseled_quartz_block if block ^1 ^-1 ^ minecraft:quartz_block if block ^-1 ^-1 ^ minecraft:quartz_block run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,CustomName:'{"bold":true,"color":"red","text":"falsch"}',Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Hyperloop","EtiSchwB.p2Fahren"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Rotation"] } ] }

execute if entity @s[scores={PZSchwB.p2Ausl=1}] run teleport @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop,sort=nearest,limit=1] ~ ~ ~ ~ ~

execute if entity @s[scores={PZSchwB.p2Ausl=1}] as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop,sort=nearest,limit=1] at @s run function schwebebahn:vp2hyperloop

execute if entity @s[scores={PZSchwB.p2Ausl=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Bahnsteig","color":"red","bold":true}',Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Halter","EtiSchwB.p2Ansicht"],Passengers:[{id:"minecraft:minecart",Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Sitz"]}]}

execute if entity @s[scores={PZSchwB.p2Ausl=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Passagier1"],Passengers:[{id:"minecraft:boat",Tags:["EtiSchwB.p2Alle"] } ] }
execute if entity @s[scores={PZSchwB.p2Ausl=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Passagier2"],Passengers:[{id:"minecraft:boat",Tags:["EtiSchwB.p2Alle"] } ] }
execute if entity @s[scores={PZSchwB.p2Ausl=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Passagier3"],Passengers:[{id:"minecraft:boat",Tags:["EtiSchwB.p2Alle"] } ] }
execute if entity @s[scores={PZSchwB.p2Ausl=1}] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Passagier4"],Passengers:[{id:"minecraft:boat",Tags:["EtiSchwB.p2Alle"] } ] }

execute if entity @s[scores={PZSchwB.p2Ausl=1}] run teleport @a[distance=..5] ^5 ^1 ^

execute unless entity @s[scores={PZSchwB.p2Ausl=1}] run tellraw @a[distance=..5] ["Schwebebahn.erweitert.2: ",{"text":"Es wurde unter dem Rüstungsständer für die Hyperloop keine Hyperloop-Strecke gefunden!","color":"red","bold":true}]

kill @s
