
execute as @e[distance=..3,type=minecraft:item,tag=EtiStraB.1Rezept] run data remove entity @s Tags

tag @s add EtiStraB.1Rezept

data merge entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:hopper",Count:1b} },sort=nearest,limit=1] {Tags:["EtiStraB.1Rezept","EtiStraB.1Trichter"]}
data merge entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:observer",Count:1b} },sort=nearest,limit=1] {Tags:["EtiStraB.1Rezept","EtiStraB.1Beobachter"]}
data merge entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:dispenser",Count:1b} },sort=nearest,limit=1] {Tags:["EtiStraB.1Rezept","EtiStraB.1Werfer"]}
data merge entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b} },sort=nearest,limit=1] {Tags:["EtiStraB.1Rezept","EtiStraB.1Eisenbarren"]}
data merge entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:saddle",Count:1b} },sort=nearest,limit=1] {Tags:["EtiStraB.1Rezept","EtiStraB.1Sattel"]}

execute if entity @e[distance=..3,type=minecraft:item,tag=EtiStraB.1Trichter] if entity @e[distance=..3,type=minecraft:item,tag=EtiStraB.1Beobachter] if entity @e[distance=..3,type=minecraft:item,tag=EtiStraB.1Werfer] if entity @e[distance=..3,type=minecraft:item,tag=EtiStraB.1Eisenbarren] if entity @e[distance=..3,type=minecraft:item,tag=EtiStraB.1Sattel] run tag @s add EtiStraB.1RezeptKomplett

execute if entity @s[tag=EtiStraB.1RezeptKomplett] run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:wooden_sword",Count:1b,tag:{strassenbaumaschine:"v1gegenstand",Enchantments:[{}],display:{Name:'{"text":"Fernbedienung","color":"gold"}',Lore:['"Wähle die Fernbedienung aus"','"um die >Strassenbaumaschine<"','"auszurichten und drücke Shift"','"um sie mit Kohle zu versorgen"','"oder werfe die Fernbedienung auf"','"sie um sie wieder aufheben zu können"']} } } }

execute if entity @s[tag=EtiStraB.1RezeptKomplett] run function strassenbaumaschine:v1herstellen

execute if entity @s[tag=EtiStraB.1RezeptKomplett] run kill @e[distance=..3,type=minecraft:item,tag=EtiStraB.1Rezept,sort=nearest,limit=6]
