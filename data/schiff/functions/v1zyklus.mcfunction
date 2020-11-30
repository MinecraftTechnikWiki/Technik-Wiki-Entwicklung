
execute as @e[type=minecraft:armor_stand,tag=EtiSchiff.1Strecke] at @s run function schiff:v1schiff_kanal

execute as @e[type=minecraft:armor_stand,tag=EtiSchiff.1Erstellen] at @s run function schiff:v1erstellen

#execute as @a[team=TMSchiff.1Kap] unless entity @s[scores={PZSchiff.1Wert=0}] at @s as @e[distance=..5,type=minecraft:armor_stand,tag=EtiSchiff.1Schiff] at @s run function schiff:v1ausloeser

#execute at @e[type=minecraft:armor_stand,tag=EtiSchiff.1Hafen] if block ~ ~ ~ minecraft:stone_button[powered=true] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EigSchiff.1Alle:true,EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiSchiff.1Alle","EtiSchiff.1Erstellen"] } } } }
