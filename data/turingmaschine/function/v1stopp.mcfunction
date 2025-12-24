
scoreboard objectives remove PZTuriM.1Wert

data remove storage turingmaschine:v1daten "EigTuriM.1Tabelleneintrag"
data remove storage turingmaschine:v1daten "EigTuriM.1Zustandstabelle"
data remove storage turingmaschine:v1daten "EigTuriM.1Zustand"
data remove storage turingmaschine:v1daten "EigTuriM.1Alphabet"

clear @a minecraft:armor_stand[minecraft:custom_data~{EigTuriM.1Alle:true}]

tag @a[tag=EtiTuriM.1Auswahl] remove EtiTuriM.1Auswahl

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigTuriM.1Alle:true}] run kill @s
kill @e[tag=EtiTuriM.1Alle]
