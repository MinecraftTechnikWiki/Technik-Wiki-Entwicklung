
execute at @a[tag=EtiHaRezM.1BuchDesWissens,tag=!EtiHaRezM.1RezeptDreizack,nbt={recipeBook:{recipes:["werkbank-rezeptmaschine:v1dreizack"] } }] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:quartz",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:iron_ingot",Count:2b} },{id:"minecraft:item",Item:{id:"minecraft:prismarine_shard",Count:2b} } ] }

tag @a[tag=EtiHaRezM.1BuchDesWissens,tag=!EtiHaRezM.1RezeptDreizack,nbt={recipeBook:{recipes:["werkbank-rezeptmaschine:v1dreizack"] } }] add EtiHaRezM.1RezeptDreizack

execute at @a[tag=EtiHaRezM.1BuchDesWissens,tag=!EtiHaRezM.1RezeptElytren,nbt={recipeBook:{recipes:["werkbank-rezeptmaschine:v1elytren"] } }] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:phantom_membrane",Count:4b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:string",Count:2b} },{id:"minecraft:item",Item:{id:"minecraft:feather",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:iron_nugget",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:leather",Count:1b} } ] }

tag @a[tag=EtiHaRezM.1BuchDesWissens,tag=!EtiHaRezM.1RezeptElytren,nbt={recipeBook:{recipes:["werkbank-rezeptmaschine:v1elytren"] } }] add EtiHaRezM.1RezeptElytren

execute at @a[tag=EtiHaRezM.1BuchDesWissens,tag=!EtiHaRezM.1RezeptHerzDesMeeres,nbt={recipeBook:{recipes:["werkbank-rezeptmaschine:v1herz_des_meeres"] } }] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:turtle_egg",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:nautilus_shell",Count:4b} },{id:"minecraft:item",Item:{id:"minecraft:prismarine_crystals",Count:4b} } ] }

tag @a[tag=EtiHaRezM.1BuchDesWissens,tag=!EtiHaRezM.1RezeptHerzDesMeeres,nbt={recipeBook:{recipes:["werkbank-rezeptmaschine:v1herz_des_meeres"] } }] add EtiHaRezM.1RezeptHerzDesMeeres

execute at @a[tag=EtiHaRezM.1BuchDesWissens,tag=!EtiHaRezM.1RezeptSattel,nbt={recipeBook:{recipes:["werkbank-rezeptmaschine:v1sattel"] } }] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:5b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:string",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:tripwire_hook",Count:1b} } ] }

tag @a[tag=EtiHaRezM.1BuchDesWissens,tag=!EtiHaRezM.1RezeptSattel,nbt={recipeBook:{recipes:["werkbank-rezeptmaschine:v1sattel"] } }] add EtiHaRezM.1RezeptSattel

tag @a[tag=EtiHaRezM.1BuchDesWissens] remove EtiHaRezM.1BuchDesWissens
tag @a[distance=..25,nbt={SelectedItem:{id:"minecraft:knowledge_book"} }] add EtiHaRezM.1BuchDesWissens
