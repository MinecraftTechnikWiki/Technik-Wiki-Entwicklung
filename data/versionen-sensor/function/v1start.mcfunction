

scoreboard objectives add PZVerSen.2Ver dummy ["Versionen-Sensor.2: ",{text:"Version",bold:true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Koordinaten messen können.
give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um zu erfassen ob","man in einer Höhle ist."],minecraft:custom_name={text:"Höhlen-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigHoehlS.1Alle:true,EigHoehlS.1Sensor:true},minecraft:enchantment_glint_override=true]





# Wenn der Spieler den Stock ausgewählt hat, erhält er zur Erkennung ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigHoehlS.1Sensor:true}] run tag @s add EtiHoehlS.1Ausgewaehlt

# Jede Sekunde wird geprüft ob der Spieler den Stock ausgewählt hat, nur dann wird die Sensor-Funktion geladen.
execute as @a[tag=EtiHoehlS.1Ausgewaehlt,tag=!EtiHoehlS.1Auswahl] run function versionen-sensor:v1sensor

# Wenn der Stock nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Auswahl] clear

# Um zu erfassen ob der Spieler gerade den Stock ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiHoehlS.1Ausgewaehlt,tag=!EtiHoehlS.1Auswahl] add EtiHoehlS.1Auswahl
tag @a[tag=!EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Auswahl] remove EtiHoehlS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiHoehlS.1Ausgewaehlt] remove EtiHoehlS.1Ausgewaehlt






execute store result score @s PZVerSen.2Ver run data get entity @s DataVersion

execute as @s[scores={PZVerSen.2Ver=1444..3839}] \
unless entity @s[scores={PZVerSen.2Ver=1519}] \
unless entity @s[scores={PZVerSen.2Ver=1628}] \
unless entity @s[scores={PZVerSen.2Ver=1631}] \
\
unless entity @s[scores={PZVerSen.2Ver=1952}] \
unless entity @s[scores={PZVerSen.2Ver=1957}] \
unless entity @s[scores={PZVerSen.2Ver=1963}] \
unless entity @s[scores={PZVerSen.2Ver=1968}] \
unless entity @s[scores={PZVerSen.2Ver=1976}] \
\
unless entity @s[scores={PZVerSen.2Ver=2225}] \
unless entity @s[scores={PZVerSen.2Ver=2227}] \
unless entity @s[scores={PZVerSen.2Ver=2230}] \
\
unless entity @s[scores={PZVerSen.2Ver=2566..2567}] \
unless entity @s[scores={PZVerSen.2Ver=2578}] \
unless entity @s[scores={PZVerSen.2Ver=2580}] \
unless entity @s[scores={PZVerSen.2Ver=2584}] \
unless entity @s[scores={PZVerSen.2Ver=2586}] \
\
unless entity @s[scores={PZVerSen.2Ver=2724}] \
unless entity @s[scores={PZVerSen.2Ver=2730}] \
\
unless entity @s[scores={PZVerSen.2Ver=2860}] \
unless entity @s[scores={PZVerSen.2Ver=2865}] \
unless entity @s[scores={PZVerSen.2Ver=2975}] \
\
unless entity @s[scores={PZVerSen.2Ver=3105}] \
unless entity @s[scores={PZVerSen.2Ver=3117}] \
unless entity @s[scores={PZVerSen.2Ver=3120}] \
unless entity @s[scores={PZVerSen.2Ver=3218}] \
unless entity @s[scores={PZVerSen.2Ver=3337}] \
\
unless entity @s[scores={PZVerSen.2Ver=3463}] \
unless entity @s[scores={PZVerSen.2Ver=3465}] \
unless entity @s[scores={PZVerSen.2Ver=3578}] \
unless entity @s[scores={PZVerSen.2Ver=3698}] \
unless entity @s[scores={PZVerSen.2Ver=3700}] \
unless entity @s[scores={PZVerSen.2Ver=3837}] \
unless entity @s[scores={PZVerSen.2Ver=3839}] \
\
unless entity @s[scores={PZVerSen.2Ver=3953}] \
unless entity @s[scores={PZVerSen.2Ver=3955}] \
\
run tag @s add EtiVerSen.2Entwicklung

execute store result score VarVerSen.2Wert PZVerSen.2Ver run data get entity @s DataVersion

execute if score VarVerSen.2Wert PZVerSen.2Ver matches 3840.. run return run tellraw @s ["Versionen-Sensor.2:\n",{text:"Du spielst mit einer neueren Version als 1.20.x!",color:"red",bold:true} ]



execute if score VarVerSen.2Wert PZVerSen.2Ver matches 1444..1631 run scoreboard players set @s PZVerSen.2Ver 13
execute if score VarVerSen.2Wert PZVerSen.2Ver matches 1519 run tag @s[scores={PZVerSen.2Ver=13}] add EtiVerSen.2Entwicklung






tellraw @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=3840..}] ["Versionen-Sensor.2:\n",{text:"Du spielst mit einer neueren Version als 1.20.x!",color:"red",bold:true} ]









scoreboard players set @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=1444..1631}] PZVerSen.2Ver 13





scoreboard players set @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=1901..1976}] PZVerSen.2Ver 14

scoreboard players set @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=2200..2230}] PZVerSen.2Ver 15

scoreboard players set @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=2504..2586}] PZVerSen.2Ver 16

scoreboard players set @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=2681..2730}] PZVerSen.2Ver 17

scoreboard players set @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=2834..2975}] PZVerSen.2Ver 18

scoreboard players set @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=3105..3120}] PZVerSen.2Ver 19

scoreboard players set @a[tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=3442..3839}] PZVerSen.2Ver 20




execute as @a[tag=!EtiVerSen.2Nachricht,tag=!EtiVerSen.2Entwicklungsversion,scores={PZVerSen.2Ver=13..1443}] run tellraw @s ["Versionen-Sensor.2:\n",{text:"Du spielst mit der Vollversion 1.",bold:true},{score:{name:"@s",objective:"PZVerSen.2Ver"},bold:true},{text:".x",bold:true} ]

execute as @a[tag=!EtiVerSen.2Nachricht,tag=EtiVerSen.2Entwicklungsversion,scores={PZVerSen.2Ver=13..1443}] run tellraw @s ["Versionen-Sensor.2:\n",{text:"Du spielst mit einer Entwicklungsversion der Vollversion 1.",bold:true},{score:{name:"@s",objective:"PZVerSen.2Ver"},bold:true},{text:".x",bold:true} ]



#tag @a[distance=..25,tag=!EtiVerSen.2Nachricht,scores={PZVerSen.2Ver=0..}] add EtiVerSen.2Nachricht






scoreboard objectives remove PZVerSen.2Ver

tag @a[tag=EtiVerSen.2Nachricht] remove EtiVerSen.2Nachricht

tag @a[tag=EtiVerSen.2Entwicklungsversion] remove EtiVerSen.2Entwicklungsversion



# Das Etikett zur Auswahl des Stockes, wird wieder entfernt, falls es noch vorhanden sind.
tag @a[tag=EtiHoehlS.1Auswahl] remove EtiHoehlS.1Auswahl

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigHoehlS.1Alle:true}]

# Falls der Stock auf dem Boden geworfen wurde, wird der Drop entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigHoehlS.1Alle:true}] run kill @s
