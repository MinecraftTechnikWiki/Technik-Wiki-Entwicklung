
execute at @e[type=minecraft:armor_stand,name=Werkbankhausen] positioned ~-7 ~ ~-7 run tag @a[dx=15,dy=15,dz=15,tag=EtiZonMa.3ErstbetrittWerkbankhausen,scores={PZZonMa.3Betritt=1..}] remove EtiZonMa.3ErstbetrittWerkbankhausen
execute at @e[type=minecraft:armor_stand,name=Braustandhausen] positioned ~-7 ~ ~-7 run tag @a[dx=15,dy=15,dz=15,tag=EtiZonMa.3ErstbetrittBraustandhausen,scores={PZZonMa.3Betritt=1..}] remove EtiZonMa.3ErstbetrittBraustandhausen
scoreboard players set @a[scores={PZZonMa.3Betritt=1..}] PZZonMa.3Betritt 0
execute as @e[type=minecraft:armor_stand,name=Werkbankhausen] at @s positioned ~-7 ~ ~-7 run title @a[dx=15,dy=15,dz=15,tag=!EtiZonMa.3ErstbetrittWerkbankhausen] title ["",{"text":"[ "},{"selector":"@s"},{"text":" ]"} ]
execute at @e[type=minecraft:armor_stand,name=Werkbankhausen] positioned ~-7 ~ ~-7 run tag @a[dx=15,dy=15,dz=15,tag=!EtiZonMa.3ErstbetrittWerkbankhausen] add EtiZonMa.3ErstbetrittWerkbankhausen
execute as @e[type=minecraft:armor_stand,name=Braustandhausen] at @s positioned ~-7 ~ ~-7 run title @a[dx=15,dy=15,dz=15,tag=!EtiZonMa.3ErstbetrittBraustandhausen] title ["",{"text":"[ "},{"selector":"@s"},{"text":" ]"} ]
execute at @e[type=minecraft:armor_stand,name=Braustandhausen] positioned ~-7 ~ ~-7 run tag @a[dx=15,dy=15,dz=15,tag=!EtiZonMa.3ErstbetrittBraustandhausen] add EtiZonMa.3ErstbetrittBraustandhausen
execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle] at @s positioned ~-7 ~ ~-7 run tellraw @a[dx=15,dy=15,dz=15,tag=!EtiZonMa.3Nachricht] ["",{"text":"Zonen-Markierung.3 "},{"text":"Du betrittst "},{"selector":"@s"} ]
execute at @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle] positioned ~-7 ~ ~-7 run tag @a[dx=15,dy=15,dz=15,tag=!EtiZonMa.3Nachricht] add EtiZonMa.3Nachricht
execute at @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle] positioned ~-7 ~ ~-7 run tag @a[dx=15,dy=15,dz=15,tag=!EtiZonMa.3BeiZone] add EtiZonMa.3BeiZone
execute as @a[tag=EtiZonMa.3Nachricht,tag=!EtiZonMa.3BeiZone] at @s if entity @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle,sort=nearest,limit=1] run tellraw @s ["",{"text":"Zonen-Markierung.3 "},{"text":"Du verlässt "},{"selector":"@e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle,sort=nearest,limit=1]"} ]
tag @a[tag=EtiZonMa.3Nachricht,tag=!EtiZonMa.3BeiZone] remove EtiZonMa.3Nachricht
tag @a[tag=EtiZonMa.3BeiZone] remove EtiZonMa.3BeiZone
execute at @a[tag=!EtiZonMa.3Nachricht] at @e[distance=..50,type=minecraft:armor_stand,tag=EtiZonMa.3Alle] positioned ~ ~ ~8 run particle minecraft:totem_of_undying ~ ~2 ~ 3 0 0 0.2 5 force @a[distance=..25]
execute at @a[tag=!EtiZonMa.3Nachricht] at @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle,distance=..50] positioned ~ ~ ~-7 run particle minecraft:totem_of_undying ~ ~2 ~ 3 0 0 0.2 5 force @a[distance=..25]
execute at @a[tag=!EtiZonMa.3Nachricht] at @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle,distance=..50] positioned ~8 ~ ~ run particle minecraft:totem_of_undying ~ ~2 ~ 0 0 3 0.2 5 force @a[distance=..25]
execute at @a[tag=!EtiZonMa.3Nachricht] at @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle,distance=..50] positioned ~-7 ~ ~ run particle minecraft:totem_of_undying ~ ~2 ~ 0 0 3 0.2 5 force @a[distance=..25]
