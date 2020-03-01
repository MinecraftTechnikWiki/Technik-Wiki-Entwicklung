
#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] as @a unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] positioned ~-25 ~ ~-25 run clear @s[dx=50,dy=50,dz=50]
clear @s

#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] as @a unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] positioned ~-25 ~ ~-25 run replaceitem entity @s[dx=50,dy=50,dz=50] armor.feet minecraft:iron_boots{gildenschlacht-minispiel:"v1gegenstand"}

replaceitem entity @s armor.feet minecraft:iron_boots{gildenschlacht-minispiel:"v1gegenstand"}

#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] as @a unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] positioned ~-25 ~ ~-25 run replaceitem entity @s[dx=50,dy=50,dz=50] armor.legs minecraft:iron_leggings{gildenschlacht-minispiel:"v1gegenstand"}

replaceitem entity @s armor.legs minecraft:iron_leggings{gildenschlacht-minispiel:"v1gegenstand"}

#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] as @a unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] positioned ~-25 ~ ~-25 run replaceitem entity @s[dx=50,dy=50,dz=50] armor.chest minecraft:iron_chestplate{gildenschlacht-minispiel:"v1gegenstand"}

replaceitem entity @s armor.chest minecraft:iron_chestplate{gildenschlacht-minispiel:"v1gegenstand"}

#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] as @a unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] positioned ~-25 ~ ~-25 run replaceitem entity @s[dx=50,dy=50,dz=50] weapon.offhand minecraft:shield{gildenschlacht-minispiel:"v1gegenstand"}

replaceitem entity @s weapon.offhand minecraft:shield{gildenschlacht-minispiel:"v1gegenstand"}

#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] positioned ~-25 ~ ~-25 run replaceitem entity @a[dx=50,dy=50,dz=50,team=TMGildSMS.1Rot] armor.head minecraft:leather_helmet{gildenschlacht-minispiel:"v1gegenstand",display:{color:16711680} }


replaceitem entity @s[team=TMGildSMS.1Rot] armor.head minecraft:leather_helmet{gildenschlacht-minispiel:"v1gegenstand",display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1s}]}

#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] positioned ~-25 ~ ~-25 run replaceitem entity @a[dx=50,dy=50,dz=50,team=TMGildSMS.1Blau] armor.head minecraft:leather_helmet{gildenschlacht-minispiel:"v1gegenstand",display:{color:255} }

replaceitem entity @s[team=TMGildSMS.1Blau] armor.head minecraft:leather_helmet{gildenschlacht-minispiel:"v1gegenstand",display:{color:255},Enchantments:[{id:"binding_curse",lvl:1s}]}

#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] positioned ~-25 ~ ~-25 at @a[dx=50,dy=50,dz=50,team=TMGildSMS.1Blau] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:bow",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:fishing_rod",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:cooked_beef",Count:10b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:golden_apple",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"} },Passengers:[{id:"minecraft:item",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming"} },Passengers:[{id:"minecraft:item",Item:{id:"minecraft:arrow",Count:10b} } ] } ] } ] } ] } ] } ] } ] }

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:bow",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:fishing_rod",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:cooked_beef",Count:10b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:golden_apple",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"} },Passengers:[{id:"minecraft:item",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming"} },Passengers:[{id:"minecraft:item",Item:{id:"minecraft:arrow",Count:10b} } ] } ] } ] } ] } ] } ] } ] }

#execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] as @a unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] positioned ~-25 ~ ~-25 run title @s[dx=50,dy=50,dz=50] title ["",{"text":"Gildenschlacht","color":"gray","bold":true}]

title @s title ["",{"text":"Gildenschlacht","color":"gray","bold":true}]

bossbar set gildenschlacht-minispiel:v1lobbyzeit visible false
bossbar set gildenschlacht-minispiel:v1teamrot visible true
execute store result bossbar gildenschlacht-minispiel:v1teamrot max if entity @a[team=TMGildSMS.1Rot]
bossbar set gildenschlacht-minispiel:v1teamblau visible true
execute store result bossbar gildenschlacht-minispiel:v1teamblau max if entity @a[team=TMGildSMS.1Blau]
scoreboard players set #VarGildSMS.1Countdown PZGildSMS.1Spiel -1
