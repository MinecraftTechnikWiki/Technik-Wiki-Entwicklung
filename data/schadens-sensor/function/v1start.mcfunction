
scoreboard objectives add PZSchadS.1Ver minecraft.custom:minecraft.damage_dealt ["Schadens-Sensor.1: ",{text:"Schaden verursacht",bold:true}]
scoreboard objectives add PZSchadS.1Erl minecraft.custom:minecraft.damage_taken ["Schadens-Sensor.1: ",{text:"Schaden erlitten",bold:true}]

spawnpoint @a[distance=..15] ~5 ~ ~ 0 ~

gamemode survival @a[distance=..15]

give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um den verursachten","und den erlittenen","Schaden anzeigen zu lassen."],minecraft:custom_name={text:"Schadens-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigSchadS.1Alle:true,EigSchadS.1Sensor:true},minecraft:enchantment_glint_override=true]

give @a[distance=..15] minecraft:iron_sword[minecraft:lore=["Füge mit dem Schwert","den Kreaturen Schaden zu,","um diesen erfassen zu lassen."],minecraft:enchantments={"minecraft:sharpness":5},minecraft:custom_data={EigSchadS.1Alle:true}] 1

give @a[distance=..15] minecraft:piglin_spawn_egg[minecraft:entity_data={equipment:{},DeathLootTable:"minecraft:empty",IsBaby:false,IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle"],id:"minecraft:piglin"},minecraft:lore=["Eine Kreatur zum","Schaden einzustecken","und auszuteilen"],minecraft:custom_data={EigSchadS.1Alle:true}] 16

execute at @a[distance=..15] run summon minecraft:item ~-10 ~ ~ {Age:6000s,Item:{count:1,id:"minecraft:egg"},Passengers:[{IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],id:"minecraft:piglin"},{IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],id:"minecraft:piglin"},{IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],id:"minecraft:piglin"},{IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],id:"minecraft:piglin"},{IsImmuneToZombification:true,Tags:["EtiSchadS.1Alle","EtiSchadS.1Objekt"],id:"minecraft:piglin"}],Tags:["EtiSchadS.1Alle","EtiSchadS.1Mitte"]}

execute at @e[type=minecraft:item,tag=EtiSchadS.1Mitte] run spreadplayers ~ ~ 2 10 false @e[distance=..2,tag=EtiSchadS.1Objekt,sort=nearest,limit=5]
