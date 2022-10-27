# Der nächst gelegene Spieler erhält eine Angel um die Baumaschine über den Chat steuern zu können.
give @p[distance=..5,gamemode=!spectator] minecraft:fishing_rod{EigStraBM.1Alle:true,EigStraBM.1Steuer:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Optionen","bold":true}',Lore:['"Wähle die Angel aus"','"während du in der Lore sitzt,"','"um durch deine Blickrichtung die Richtung"','"der Straßenbaumaschine zu bestimmen."','"Ebenfalls erhält man die Nachricht-Optionen"','"und durch Werfen des Angelköders auf"','"die Straßenbaumaschine wird diese gedroppt."'] } }

# Die Baumaschine in Form eines Markierers wird erzeugt. Der Markierer besitzt für alle Einstellungs-Werte bestimmte Eigenschaften.
summon minecraft:marker ~ ~ ~ {Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Baumaschine"],data:{EigStraBM.1Zweierspur:'{"bold":true,"color":"red","text":"falsch"}',EigStraBM.1Neigung:'{"bold":true,"color":"aqua","text":"Geradeaus"}',EigStraBM.1Raster:'{"bold":true,"color":"green","text":"wahr"}',EigStraBM.1Tempomat:'{"bold":true,"color":"red","text":"falsch"}'} }

# Damit die Baumaschine beim Erzeugen immer in die Richtung schaut in die der Spieler schaut, wird sie nach dem platzierten Rüstungsständer ausgerichtet, welcher aber in die entgegengesetzte Richtung schaut.
teleport @e[type=minecraft:marker,tag=EtiStraBM.1Baumaschine,sort=nearest,limit=1] ~ ~ ~ ~180 ~

# Die Lore, in die der Spieler sich setzen kann, wird auf einem unsichtbaren Rüstungsständer erzeugt.
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:true,Invisible:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Halter"],Passengers:[{id:"minecraft:minecart",NoGravity:true,Invulnerable:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Sitz"] } ] }

# Alle Blöcke zum Bau der Spuren werden als sichtbare kleine Blöcke per unsichtbaren Rüstungsständer erzeugt.
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Mitte","EtiStraBM.1SpurBett"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Rechts1","EtiStraBM.1SpurBett"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Links1","EtiStraBM.1SpurBett"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Rechts2","EtiStraBM.1Spur","EtiStraBM.1Unterbau","EtiStraBM.1SpurRand"],ArmorItems:[{},{},{},{id:"minecraft:quartz_block",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Links2","EtiStraBM.1Spur","EtiStraBM.1Unterbau","EtiStraBM.1SpurRand"],ArmorItems:[{},{},{},{id:"minecraft:quartz_block",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Rechts3","EtiStraBM.1Spur","EtiStraBM.1Unterbau","EtiStraBM.1GehSteig"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Rechts4","EtiStraBM.1Spur","EtiStraBM.1GehSteig"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Links3","EtiStraBM.1Spur","EtiStraBM.1Unterbau","EtiStraBM.1GehSteig"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraBM.1Alle","EtiStraBM.1Entfernen","EtiStraBM.1Links4","EtiStraBM.1Spur","EtiStraBM.1GehSteig"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_slab",Count:1b}]}

# Der eigentliche Rüstungsständer zum erzeugen der Baumaschine wird entfernt.
kill @s
