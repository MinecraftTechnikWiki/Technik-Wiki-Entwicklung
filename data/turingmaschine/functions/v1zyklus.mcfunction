
execute as @e[type=minecraft:armor_stand,tag=EtiTuriM.1Erstellen] at @s run function turingmaschine:v1erstellen

tag @a[nbt={SelectedItem:{tag:{EigTuriM.1Steuern:true} } }] add EtiTuriM.1Ausgewaehlt
scoreboard players set @a[tag=EtiTuriM.1Ausgewaehlt,tag=!EtiTuriM.1Auswahl] PZTuriM.1Wert -99
execute if entity @e[type=minecraft:armor_stand,tag=EtiTuriM.1Turingmaschine] as @a[tag=EtiTuriM.1Ausgewaehlt] unless entity @s[scores={PZTuriM.1Wert=0}] run function turingmaschine:v1ausloeser
tag @a[tag=EtiTuriM.1Ausgewaehlt,tag=!EtiTuriM.1Auswahl] add EtiTuriM.1Auswahl
tag @a[tag=!EtiTuriM.1Ausgewaehlt,tag=EtiTuriM.1Auswahl] remove EtiTuriM.1Auswahl
tag @a[tag=EtiTuriM.1Ausgewaehlt] remove EtiTuriM.1Ausgewaehlt
