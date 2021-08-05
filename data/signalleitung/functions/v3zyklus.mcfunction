
tag @a[nbt={SelectedItem:{tag:{EigSigLe.3Stock:true} } }] add EtiSigLe.3Ausgewaehlt

execute at @a[tag=EtiSigLe.3Ausgewaehlt,tag=!EtiSigLe.3Auswahl] align xz if block ~0.5 ~-1 ~0.5 minecraft:yellow_concrete run summon minecraft:armor_stand ~0.5 ~-1 ~0.5 {Small:true,NoGravity:true,Marker:true,Invisible:true,Tags:["EtiSigLe.3Alle","EtiSigLe.3Signal"]}

execute at @a[tag=!EtiSigLe.3Ausgewaehlt,tag=EtiSigLe.3Auswahl] align xz positioned ~0.5 ~-1 ~0.5 run tag @e[distance=..0.5,type=minecraft:armor_stand,tag=EtiSigLe.3Signal,sort=nearest,limit=1] add EtiSigLe.3Erloschen

tag @a[tag=EtiSigLe.3Ausgewaehlt,tag=!EtiSigLe.3Auswahl] add EtiSigLe.3Auswahl
tag @a[tag=!EtiSigLe.3Ausgewaehlt,tag=EtiSigLe.3Auswahl] remove EtiSigLe.3Auswahl
tag @a[tag=EtiSigLe.3Ausgewaehlt] remove EtiSigLe.3Ausgewaehlt

execute at @e[type=minecraft:armor_stand,tag=EtiSigLe.3Signal,tag=EtiSigLe.3Erloschen] run tag @e[distance=..1.2,type=minecraft:armor_stand,tag=EtiSigLe.3Signal,sort=nearest,limit=7] add EtiSigLe.3Erloschen

execute as @e[type=minecraft:armor_stand,tag=EtiSigLe.3Signal,tag=!EtiSigLe.3Erloschen] unless entity @s[scores={PZSigLe.3Wert=8..}] run scoreboard players add @s PZSigLe.3Wert 1
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiSigLe.3Signal,tag=EtiSigLe.3Erloschen] PZSigLe.3Wert 1

execute as @e[type=minecraft:armor_stand,tag=EtiSigLe.3Signal] at @s if block ~ ~ ~ #signalleitung:v3leitung run function signalleitung:v3farbe

execute at @e[type=minecraft:armor_stand,tag=EtiSigLe.3Signal,tag=!EtiSigLe.3Erloschen,scores={PZSigLe.3Wert=1}] run function signalleitung:v3signal

kill @e[type=minecraft:armor_stand,tag=EtiSigLe.3Signal,tag=EtiSigLe.3Erloschen,scores={PZSigLe.3Wert=16..}]
