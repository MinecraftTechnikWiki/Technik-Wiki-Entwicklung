
give @p minecraft:fishing_rod{kanalbaumaschine:"v1gegenstand",Enchantments:[{id:-1}],display:{Name:'{"text":"Optionen"}',Lore:['"Wähle die Angel aus"','"während du in der Lore sitzt,"','"um durch deine Blickrichtung die Richtung"','"der Kanalbaumaschine zu bestimmen."','"Ebenfalls erhält man die Nachricht-Optionen"','"und durch Werfen des Angelköders auf"','"die Kanalbaumaschine wird diese gedroppt."'] } }

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Kanalbaumaschine","color":"gold","bold":true}',Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Baumaschine"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] },Passengers:[{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Zweierspur"],Rotation:[90.0f,0.0f] },{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Geradeaus","color":"aqua","bold":true}',Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Neigung"]},{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Raster"]},{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Tempomat"] } ] }

execute as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] at @s run teleport @s ~ ~ ~ facing entity @p feet

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Wasser"],ArmorItems:[{},{},{},{id:"minecraft:water_bucket",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Mitte","EtiKanaBM.1Kanalbett"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Rechts1","EtiKanaBM.1Kanalbett"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Links1","EtiKanaBM.1Kanalbett"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Rechts2","EtiKanaBM.1Kanalufer"],ArmorItems:[{},{},{},{id:"minecraft:quartz_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Rechts3","EtiKanaBM.1Kanalufer"],ArmorItems:[{},{},{},{id:"minecraft:quartz_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Links2","EtiKanaBM.1Kanalufer"],ArmorItems:[{},{},{},{id:"minecraft:quartz_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Links3","EtiKanaBM.1Kanalufer"],ArmorItems:[{},{},{},{id:"minecraft:quartz_slab",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Rechts4","EtiKanaBM.1Kanalrand"],ArmorItems:[{},{},{},{id:"minecraft:polished_andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Links4","EtiKanaBM.1Kanalrand"],ArmorItems:[{},{},{},{id:"minecraft:polished_andesite",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invulnerable:true,Invisible:true,NoGravity:true,Marker:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Halter"],Passengers:[{id:"minecraft:minecart",NoGravity:true,Invulnerable:true,Tags:["EtiKanaBM.1Alle","EtiKanaBM.1Entfernen","EtiKanaBM.1Sitz"]}]}

kill @s
