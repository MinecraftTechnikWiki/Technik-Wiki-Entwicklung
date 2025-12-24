
scoreboard objectives add PZMordS.2Mord minecraft.custom:minecraft.mob_kills ["Mord-Sensor.2: ",{text:"Besiegte Kreaturen",bold:true}]
scoreboard objectives add PZMordS.2MordDie minecraft.killed:minecraft.vindicator ["Mord-Sensor.2: ",{text:"Ermordete Diener",bold:true}]
scoreboard objectives add PZMordS.2MordPig minecraft.killed:minecraft.piglin ["Mord-Sensor.2: ",{text:"Ermordete Piglin",bold:true}]
scoreboard objectives add PZMordS.2TodDie minecraft.killed_by:minecraft.vindicator ["Mord-Sensor.2: ",{text:"Ermordet durch Diener",bold:true}]
scoreboard objectives add PZMordS.2TodPig minecraft.killed_by:minecraft.piglin ["Mord-Sensor.2: ",{text:"Ermordet durch Piglin",bold:true}]

scoreboard players set @a[distance=..15] PZMordS.2Mord 0
scoreboard players set @a[distance=..15] PZMordS.2MordDie 0
scoreboard players set @a[distance=..15] PZMordS.2MordPig 0
scoreboard players set @a[distance=..15] PZMordS.2TodDie 0
scoreboard players set @a[distance=..15] PZMordS.2TodPig 0

spawnpoint @a[distance=..15] ~5 ~ ~ 0 ~

gamemode survival @a[distance=..15]

give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um die Morde","zu erfassen."],minecraft:custom_name={text:"Mord-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigMordS.2Alle:true,EigMordS.2Sensor:true},minecraft:enchantment_glint_override=true]

give @a[distance=..15] minecraft:iron_sword[minecraft:lore=["Besiege mit dem Schwert","die Dorfbewohner um","deine Punktestände zu erhöhen"],minecraft:enchantments={"minecraft:sharpness":5},minecraft:custom_data={EigMordS.2Alle:true}] 1

give @a[distance=..15] minecraft:vindicator_spawn_egg[minecraft:entity_data={DeathLootTable:"minecraft:empty",Tags:["EtiMordS.2Alle"],id:"minecraft:vindicator"},minecraft:lore=["Eine Kreatur zum","besiegen"],minecraft:custom_data={EigMordS.2Alle:true}] 16

give @a[distance=..15] minecraft:piglin_spawn_egg[minecraft:entity_data={DeathLootTable:"minecraft:empty",IsImmuneToZombification:true,Tags:["EtiMordS.2Alle"],id:"minecraft:piglin"},minecraft:lore=["Eine Kreatur zum","besiegen"],minecraft:custom_data={EigMordS.2Alle:true}] 16

execute at @a[distance=..15] run summon minecraft:item ~-10 ~ ~ {Item:{id:"minecraft:egg",count:1},Age:6000s,Tags:["EtiMordS.2Alle","EtiMordS.2Mitte"],Passengers:[{id:"minecraft:vindicator",Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"]},{id:"minecraft:vindicator",Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"]},{id:"minecraft:vindicator",Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"]},{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"]},{id:"minecraft:piglin",IsImmuneToZombification:true,Tags:["EtiMordS.2Alle","EtiMordS.2Objekt"]}]}

execute at @e[type=minecraft:item,tag=EtiMordS.2Mitte] run spreadplayers ~ ~ 2 10 false @e[distance=..2,tag=EtiMordS.2Objekt,sort=nearest,limit=5]
