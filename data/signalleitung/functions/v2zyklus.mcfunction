
tag @a[nbt={SelectedItem:{tag:{EigSigLe.2Stock:true} } }] add EtiSigLe.2Ausgewaehlt
execute at @a[tag=EtiSigLe.2Ausgewaehlt,tag=!EtiSigLe.2Auswahl] align xz if block ~0.5 ~-1 ~0.5 minecraft:yellow_concrete run summon minecraft:area_effect_cloud ~0.5 ~-1 ~0.5 {Duration:15,Tags:["EtiSigLe.2Alle","EtiSigLe.2Signal"]}

tag @a[tag=EtiSigLe.2Ausgewaehlt,tag=!EtiSigLe.2Auswahl] add EtiSigLe.2Auswahl
tag @a[tag=!EtiSigLe.2Ausgewaehlt,tag=EtiSigLe.2Auswahl] remove EtiSigLe.2Auswahl
tag @a[tag=EtiSigLe.2Ausgewaehlt] remove EtiSigLe.2Ausgewaehlt

execute as @e[type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] store result score @s PZSigLe.2Wert run data get entity @s Age

execute as @e[type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] at @s if block ~ ~ ~ #signalleitung:v2leitung run function signalleitung:v2farbe

execute at @e[type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal,scores={PZSigLe.2Wert=1}] run function signalleitung:v2signal
