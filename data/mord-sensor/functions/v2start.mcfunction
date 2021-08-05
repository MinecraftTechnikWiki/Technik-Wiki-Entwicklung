
scoreboard objectives add PZMordS.2Mord minecraft.custom:minecraft.mob_kills ["Mord-Sensor.2: ",{"text":"Besiegte Kreaturen","bold":true}]
scoreboard objectives add PZMordS.2MordDie minecraft.killed:minecraft.vindicator ["Mord-Sensor.2: ",{"text":"Ermordete Diener","bold":true}]
scoreboard objectives add PZMordS.2MordPig minecraft.killed:minecraft.piglin ["Mord-Sensor.2: ",{"text":"Ermordete Piglin","bold":true}]
scoreboard objectives add PZMordS.2TodDie minecraft.killed_by:minecraft.vindicator ["Mord-Sensor.2: ",{"text":"Ermordet durch Diener","bold":true}]
scoreboard objectives add PZMordS.2TodPig minecraft.killed_by:minecraft.piglin ["Mord-Sensor.2: ",{"text":"Ermordet durch Piglin","bold":true}]

scoreboard players set @a[distance=..15] PZMordS.2Mord 0
scoreboard players set @a[distance=..15] PZMordS.2MordDie 0
scoreboard players set @a[distance=..15] PZMordS.2MordPig 0
scoreboard players set @a[distance=..15] PZMordS.2TodDie 0
scoreboard players set @a[distance=..15] PZMordS.2TodPig 0

spawnpoint @a[distance=..15] ~5 ~ ~ 0

gamemode survival @a[distance=..15]

give @a[distance=..15] minecraft:stick{EigMordS.2Alle:true,EigMordS.2Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Mord-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Morde"','"zu erfassen."'] } }

give @a[distance=..15] minecraft:iron_sword{EigMordS.2Alle:true,display:{Lore:['"Besiege mit dem Schwert"','"die Dorfbewohner um"','"deine Punktestände zu erhöhen"']},Enchantments:[{id:"minecraft:sharpness",lvl:5s}]} 1

give @a[distance=..15] minecraft:vindicator_spawn_egg{EigMordS.2Alle:true,display:{Lore:['"Eine Kreatur zum"','"besiegen"']},EntityTag:{Tags:["EtiMordS.2Alle"],DeathLootTable:"minecraft:empty"} } 16
give @a[distance=..15] minecraft:piglin_spawn_egg{EigMordS.2Alle:true,display:{Lore:['"Eine Kreatur zum"','"besiegen"']},EntityTag:{IsImmuneToZombification:true,Tags:["EtiMordS.2Alle"],DeathLootTable:"minecraft:empty"} } 16

execute at @a[distance=..15] run summon minecraft:falling_block ~ ~ ~-2 {Tags:["EtiMordS.2Alle","EtiMordS.2Mitte"],Passengers:[{id:"minecraft:item",Age:6000s,Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:vindicator",Tags:["EtiMordS.2Alle"]}]},{id:"minecraft:item",Age:6000s,Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiMordS.2Alle"]}]},{id:"minecraft:item",Age:6000s,Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:vindicator",Tags:["EtiMordS.2Alle"]}]},{id:"minecraft:item",Age:6000s,Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiMordS.2Alle"]}]},{id:"minecraft:item",Age:6000s,Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"],Item:{id:"minecraft:chest",Count:1b},Passengers:[{id:"minecraft:vindicator",Tags:["EtiMordS.2Alle"]}]}]}

execute at @e[type=minecraft:falling_block,tag=EtiMordS.2Mitte] run spreadplayers ~ ~ 2 10 false @e[distance=..2,tag=EtiMordS.2Objekt,sort=nearest,limit=5]
