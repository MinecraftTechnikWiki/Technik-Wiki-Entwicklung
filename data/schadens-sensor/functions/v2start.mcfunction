
data get entity @s Health

data get entity @s HurtTime
data get entity @s HurtByTimestamp

attribute @s minecraft:generic.max_health get

scoreboard objectives add PZSchadS.1Sch minecraft.custom:minecraft.damage_dealt ["Schadens-Sensor.1: ",{"text":"Schaden ausgeteilt","bold":true}]
scoreboard objectives add PZSchadS.1Sch minecraft.custom:minecraft.damage_taken ["Schadens-Sensor.1: ",{"text":"Schaden erlitten","bold":true}]

summon minecraft:falling_block ~ ~10 ~ {Time:0,Tags:["EtiMordS.2Alle"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiMordS.2Alle","EtiMordS.2Zone","EtiMordS.2Kugel"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiMordS.2Alle","EtiMordS.2Zone","EtiMordS.2Kugel"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiMordS.2Alle","EtiMordS.2Zone","EtiMordS.2Kubus"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiMordS.2Alle","EtiMordS.2Zone","EtiMordS.2Kubus"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b} ] } ] }
execute at @e[type=minecraft:falling_block,tag=EtiMordS.2Alle] run spreadplayers ~ ~ 20 25 false @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone]

execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] run summon minecraft:falling_block ~ ~ ~ {Time:0,Tags:["EtiMordS.2Alle"],Passengers:[{id:"minecraft:villager",Tags:["EtiMordS.2Alle"],Offers:{Recipes:[] } },{id:"minecraft:villager",Tags:["EtiMordS.2Alle"],Offers:{Recipes:[] } },{id:"minecraft:villager",Tags:["EtiMordS.2Alle"],Offers:{Recipes:[] } } ] }
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] run spreadplayers ~ ~ 5 10 false @e[type=minecraft:villager,tag=EtiMordS.2Alle,sort=nearest,limit=3]

give @a[distance=..25] minecraft:iron_sword{EigMordS.2Alle:true,display:{Lore:['"Besiege mit dem Schwert"','"die Dorfbewohner um"','"deine Strafe zu erhalten"'] } }
give @a[distance=..25] minecraft:tripwire_hook{EigMordS.2Alle:true,display:{Name:'{"text":"Schlüssel","color":"gold","bold":true}',Lore:['"Wähle den Schlüssel aus,"','"um aus den Käfig-Zonen"','"zu entkommen"'] } }









execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] run tag @a[distance=..10,nbt={SelectedItem:{id:"minecraft:tripwire_hook",tag:{EigMordS.2Alle:true} } }] add EtiMordS.2Schluessel

scoreboard players set @a[tag=EtiMordS.2Schluessel] PZMordS.2Zeit 0
scoreboard players set @a[tag=EtiMordS.2Schluessel] PZMordS.2Tote 0
tag @a[tag=EtiMordS.2Schluessel] remove EtiMordS.2Gefangen

tag @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone,tag=!EtiMordS.2Boden,nbt={OnGround:true}] add EtiMordS.2Boden

execute as @e[type=minecraft:armor_stand,tag=EtiMordS.2Boden,tag=EtiMordS.2Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Boden,tag=EtiMordS.2Kugel] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

execute as @e[type=minecraft:armor_stand,tag=EtiMordS.2Boden,tag=EtiMordS.2Kubus] at @s run teleport @s ~ ~ ~ ~180 0
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Boden,tag=EtiMordS.2Kubus] run particle minecraft:totem_of_undying ^5.5 ^0.5 ^ 0 0 2 0.1 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Boden,tag=EtiMordS.2Kubus] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 2 0 0 0.1 10 force @a[distance=..25]

execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] run tellraw @a[distance=..10,scores={PZMordS.2Tote=1..}] ["Mord-Sensor.1: ",{"text":"Du hast einen Dorfbewohner getötet! Dafür musst du sitzen!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] run scoreboard players set @a[distance=..10,tag=!EtiMordS.2Schluessel,scores={PZMordS.2Tote=1..}] PZMordS.2Tote -200
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] run teleport @a[distance=2..,tag=!EtiMordS.2Schluessel,scores={PZMordS.2Tote=..-1}] ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] as @a[distance=..2,scores={PZMordS.2Tote=..1}] run title @s actionbar ["",{"text":"Freiheit in ","color":"red","bold":true},{"score":{"name":"@s","objective":"PZMordS.2Tote"} } ]
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] run scoreboard players add @a[scores={PZMordS.2Tote=..-1}] PZMordS.2Tote 1

execute as @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] at @s positioned ~-5 ~ ~-5 if entity @a[dx=10,dy=10,dz=10,tag=!EtiMordS.2Gefangen,tag=!EtiMordS.2Schluessel] run scoreboard players add @s PZMordS.2Zeit 200
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] positioned ~-5 ~ ~-5 run tellraw @a[dx=10,dy=10,dz=10,tag=!EtiMordS.2Gefangen] ["Mord-Sensor.1: ",{"text":"Du hast dich der Käfigzone zu stark genähert, dafür musst du nun eine Zeit lang hier bleiben!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,tag=!EtiMordS.2Gefangen] add EtiMordS.2Gefangen

execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone] positioned ~-5 ~ ~-5 run tag @a[dx=10,dy=10,dz=10,tag=!EtiMordS.2InZone] add EtiMordS.2InZone

execute as @a[tag=EtiMordS.2Gefangen,tag=!EtiMordS.2InZone] at @s positioned as @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone,scores={PZMordS.2Zeit=1..},sort=nearest,limit=1] run teleport @s ~ ~ ~ ~ ~

execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone,scores={PZMordS.2Zeit=..0}] run tellraw @a[distance=5..10,tag=!EtiMordS.2InZone,tag=EtiMordS.2Gefangen] ["Mord-Sensor.1: ",{"text":"Du bist nun frei, kehre nicht zur Zone zurück!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone,scores={PZMordS.2Zeit=..0}] run tag @a[distance=5..10,tag=!EtiMordS.2InZone,tag=EtiMordS.2Gefangen] remove EtiMordS.2Gefangen
tag @a[tag=EtiMordS.2InZone] remove EtiMordS.2InZone
execute as @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone,scores={PZMordS.2Zeit=0..}] at @s positioned ~-5 ~ ~-5 run title @a[dx=10,dy=10,dz=10,tag=EtiMordS.2Gefangen] actionbar ["",{"text":"Freiheit in ","color":"red"},{"score":{"name":"@s","objective":"PZMordS.2Zeit"} } ]

scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiMordS.2Zone,scores={PZMordS.2Zeit=0..}] PZMordS.2Zeit 1

tag @a[tag=EtiMordS.2Schluessel] remove EtiMordS.2Schluessel









scoreboard objectives remove PZMordS.2Tote
scoreboard objectives remove PZMordS.2Zeit

tag @a[tag=EtiMordS.2Gefangen] remove EtiMordS.2Gefangen
tag @a[tag=EtiMordS.2InZone] remove EtiMordS.2InZone

clear @a minecraft:iron_sword{EigMordS.2Alle:true}
clear @a minecraft:tripwire_hook{EigMordS.2Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigMordS.2Alle:true} } }] add EtiMordS.2Alle
kill @e[tag=EtiMordS.2Alle]
