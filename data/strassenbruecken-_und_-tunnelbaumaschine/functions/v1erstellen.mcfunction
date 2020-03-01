
give @p minecraft:fishing_rod{strassenbruecken-_und_-tunnelbaumaschine:"v1gegenstand",Enchantments:[{id:-1}],display:{Name:'{"text":"Optionen"}',Lore:['"Wähle die Angel aus"','"während du in der Lore sitzt,"','"um durch deine Blickrichtung die Richtung"','"der Straßenbaumaschine zu bestimmen."','"Ebenfalls erhält man die Nachricht-Optionen"','"und durch Werfen des Angelköders auf"','"die Straßenbaumaschine wird diese gedroppt."'] } }

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Straßenbrücken- und -tunnelbaumaschine","color":"gold","bold":true}',Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Baumaschine"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] },Passengers:[{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Zweierspur"],Rotation:[90.0f,0.0f] },{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Geradeaus","color":"aqua","bold":true}',Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Neigung"]},{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Raster"]},{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Tempomat"] } ] }

execute as @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Baumaschine] at @s run teleport @s ~ ~ ~ facing entity @p feet

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Mitte","EtiStrBTBM.1Strassenbett"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Rechts1","EtiStrBTBM.1Strassenbett"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Links1","EtiStrBTBM.1Strassenbett"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Rechts2","EtiStrBTBM.1Strassenrand"],ArmorItems:[{},{},{},{id:"minecraft:quartz_block",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Links2","EtiStrBTBM.1Strassenrand"],ArmorItems:[{},{},{},{id:"minecraft:quartz_block",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Rechts3","EtiStrBTBM.1Buergersteig"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Rechts4","EtiStrBTBM.1Buergersteig"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Links3","EtiStrBTBM.1Buergersteig"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Links4","EtiStrBTBM.1Buergersteig"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_slab",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invulnerable:true,Invisible:true,NoGravity:true,Marker:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Halter"],Passengers:[{id:"minecraft:minecart",NoGravity:true,Invulnerable:true,Tags:["EtiStrBTBM.1Alle","EtiStrBTBM.1Entfernen","EtiStrBTBM.1Sitz"]}]}

kill @s
