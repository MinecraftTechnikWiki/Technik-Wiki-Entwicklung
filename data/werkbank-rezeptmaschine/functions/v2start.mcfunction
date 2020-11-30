
give @a[distance=..25] minecraft:armor_stand{EigRezM.1Alle:true,display:{Lore:['"Platziere den Rüstungsständer"','"auf dem Boden"','"um eine Rezeptmaschine zu bauen"']},EntityTag:{Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Rezeptmaschine"}',Tags:["EtiRezM.1Alle","EtiRezM.1Maschine"]} } 16

execute at @a[distance=..50] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:obsidian",Count:64b,tag:{EigRezM.1Alle:true} },Passengers:[{id:"minecraft:item",Item:{id:"minecraft:purpur_block",Count:64b,tag:{EigRezM.1Alle:true} } },{id:"minecraft:item",Item:{id:"minecraft:nether_star",Count:64b,tag:{EigRezM.1Alle:true} } },{id:"minecraft:item",Item:{id:"minecraft:turtle_egg",Count:64b,tag:{EigRezM.1Alle:true} } }]}

summon minecraft:armor_stand ~ ~-2 ~-5 {Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Rezept"}',Tags:["EtiRezM.1Alle","EtiRezM.1Rezept"]}

execute at @e[type=minecraft:armor_stand,tag=EtiRezM.1Rezept] run setblock ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:turtle_egg",Count:1b},{Slot:1b,id:"minecraft:obsidian",Count:1b},{Slot:2b,id:"minecraft:turtle_egg",Count:1b},{Slot:3b,id:"minecraft:purpur_block",Count:1b},{Slot:4b,id:"minecraft:nether_star",Count:1b},{Slot:5b,id:"minecraft:purpur_block",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:turtle_egg",Count:1b},{Slot:8b,id:"minecraft:obsidian",Count:1b}]}



execute at @a[distance=..50] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiRezM.1Maschine,tag=!EtiRezM.1Spender] unless block ~ ~ ~ minecraft:dropper run setblock ~ ~ ~ minecraft:dropper[facing=up]

tag @e[type=minecraft:armor_stand,tag=EtiRezM.1Maschine,tag=!EtiRezM.1Spender] add EtiRezM.1Spender

execute at @a[distance=..50] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiRezM.1Maschine,tag=EtiRezM.1Spender] unless block ~ ~ ~ minecraft:dropper run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Lore:["Rezeptmaschine.1","Platziere den Rüstungsständer","auf dem Boden","um eine Rezeptmaschine zu bauen"]},EntityTag:{Small:true,Invisible:true,CustomNameVisible:true,NoGravity:true,CustomName:'{"text":"Rezeptmaschine"}',Tags:["EtiRezM.1Alle","EtiRezM.1Maschine"]} } },Motion:[0.0d,0.3d,0.0d]}

execute at @a[distance=..50] as @e[distance=..10,type=minecraft:armor_stand,tag=EtiRezM.1Maschine,tag=EtiRezM.1Spender] at @s unless block ~ ~ ~ minecraft:dropper run kill @s

execute at @a[distance=..50] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiRezM.1Spender] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:turtle_egg",Count:1b},{Slot:1b,id:"minecraft:obsidian",Count:1b},{Slot:2b,id:"minecraft:turtle_egg",Count:1b},{Slot:3b,id:"minecraft:purpur_block",Count:1b},{Slot:4b,id:"minecraft:nether_star",Count:1b},{Slot:5b,id:"minecraft:purpur_block",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:turtle_egg",Count:1b},{Slot:8b,id:"minecraft:obsidian",Count:1b}]} run data merge block ~ ~ ~ {Items:[{Slot:4,id:"minecraft:dragon_egg",Count:1b,tag:{display:{Lore:["Rezeptmaschine.1"]} } }]}



execute at @e[type=minecraft:armor_stand,tag=EtiRezM.1Alle] run setblock ~ ~ ~ minecraft:air replace
tag @e[type=minecraft:item,nbt={Item:{tag:{EigRezM.1Alle:true} } }] add EtiRezM.1Alle

kill @e[tag=EtiRezM.1Alle]

