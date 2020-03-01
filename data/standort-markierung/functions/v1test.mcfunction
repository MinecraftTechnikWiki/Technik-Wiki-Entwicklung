
# Variante 2
scoreboard objectives add PZStaMa.2Nr dummy ["Standort-Markierung.2: ",{"text":"Eckpunkt-Nummer","bold":true}]
give @a[distance=..15] minecraft:armor_stand{standort-markierung:"v2gegenstand",display:{Lore:['"Platziere den Rüstungsständer"','"um eine Markierung zu setzen"']},EntityTag:{Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Eckpunkt","bold":true}',Tags:["EtiStaMa.2Alle","EtiStaMa.2Eckpunkt"]} } 16



execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt] unless score @s PZStaMa.2Nr matches 0.. store result score @s PZStaMa.2Nr run scoreboard players add PZStaMa.2Nr PZStaMa.2Nr 1

execute unless entity @e[type=minecraft:armor_stand,tag=EtiStaMa.2Partikel,sort=nearest,limit=1] at @e[type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt,scores={PZStaMa.2Nr=1},sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["EtiStaMa.2Alle","EtiStaMa.2Partikel"]}

#execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2Partikel] at @s unless score @s PZStaMa.2Nr > @e[distance=..3,type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt,sort=nearest,limit=1] PZStaMa.2Nr run scoreboard players operation @s PZStaMa.2Nr = @e[type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt,sort=nearest,limit=1] PZStaMa.2Nr

#execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2Partikel] at @s at @e[type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt] if score @s PZStaMa.2Nr < @e[distance=..1,type=minecraft:armor_stand,limit=1] PZStaMa.2Nr run teleport @s ^ ^ ^ facing entity @s

execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2Partikel] at @s run teleport @s ^ ^ ^0.1 facing entity @e[type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt,scores={PZStaMa.2Nr=1},sort=nearest,limit=1]

execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2Partikel] at @s if entity @e[distance=..0.3,type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt,scores={PZStaMa.2Nr=1},sort=nearest,limit=1] run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt] PZStaMa.2Nr 1



execute store result score PZStaMa.2MaxEckpunkte PZStaMa.2Nr if entity @e[type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt]

execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2Eckpunkt] if score @s PZStaMa.2Nr > PZStaMa.2MaxEckpunkte PZStaMa.2Nr run scoreboard players set @s PZStaMa.2Nr 1






# Varainte

give @a[distance=..15] minecraft:armor_stand{standort-markierung:"v2gegenstand",display:{Lore:['"Platziere den Rüstungsständer"','"um eine Markierung zu setzen"']},EntityTag:{Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Markierung","bold":true}',Tags:["EtiStaMa.2Alle","EtiStaMa.2Partikel","EtiStaMa.2Standort"]} }


#scoreboard objectives add PZStaMa.2Nr dummy ["Standort-Markierung.2: ",{"text":"Nummer","bold":true}]
#execute as @p[tag=!EtiStaMa.2NrErhalten] store result score @s PZStaMa.2Nr run scoreboard players add VarStaMa.2SpielerNummer PZStaMa.2Nr 1
#tag @p[tag=!EtiStaMa.2NrErhalten] add EtiStaMa.2NrErhalten



execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2ZumStandort] at @s if entity @e[distance=..0.2,type=minecraft:armor_stand,tag=EtiStaMa.2Standort] run kill @s

execute at @e[type=minecraft:armor_stand,tag=EtiStaMa.2Standort] unless entity @e[distance=..50,type=minecraft:armor_stand,tag=EtiStaMa.2ZumStandort] at @p[distance=..50] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:true,NoGravity:true,Tags:["EtiStaMa.2Alle","EtiStaMa.2Partikel","EtiStaMa.2ZumStandort","EtiStaMa.2Ausrichtung"]}

execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2Ausrichtung] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiStaMa.2Standort] feet run teleport @s ~ ~ ~ ~ ~90

tag @e[type=minecraft:armor_stand,tag=EtiStaMa.2Ausrichtung] remove EtiStaMa.2Ausrichtung

execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2ZumStandort] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiStaMa.2Standort] feet run teleport @s ^ ^ ^0.1



execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2ZumStandort,tag=EtiStaMa.2Rotation] at @s run teleport @s ~ ~ ~ ~ ~4
execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2ZumStandort,tag=!EtiStaMa.2Rotation] at @s run teleport @s ~ ~ ~ ~ ~-4
execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.2ZumStandort] unless entity @s[x_rotation=-89..89] at @s run teleport @s ~ ~ ~ ~180 ~
tag @e[type=minecraft:armor_stand,tag=EtiStaMa.2ZumStandort,x_rotation=-90] add EtiStaMa.2Rotation
tag @e[type=minecraft:armor_stand,tag=EtiStaMa.2ZumStandort,x_rotation=90] remove EtiStaMa.2Rotation



execute at @e[type=minecraft:armor_stand,tag=EtiStaMa.2Partikel] run particle minecraft:flame ^ ^ ^1 0 0 0 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiStaMa.2Partikel] run particle minecraft:flame ^ ^ ^-1 0 0 0 0 10 force @a[distance=..25]

# Variante 3

summon minecraft:armor_stand ~-5 ~ ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["EtiStaMa.3Alle","EtiStaMa.3Laeufer"]}
summon minecraft:armor_stand ~-5 ~ ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["EtiStaMa.3Alle","EtiStaMa.3Begleiter"]}
summon minecraft:armor_stand ~-5 ~ ~ {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["EtiStaMa.3Alle","EtiStaMa.3Dreher"]}


execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.3Laeufer] at @s if block ~ ~ ~ minecraft:observer[facing=north] run teleport @s ~ ~ ~ 0 0
execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.3Laeufer] at @s if block ~ ~ ~ minecraft:observer[facing=east] run teleport @s ~ ~ ~ 90 0
execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.3Laeufer] at @s if block ~ ~ ~ minecraft:observer[facing=south] run teleport @s ~ ~ ~ 180 0
execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.3Laeufer] at @s if block ~ ~ ~ minecraft:observer[facing=west] run teleport @s ~ ~ ~ 270 0
execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.3Laeufer] at @s run teleport @s ^ ^ ^0.1
execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.3Begleiter] at @e[type=minecraft:armor_stand,tag=EtiStaMa.3Laeufer] rotated as @s run teleport @s ~ ~ ~ ~15 ~
execute as @e[type=minecraft:armor_stand,tag=EtiStaMa.3Begleiter] at @s run teleport @e[type=minecraft:armor_stand,tag=EtiStaMa.3Dreher] ^ ^ ^5 facing entity @s eyes
execute at @e[type=armor_stand,tag=EtiStaMa.3Alle] run particle minecraft:crit ~ ~ ~ 0 0 0 0.3 10 force @a[distance=..25]
