
execute at @a[team=TMKontPS.3Team1] if block ~ ~-1 ~ minecraft:gold_block unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3Team1] as @e[type=minecraft:armor_stand,tag=EtiKontPS.3Team1,tag=!EtiKontPS.3Etappe] run data merge entity @s {CustomName:"{\"text\":\"Team 1\",\"color\":\"red\",\"bold\":true}",Tags:["EtiKontPS.3Alle","EtiKontPS.3Team1","EtiKontPS.3Etappe"]}

execute at @a[team=TMKontPS.3Team2] if block ~ ~-1 ~ minecraft:gold_block unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3Team2] as @e[type=minecraft:armor_stand,tag=EtiKontPS.3Team2,tag=!EtiKontPS.3Etappe] run data merge entity @s {CustomName:"{\"text\":\"Team 2\",\"color\":\"blue\",\"bold\":true}",Tags:["EtiKontPS.3Alle","EtiKontPS.3Team2","EtiKontPS.3Etappe"]}

execute at @a[team=TMKontPS.3Team1] if block ~ ~-1 ~ minecraft:gold_block unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3Team1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Marker:true,CustomNameVisible:true,CustomName:"{\"text\":\">>Team 1<<\",\"color\":\"red\",\"bold\":true}",Tags:["EtiKontPS.3Alle","EtiKontPS.3Team1"] }
execute at @a[team=TMKontPS.3Team2] if block ~ ~-1 ~ minecraft:gold_block unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3Team2] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Marker:true,CustomNameVisible:true,CustomName:"{\"text\":\">>Team 2<<\",\"color\":\"blue\",\"bold\":true}",Tags:["EtiKontPS.3Alle","EtiKontPS.3Team2"] }

execute as @a[team=TMKontPS.3Team1] at @s if block ~ ~-1 ~ minecraft:gold_block run teleport @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3Team1] @s
execute as @a[team=TMKontPS.3Team2] at @s if block ~ ~-1 ~ minecraft:gold_block run teleport @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3Team2] @s

execute as @a[distance=..25,team=!] at @s if block ~ ~-1 ~ minecraft:diamond_block run scoreboard players set @s PZKontPS.3Wurf 1
execute at @a[scores={PZKontPS.3Wurf=1..}] run kill @e[distance=..3,type=item,nbt={Item:{tag:{display:{Lore:["Kontrollpunkt-System.3"]} } } },sort=nearest,limit=1]
clear @a[scores={PZKontPS.3Wurf=1..}] minecraft:dragon_breath{display:{Lore:["Kontrollpunkt-System.3"]} }
teleport @a[team=TMKontPS.3Team1,scores={PZKontPS.3Wurf=1..}] @e[type=minecraft:armor_stand,tag=EtiKontPS.3Team1,tag=!EtiKontPS.3Etappe,sort=nearest,limit=1]
teleport @a[team=TMKontPS.3Team2,scores={PZKontPS.3Wurf=1..}] @e[type=minecraft:armor_stand,tag=EtiKontPS.3Team2,tag=!EtiKontPS.3Etappe,sort=nearest,limit=1]

replaceitem entity @a[scores={PZKontPS.3Wurf=1..}] weapon.mainhand minecraft:dragon_breath{display:{Lore:["Kontrollpunkt-System.3","Wirf den Gegenstand mit Q","um zum letzten","Kontrollpunkt zurück zu kommen"]} }
scoreboard players set @a[scores={PZKontPS.3Wurf=1..}] PZKontPS.3Wurf 0
