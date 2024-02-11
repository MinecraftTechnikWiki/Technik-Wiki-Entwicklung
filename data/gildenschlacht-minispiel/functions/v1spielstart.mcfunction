
clear @s

item replace entity @s armor.feet with minecraft:iron_boots{EigGildSMS.1Alle:true}
item replace entity @s armor.legs with minecraft:iron_leggings{EigGildSMS.1Alle:true}
item replace entity @s armor.chest with minecraft:iron_chestplate{EigGildSMS.1Alle:true}
item replace entity @s weapon.offhand with minecraft:shield{EigGildSMS.1Alle:true}

item replace entity @s[team=TMGildSMS.1Rot] armor.head with minecraft:leather_helmet{EigGildSMS.1Alle:true,display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1s}]}
item replace entity @s[team=TMGildSMS.1Blau] armor.head with minecraft:leather_helmet{EigGildSMS.1Alle:true,display:{color:255},Enchantments:[{id:"binding_curse",lvl:1s}]}

give @s minecraft:iron_sword{EigGildSMS.1Alle:true}
give @s minecraft:bow{EigGildSMS.1Alle:true}
give @s minecraft:iron_axe{EigGildSMS.1Alle:true}
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
scoreboard players set VarGildSMS.1Zaehler PZGildSMS.1Spiel -1

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Beutetruhe,sort=nearest,limit=6] run setblock ~ ~ ~ minecraft:chest{LootTable:"gildenschlacht-minispiel:v1truhen"} replace
