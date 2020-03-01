
tag @e[distance=..1,type=minecraft:item,tag=EtiGleisB.2WerkbankRezept,nbt=!{Item:{Count:1b} }] remove EtiGleisB.2WerkbankRezept

tag @s[tag=!EtiGleisB.2WerkbankRezept] add EtiGleisB.2WerkbankRezept

data merge entity @e[distance=..1,type=minecraft:item,tag=!EtiGleisB.2WerkbankRezept,nbt={Item:{id:"minecraft:sticky_piston",Count:1b} },sort=nearest,limit=1] {Tags:["EtiGleisB.2WerkbankRezept","EtiGleisB.2RezeptKolben"]}
data merge entity @e[distance=..1,type=minecraft:item,tag=!EtiGleisB.2WerkbankRezept,nbt={Item:{id:"minecraft:dispenser",Count:1b} },sort=nearest,limit=1] {Tags:["EtiGleisB.2WerkbankRezept","EtiGleisB.2RezeptWerfer"]}
data merge entity @e[distance=..1,type=minecraft:item,tag=!EtiGleisB.2WerkbankRezept,nbt={Item:{id:"minecraft:redstone_block",Count:1b} },sort=nearest,limit=1] {Tags:["EtiGleisB.2WerkbankRezept","EtiGleisB.2RezeptRedstoneBlock"]}
data merge entity @e[distance=..1,type=minecraft:item,tag=!EtiGleisB.2WerkbankRezept,nbt={Item:{id:"minecraft:gold_block",Count:1b} },sort=nearest,limit=1] {Tags:["EtiGleisB.2WerkbankRezept","EtiGleisB.2RezeptGoldblock"]}
data merge entity @e[distance=..1,type=minecraft:item,tag=!EtiGleisB.2WerkbankRezept,nbt={Item:{id:"minecraft:diamond_pickaxe",tag:{Enchantments:[{id:"minecraft:mending"} ] } } },sort=nearest,limit=1] {Tags:["EtiGleisB.2WerkbankRezept","EtiGleisB.2RezeptSpitzhacke"]}

execute if entity @e[distance=..1,tag=EtiGleisB.2RezeptKolben] if entity @e[distance=..1,tag=EtiGleisB.2RezeptWerfer] if entity @e[distance=..1,tag=EtiGleisB.2RezeptRedstoneBlock] if entity @e[distance=..1,tag=EtiGleisB.2RezeptGoldblock] if entity @e[distance=..1,tag=EtiGleisB.2RezeptSpitzhacke] run tag @s add EtiGleisB.2RezeptKomplett

execute if entity @s[tag=EtiGleisB.2RezeptKomplett] run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:armor_stand",Count:1b,tag:{gleisbaumaschine:"v2gegenstand",display:{Name:'{"text":"Gleisbaumaschine","color":"gold"}',Lore:['"Platziere die Gleisbaumaschine"','"um sie zu starten"']},EntityTag:{Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Gleisbaumaschine","color":"gold"}',Tags:["EtiGleisB.2Alle","EtiGleisB.2Baumaschine","EtiGleisB.2Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } } }

execute if entity @e[tag=EtiGleisB.2RezeptKomplett] run particle minecraft:witch ~ ~1 ~ 0 0 0 0.1 1 force @a[distance=..5]
execute if entity @s[tag=EtiGleisB.2RezeptKomplett] run kill @e[distance=..1,tag=EtiGleisB.2WerkbankRezept,sort=nearest,limit=6]
