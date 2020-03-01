
execute at @a[distance=..50] run loot spawn ~ -2 ~ mine ~ ~-1 ~

execute at @a[distance=..50] positioned ~ -2 ~ run data merge entity @e[distance=..1,type=minecraft:item,sort=nearest,limit=1] {NoGravity:true,Tags:["EtiBlockS.3Alle","EtiBlockS.3Block"]}

execute at @a[distance=..50] run summon minecraft:item ~ -3 ~ {NoGravity:true,Item:{id:"minecraft:stone",Count:1b,tag:{block-sensor:"v3block",gleich:false}},Tags:["EtiBlockS.3Alle","EtiBlockS.3Vergleich"]}

execute as @a[distance=..50] at @s positioned ~ -2 ~ run data modify entity @e[distance=..1,type=minecraft:item,tag=EtiBlockS.3Vergleich,sort=nearest,limit=1] Item.id merge from entity @s SelectedItem.id

execute at @a[distance=..50] positioned ~ -2 ~ as @e[distance=..1,type=minecraft:item,tag=EtiBlockS.3Vergleich,sort=nearest,limit=1] store success entity @s Item.tag.gleich byte 1 run data modify entity @s Item.id merge from entity @e[type=minecraft:item,tag=EtiBlockS.3Block,sort=nearest,limit=1] Item.id

execute as @a[distance=..50] at @s positioned ~ -2 ~ if entity @e[distance=..1,type=minecraft:item,tag=EtiBlockS.3Vergleich,nbt={Item:{tag:{gleich:true}}},sort=nearest,limit=1] run tellraw @s ["Block-Sensor.3: ",{"text":"gleicher Block","color":"green","bold":true}]

execute as @a[distance=..50] at @s positioned ~ -2 ~ if entity @e[distance=..1,type=minecraft:item,tag=EtiBlockS.3Vergleich,nbt={Item:{tag:{gleich:false}}},sort=nearest,limit=1] run tellraw @s ["Block-Sensor.3: ",{"text":"nicht gleicher Block","color":"red","bold":true}]

kill @e[type=minecraft:item,tag=EtiBlockS.3Alle]

#summon minecraft:item ~5 ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["compare"]}
#data modify entity @e[tag=compare,limit=1] Item.tag.compare set from entity @e[sort=nearest,limit=1,type=pig]
#data modify entity @e[tag=compare,limit=1] Item.tag.compareB set from entity @e[sort=nearest,limit=1,type=pig]
#data modify entity @e[tag=compare,limit=1] Item.tag.compare set from entity @e[tag=compare,limit=1] Item.tag.compareB
