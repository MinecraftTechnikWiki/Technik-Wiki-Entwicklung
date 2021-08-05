
clear @s

replaceitem entity @s armor.feet minecraft:iron_boots{EigGildSMS.1Alle:true}
replaceitem entity @s armor.legs minecraft:iron_leggings{EigGildSMS.1Alle:true}
replaceitem entity @s armor.chest minecraft:iron_chestplate{EigGildSMS.1Alle:true}
replaceitem entity @s weapon.offhand minecraft:shield{EigGildSMS.1Alle:true}

replaceitem entity @s[team=TMGildSMS.1Rot] armor.head minecraft:leather_helmet{EigGildSMS.1Alle:true,display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1s}]}
replaceitem entity @s[team=TMGildSMS.1Blau] armor.head minecraft:leather_helmet{EigGildSMS.1Alle:true,display:{color:255},Enchantments:[{id:"binding_curse",lvl:1s}]}

give @s minecraft:iron_sword{EigGildSMS.1Alle:true}
give @s minecraft:bow{EigGildSMS.1Alle:true}
give @s minecraft:fishing_rod{EigGildSMS.1Alle:true}
give @s minecraft:cooked_beef{EigGildSMS.1Alle:true} 10
give @s minecraft:golden_apple{EigGildSMS.1Alle:true}
give @s minecraft:splash_potion{EigGildSMS.1Alle:true,Potion:"minecraft:healing"}
give @s minecraft:splash_potion{EigGildSMS.1Alle:true,Potion:"minecraft:harming"}
give @s minecraft:arrow{EigGildSMS.1Alle:true} 20

title @s title ["",{"text":"Gildenschlacht","color":"gray","bold":true}]

bossbar set gildenschlacht-minispiel:v1lobbyzeit visible false
bossbar set gildenschlacht-minispiel:v1teamrot visible true
execute store result bossbar gildenschlacht-minispiel:v1teamrot max if entity @a[team=TMGildSMS.1Rot]
bossbar set gildenschlacht-minispiel:v1teamblau visible true
execute store result bossbar gildenschlacht-minispiel:v1teamblau max if entity @a[team=TMGildSMS.1Blau]
scoreboard players set #VarGildSMS.1Countdown PZGildSMS.1Spiel -1

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Beutetruhe] run setblock ~ ~ ~ minecraft:chest{LootTable:"gildenschlacht-minispiel:v1truhen"} replace
