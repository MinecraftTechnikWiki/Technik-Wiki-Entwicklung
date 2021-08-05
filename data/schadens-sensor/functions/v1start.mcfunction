
scoreboard objectives add PZSchadS.1Ver minecraft.custom:minecraft.damage_dealt ["Schadens-Sensor.1: ",{"text":"Schaden verursacht","bold":true}]
scoreboard objectives add PZSchadS.1Erl minecraft.custom:minecraft.damage_taken ["Schadens-Sensor.1: ",{"text":"Schaden erlitten","bold":true}]

spawnpoint @a[distance=..15] ~5 ~ ~ 0

gamemode survival @a[distance=..15]

give @a[distance=..15] minecraft:stick{EigSchadS.1Alle:true,EigSchadS.1Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Mord-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um den verursachten"','"und den erlittenen"','"Schaden anzeigen zu lassen."'] } }

give @a[distance=..15] minecraft:iron_sword{EigSchadS.1Alle:true,display:{Lore:['"Schade mit dem Schwert"','"den Kreaturen um"','"deinen anzeigen zu lassen."']},Enchantments:[{id:"minecraft:sharpness",lvl:5s}]} 1

give @a[distance=..15] minecraft:piglin_spawn_egg{EigSchadS.1Alle:true,display:{Lore:['"Eine Kreatur zum"','"schädigen"'] },EntityTag:{IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle"],DeathLootTable:"minecraft:empty"} } 16

execute at @a[distance=..15] run summon minecraft:falling_block ~ ~ ~-2 {Tags:["EtiSchadS.1Alle","EtiSchadS.1Mitte"],Passengers:[{id:"minecraft:item",Age:6000s,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle"]}]},{id:"minecraft:item",Age:6000s,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle"]}]},{id:"minecraft:item",Age:6000s,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle"]}]},{id:"minecraft:item",Age:6000s,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle"]}]},{id:"minecraft:item",Age:6000s,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle"]}]}]}

execute at @e[type=minecraft:falling_block,tag=EtiSchadS.1Mitte] run spreadplayers ~ ~ 2 10 false @e[distance=..2,tag=EtiSchadS.1Objekt,sort=nearest,limit=5]
