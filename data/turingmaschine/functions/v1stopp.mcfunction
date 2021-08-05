
scoreboard objectives remove PZTuriM.1Wert

data remove storage turingmaschine:v1daten "EigTuriM.1Tabelleneintrag"
data remove storage turingmaschine:v1daten "EigTuriM.1Zustandstabelle"
data remove storage turingmaschine:v1daten "EigTuriM.1Zustand"
data remove storage turingmaschine:v1daten "EigTuriM.1Alphabet"

clear @a minecraft:armor_stand{EigTuriM.1Alle:true}

tag @a[tag=EtiTuriM.1Auswahl] remove EtiTuriM.1Auswahl

tag @e[type=minecraft:item,nbt={Item:{tag:{EigTuriM.1Alle:true} } }] add EtiTuriM.1Alle
kill @e[tag=EtiTuriM.1Alle]
