
execute as @e[type=minecraft:armor_stand,tag=EtiTranPR.1Bauwerk] at @s align y run function transport-roehre:v1bauwerk

tag @a[nbt={SelectedItem:{tag:{EigTranPR.1Roehre:true} } }] add EtiTranPR.1Ausgewaehlt
scoreboard players set @a[tag=EtiTranPR.1Ausgewaehlt,tag=!EtiTranPR.1Auswahl] PZTranPR.1Ausl -99
execute as @a[tag=EtiTranPR.1Ausgewaehlt] unless entity @s[scores={PZTranPR.1Ausl=0}] run function transport-roehre:v1ausloeser
tag @a[tag=EtiTranPR.1Ausgewaehlt,tag=!EtiTranPR.1Auswahl] add EtiTranPR.1Auswahl
tag @a[tag=!EtiTranPR.1Ausgewaehlt,tag=EtiTranPR.1Auswahl] remove EtiTranPR.1Auswahl
tag @a[tag=EtiTranPR.1Ausgewaehlt] remove EtiTranPR.1Ausgewaehlt

#execute at @e[type=minecraft:armor_stand,tag=EtiTranPR.1Rohreingang] run gamemode spectator @a[distance=..1.2,tag=!EtiTranPR.1Klempner]
execute at @e[type=minecraft:armor_stand,tag=EtiTranPR.1Rohreingang] run teleport @a[distance=..2,tag=!EtiTranPR.1Klempner] ^ ^ ^1 ~ ~
execute at @e[type=minecraft:armor_stand,tag=EtiTranPR.1Rohreingang] run tag @a[distance=..2,tag=!EtiTranPR.1Klempner] add EtiTranPR.1Klempner

execute as @a[tag=EtiTranPR.1Klempner] at @s align xz positioned ~0.5 ~ ~0.5 run function transport-roehre:v1klempner

#execute as @a[tag=EtiTranPR.1Klempner] at @s anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ if entity @s[distance=..0.1] run teleport @s ^ ^ ^0.3
#execute as @a[tag=EtiTranPR.1Klempner] at @s anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ run tag @s[distance=..0.1] add EtiTranPR.1Kriechen
#execute as @a[tag=EtiTranPR.1Kriechen] at @s rotated ~ 0 run teleport @s ^ ^ ^0.3

#execute as @a[tag=EtiTranPR.1Klempner,tag=!EtiTranPR.1Kriechen] at @s if block ^ ^-1 ^1 minecraft:lime_stained_glass if block ^ ^1 ^1 minecraft:lime_stained_glass run teleport @s ^ ^ ^0.3

#tag @a[tag=EtiTranPR.1Kriechen] remove EtiTranPR.1Kriechen