clear @a[distance=..50] #werkbank-rezeptmaschine:v1gegenstaende{EigRezM.1Alle:true}












scoreboard objectives add PZRezM.5Fort dummy ["Rezeptmaschine.5",{"text":"Fortschritt des Brauvorgangs","bold":true}]
give @a[distance=..25] minecraft:armor_stand{EigRezM.5Alle:true,display:{Lore:['"Platziere den Rüstungsständer"','"auf dem Boden"','"um eine Rezeptmaschine zu bauen"']},EntityTag:{Marker:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Rezeptmaschine"}',Tags:["EtiRezM.5Alle","EtiRezM.5Maschine"]} } 16
give @a[distance=..25] minecraft:blaze_powder{EigRezM.5Alle:true} 64
give @a[distance=..25] minecraft:spider_eye{EigRezM.5Alle:true} 64
give @a[distance=..25] minecraft:potion{EigRezM.5Alle:true,Potion:"minecraft:night_vision"} 3



execute at @a[distance=..50] at @e[distance=..10,type=minecraft:armor_stand,tag=EtiRezM.5Maschine,tag=!EtiRezM.5RezeptTrankBlindheit] unless block ~ ~ ~ minecraft:brewing_stand run setblock ~ ~ ~ minecraft:brewing_stand

execute as @e[type=minecraft:armor_stand,tag=EtiRezM.5Maschine,tag=!EtiRezM.5RezeptTrankBlindheit] at @s unless block ~ ~ ~ minecraft:brewing_stand{Fuel:0b} if block ~ ~ ~ minecraft:brewing_stand{Items:[{id:"minecraft:potion",tag:{Potion:"minecraft:night_vision"}},{Slot:3b,id:"minecraft:spider_eye",Count:1b}]} run scoreboard players add @s PZRezM.5Fort 400


execute as @e[type=minecraft:armor_stand,tag=EtiRezM.5Maschine,tag=!EtiRezM.5RezeptTrankBlindheit] at @s unless block ~ ~ ~ minecraft:brewing_stand{Fuel:0b} if block ~ ~ ~ minecraft:brewing_stand{Items:[{id:"minecraft:potion",tag:{Potion:"minecraft:night_vision"}},{Slot:3b,id:"minecraft:spider_eye",Count:1b}]} run tag @s add EtiRezM.5RezeptTrankBlindheit


scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiRezM.5RezeptTrankBlindheit,scores={PZRezM.5Fort=0..}] PZRezM.5Fort 1
execute as @e[type=minecraft:armor_stand,tag=EtiRezM.5RezeptTrankBlindheit] at @s if block ~ ~ ~ minecraft:brewing_stand store result block ~ ~ ~ BrewTime short 1 run scoreboard players get @s PZRezM.5Fort
execute at @e[type=minecraft:armor_stand,tag=EtiRezM.5RezeptTrankBlindheit,scores={PZRezM.5Fort=0}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:night_vision"} } ] } run replaceitem block ~ ~ ~ container.0 minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:800}],display:{Name:'{"text":"Trank der Blindheit","italic":false}'} }
execute at @e[type=minecraft:armor_stand,tag=EtiRezM.5RezeptTrankBlindheit,scores={PZRezM.5Fort=0}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:night_vision"} } ] } run replaceitem block ~ ~ ~ container.1 minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:800}],display:{Name:'{"text":"Trank der Blindheit","italic":false}'} }
execute at @e[type=minecraft:armor_stand,tag=EtiRezM.5RezeptTrankBlindheit,scores={PZRezM.5Fort=0}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:2b,id:"minecraft:potion",tag:{Potion:"minecraft:night_vision"} } ] } run replaceitem block ~ ~ ~ container.2 minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:800}],display:{Name:'{"text":"Trank der Blindheit","italic":false}'} }
execute at @e[type=minecraft:armor_stand,tag=EtiRezM.5RezeptTrankBlindheit,scores={PZRezM.5Fort=0}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:spider_eye"} ] } run replaceitem block ~ ~ ~ container.3 minecraft:air
tag @e[type=minecraft:armor_stand,tag=EtiRezM.5RezeptTrankBlindheit,scores={PZRezM.5Fort=0}] remove EtiRezM.5RezeptTrankBlindheit
