
data get entity @s Health

data get entity @s HurtTime
data get entity @s HurtByTimestamp

attribute @s minecraft:generic.max_health get

scoreboard objectives add PZSchadS.1Sch minecraft.custom:minecraft.damage_dealt ["Schadens-Sensor.2: ",{"text":"Schaden ausgeteilt","bold":true}]
scoreboard objectives add PZSchadS.1Sch minecraft.custom:minecraft.damage_taken ["Schadens-Sensor.2: ",{"text":"Schaden erlitten","bold":true}]

summon minecraft:falling_block ~ ~10 ~ {Time:0,Tags:["EtiSchadS.2Alle"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchadS.2Alle","EtiSchadS.2Zone","EtiSchadS.2Kugel"],ArmorItems:[{},{},{},{id:"minecraft:barrier",count:1} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchadS.2Alle","EtiSchadS.2Zone","EtiSchadS.2Kugel"],ArmorItems:[{},{},{},{id:"minecraft:barrier",count:1} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchadS.2Alle","EtiSchadS.2Zone","EtiSchadS.2Kubus"],ArmorItems:[{},{},{},{id:"minecraft:barrier",count:1} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchadS.2Alle","EtiSchadS.2Zone","EtiSchadS.2Kubus"],ArmorItems:[{},{},{},{id:"minecraft:barrier",count:1} ] } ] }
execute at @e[type=minecraft:falling_block,tag=EtiSchadS.2Alle] run spreadplayers ~ ~ 20 25 false @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone]

execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] run summon minecraft:falling_block ~ ~ ~ {Time:0,Tags:["EtiSchadS.2Alle"],Passengers:[{id:"minecraft:villager",Tags:["EtiSchadS.2Alle"],Offers:{Recipes:[] } },{id:"minecraft:villager",Tags:["EtiSchadS.2Alle"],Offers:{Recipes:[] } },{id:"minecraft:villager",Tags:["EtiSchadS.2Alle"],Offers:{Recipes:[] } } ] }
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] run spreadplayers ~ ~ 5 10 false @e[type=minecraft:villager,tag=EtiSchadS.2Alle,sort=nearest,limit=3]

give @a[distance=..25] minecraft:iron_sword[minecraft:lore=['"Besiege mit dem Schwert"','"die Dorfbewohner um"','"deine Strafe zu erhalten"'],minecraft:custom_data={EigSchadS.2Alle:true}]
give @a[distance=..25] minecraft:tripwire_hook[minecraft:lore=['"Wähle den Schlüssel aus,"','"um aus den Käfig-Zonen"','"zu entkommen"'],minecraft:custom_name='{"text":"Schlüssel","color":"gold","bold":true}',minecraft:custom_data={EigSchadS.2Alle:true}]









execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] run tag @a[distance=..10,nbt={SelectedItem:{id:"minecraft:tripwire_hook",components:{"minecraft:custom_data":{EigSchadS.2Alle:true} } } }] add EtiSchadS.2Schluessel

scoreboard players set @a[tag=EtiSchadS.2Schluessel] PZSchadS.2Zeit 0
scoreboard players set @a[tag=EtiSchadS.2Schluessel] PZSchadS.2Tote 0
tag @a[tag=EtiSchadS.2Schluessel] remove EtiSchadS.2Gefangen

tag @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone,tag=!EtiSchadS.2Boden,nbt={OnGround:true}] add EtiSchadS.2Boden

execute as @e[type=minecraft:armor_stand,tag=EtiSchadS.2Boden,tag=EtiSchadS.2Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Boden,tag=EtiSchadS.2Kugel] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

execute as @e[type=minecraft:armor_stand,tag=EtiSchadS.2Boden,tag=EtiSchadS.2Kubus] at @s run teleport @s ~ ~ ~ ~180 0
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Boden,tag=EtiSchadS.2Kubus] run particle minecraft:totem_of_undying ^5.5 ^0.5 ^ 0 0 2 0.1 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Boden,tag=EtiSchadS.2Kubus] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 2 0 0 0.1 10 force @a[distance=..25]

execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] run tellraw @a[distance=..10,scores={PZSchadS.2Tote=1..}] ["Mord-Sensor.1: ",{"text":"Du hast einen Dorfbewohner getötet! Dafür musst du sitzen!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] run scoreboard players set @a[distance=..10,tag=!EtiSchadS.2Schluessel,scores={PZSchadS.2Tote=1..}] PZSchadS.2Tote -200
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] run teleport @a[distance=2..,tag=!EtiSchadS.2Schluessel,scores={PZSchadS.2Tote=..-1}] ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] as @a[distance=..2,scores={PZSchadS.2Tote=..1}] run title @s actionbar ["",{"text":"Freiheit in ","color":"red","bold":true},{"score":{"name":"@s","objective":"PZSchadS.2Tote"} } ]
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] run scoreboard players add @a[scores={PZSchadS.2Tote=..-1}] PZSchadS.2Tote 1

execute as @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] at @s positioned ~-5 ~ ~-5 if entity @a[dx=10,dy=10,dz=10,tag=!EtiSchadS.2Gefangen,tag=!EtiSchadS.2Schluessel] run scoreboard players add @s PZSchadS.2Zeit 200
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] positioned ~-5 ~ ~-5 run tellraw @a[dx=10,dy=10,dz=10,tag=!EtiSchadS.2Gefangen] ["Mord-Sensor.1: ",{"text":"Du hast dich der Käfigzone zu stark genähert, dafür musst du nun eine Zeit lang hier bleiben!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,tag=!EtiSchadS.2Gefangen] add EtiSchadS.2Gefangen

execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,tag=!EtiSchadS.2InZone] add EtiSchadS.2InZone

execute as @a[tag=EtiSchadS.2Gefangen,tag=!EtiSchadS.2InZone] at @s positioned as @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone,scores={PZSchadS.2Zeit=1..},sort=nearest,limit=1] run teleport @s ~ ~ ~ ~ ~

execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone,scores={PZSchadS.2Zeit=..0}] run tellraw @a[distance=5..10,tag=!EtiSchadS.2InZone,tag=EtiSchadS.2Gefangen] ["Mord-Sensor.1: ",{"text":"Du bist nun frei, kehre nicht zur Zone zurück!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone,scores={PZSchadS.2Zeit=..0}] run tag @a[distance=5..10,tag=!EtiSchadS.2InZone,tag=EtiSchadS.2Gefangen] remove EtiSchadS.2Gefangen
tag @a[tag=EtiSchadS.2InZone] remove EtiSchadS.2InZone
execute as @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone,scores={PZSchadS.2Zeit=0..}] at @s positioned ~-5 ~ ~-5 run title @a[dx=10,dy=10,dz=10,tag=EtiSchadS.2Gefangen] actionbar ["",{"text":"Freiheit in ","color":"red"},{"score":{"name":"@s","objective":"PZSchadS.2Zeit"} } ]

scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiSchadS.2Zone,scores={PZSchadS.2Zeit=0..}] PZSchadS.2Zeit 1

tag @a[tag=EtiSchadS.2Schluessel] remove EtiSchadS.2Schluessel









scoreboard objectives remove PZSchadS.2Tote
scoreboard objectives remove PZSchadS.2Zeit

tag @a[tag=EtiSchadS.2Gefangen] remove EtiSchadS.2Gefangen
tag @a[tag=EtiSchadS.2InZone] remove EtiSchadS.2InZone

clear @a *[minecraft:custom_data~{EigSchadS.2Alle:true}]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSchadS.2Alle:true}] run kill @s
kill @e[tag=EtiSchadS.2Alle]
