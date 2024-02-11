
scoreboard objectives add PZSchadS.1Ver minecraft.custom:minecraft.damage_dealt ["Schadens-Sensor.1: ",{"text":"Schaden verursacht","bold":true}]
scoreboard objectives add PZSchadS.1Erl minecraft.custom:minecraft.damage_taken ["Schadens-Sensor.1: ",{"text":"Schaden erlitten","bold":true}]

spawnpoint @a[distance=..15] ~5 ~ ~ 0

gamemode survival @a[distance=..15]

give @a[distance=..15] minecraft:stick{EigSchadS.1Alle:true,EigSchadS.1Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Schadens-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um den verursachten"','"und den erlittenen"','"Schaden anzeigen zu lassen."'] } }

give @a[distance=..15] minecraft:iron_sword{EigSchadS.1Alle:true,display:{Lore:['"Füge mit dem Schwert"','"den Kreaturen Schaden zu,"','"um diesen erfassen zu lassen."']},Enchantments:[{id:"minecraft:sharpness",lvl:5s}]} 1

give @a[distance=..15] minecraft:piglin_spawn_egg{EigSchadS.1Alle:true,display:{Lore:['"Eine Kreatur zum"','"Schaden einzustecken"','"und auszuteilen"'] },EntityTag:{IsBaby:false,IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle"],HandItems:[{},{}],ArmorItems:[{},{},{},{}],DeathLootTable:"minecraft:empty"} } 16

execute at @a[distance=..15] run summon minecraft:item ~-10 ~ ~ {Item:{id:"minecraft:egg",Count:1b},Age:6000s,Tags:["EtiSchadS.1Alle","EtiSchadS.1Mitte"],Passengers:[{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"]},{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"]},{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"]},{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"]},{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"]}]}

execute at @e[type=minecraft:item,tag=EtiSchadS.1Mitte] run spreadplayers ~ ~ 2 10 false @e[distance=..2,tag=EtiSchadS.1Objekt,sort=nearest,limit=5]
