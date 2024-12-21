# Damit jeder Drop über eine Nummer identifiziert werden kann, wird die Nummer-Funktion geladen.
execute if entity @p[scores={PZDrRezM.1Drop=1..}] as @e[type=minecraft:item,tag=!EtiDrRezM.1Drop,nbt={Item:{components:{"minecraft:custom_data":{EigDrRezM.1Alle:true} } } }] run function drop-rezeptmaschine:v1nummer

# Jeder Drop der eine Nummer zugewiesen bekommen hat, speichert seine aktuelle Stapelzahl in den Punkte-Stand.
execute as @e[type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=1..}] store result score @s PZDrRezM.1Stap run data get entity @s Item.count

# Die Drops werden auf das Rezept1 geprüft und nur wenn das zutrifft, wird der Ziel-Gegenstand erzeugt.
execute as @e[type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=1,PZDrRezM.1Stap=1}] at @s if entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=2,PZDrRezM.1Stap=2..},sort=nearest,limit=1] run tag @s add EtiDrRezM.1Rezept1
execute at @e[type=minecraft:item,tag=EtiDrRezM.1Rezept1] as @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=2,PZDrRezM.1Stap=2..},sort=nearest,limit=1] store result entity @s Item.count byte 1 run scoreboard players remove @s PZDrRezM.1Stap 2
execute as @e[type=minecraft:item,tag=EtiDrRezM.1Rezept1] run data merge entity @s {Item:{id:"minecraft:name_tag",count:1},Motion:[0.0d,0.3d,0.0d]}
execute at @e[type=minecraft:item,tag=EtiDrRezM.1Rezept1] run playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 1 1 0.1
scoreboard players set @e[type=minecraft:item,tag=EtiDrRezM.1Rezept1] PZDrRezM.1Drop -1
tag @e[type=minecraft:item,tag=EtiDrRezM.1Rezept1] remove EtiDrRezM.1Rezept1

# Die Drops werden auf das Rezept2 geprüft und nur wenn das zutrifft, wird der Ziel-Gegenstand erzeugt.
execute as @e[type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=3,PZDrRezM.1Stap=1}] at @s if entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=4,PZDrRezM.1Stap=2},sort=nearest,limit=1] if entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=5,PZDrRezM.1Stap=1},sort=nearest,limit=1] run tag @s add EtiDrRezM.1Rezept2
execute at @e[type=minecraft:item,tag=EtiDrRezM.1Rezept2] as @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=4,PZDrRezM.1Stap=2..},sort=nearest,limit=1] store result entity @s Item.count byte 1 run scoreboard players remove @s PZDrRezM.1Stap 2
execute at @e[type=minecraft:item,tag=EtiDrRezM.1Rezept2] as @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=5,PZDrRezM.1Stap=1..},sort=nearest,limit=1] store result entity @s Item.count byte 1 run scoreboard players remove @s PZDrRezM.1Stap 1
execute as @e[type=minecraft:item,tag=EtiDrRezM.1Rezept2] run data merge entity @s {Item:{id:"minecraft:crossbow",count:1},Motion:[0.0d,0.3d,0.0d]}
execute at @e[type=minecraft:item,tag=EtiDrRezM.1Rezept2] run playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 1 1 0.1
scoreboard players set @e[type=minecraft:item,tag=EtiDrRezM.1Rezept2] PZDrRezM.1Drop -1
tag @e[type=minecraft:item,tag=EtiDrRezM.1Rezept2] remove EtiDrRezM.1Rezept2

# Die Drops werden auf das Rezept3 geprüft und nur wenn das zutrifft, wird der Ziel-Gegenstand erzeugt.
execute as @e[type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=6,PZDrRezM.1Stap=1}] at @s if entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=7,PZDrRezM.1Stap=2},sort=nearest,limit=1] if entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=8,PZDrRezM.1Stap=1},sort=nearest,limit=1] if entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=9,PZDrRezM.1Stap=1},sort=nearest,limit=1] run tag @s add EtiDrRezM.1Rezept3
execute at @e[type=minecraft:item,tag=EtiDrRezM.1Rezept3] as @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=4,PZDrRezM.1Stap=2..},sort=nearest,limit=1] store result entity @s Item.count byte 1 run scoreboard players remove @s PZDrRezM.1Stap 2
execute at @e[type=minecraft:item,tag=EtiDrRezM.1Rezept3] as @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.1Drop,scores={PZDrRezM.1Drop=5,PZDrRezM.1Stap=1..},sort=nearest,limit=1] store result entity @s Item.count byte 1 run scoreboard players remove @s PZDrRezM.1Stap 1
execute as @e[type=minecraft:item,tag=EtiDrRezM.1Rezept3] run data merge entity @s {Item:{id:"minecraft:crossbow",count:1},Motion:[0.0d,0.3d,0.0d]}
execute at @e[type=minecraft:item,tag=EtiDrRezM.1Rezept3] run playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 1 1 0.1
scoreboard players set @e[type=minecraft:item,tag=EtiDrRezM.1Rezept3] PZDrRezM.1Drop -1
tag @e[type=minecraft:item,tag=EtiDrRezM.1Rezept3] remove EtiDrRezM.1Rezept3
