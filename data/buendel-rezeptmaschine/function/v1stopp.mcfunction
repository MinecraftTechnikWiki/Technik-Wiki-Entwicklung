
scoreboard objectives remove PZBuRezM.1Buend

data remove storage buendel-rezeptmaschine:v1daten "EigBuRezM.1Buendel"

clear @a *[minecraft:custom_data~{EigBuRezM.1Alle:true}]

tag @a[tag=EtiBuRezM.1Auswahl] remove EtiBuRezM.1Auswahl

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBuRezM.1Alle:true}] run kill @s
kill @e[tag=EtiBuRezM.1Alle]
