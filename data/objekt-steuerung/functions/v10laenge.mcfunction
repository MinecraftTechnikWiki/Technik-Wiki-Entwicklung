
scoreboard players set #VarObjSt.10SchlangenEnde PZObjSt.10Vergl 0
scoreboard players operation #VarObjSt.10SchlangenEnde PZObjSt.10Vergl > @e[tag=EtiObjSt.10Alle] PZObjSt.10Nr
execute as @e[tag=EtiObjSt.10Alle] if score @s PZObjSt.10Nr = #VarObjSt.10SchlangenEnde PZObjSt.10Vergl at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiObjSt.10Alle","EtiObjSt.10KeineNummer"],ArmorItems:[{},{},{},{id:"minecraft:lime_concrete_powder",Count:1b} ]}

scoreboard players remove @s PZObjSt.10Laenge 1

scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=EtiObjSt.10KeineNummer] PZObjSt.10Laenge = #VarObjSt.10Anzahl PZObjSt.10Nr
scoreboard players add #VarObjSt.10Anzahl PZObjSt.10Nr 1
scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=EtiObjSt.10KeineNummer] PZObjSt.10Nr = #VarObjSt.10Anzahl PZObjSt.10Nr
tag @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=EtiObjSt.10KeineNummer,scores={PZObjSt.10Nr=1..}] remove EtiObjSt.10KeineNummer
