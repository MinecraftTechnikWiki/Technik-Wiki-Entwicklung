
scoreboard objectives remove PZBlZal.1Ausl
scoreboard objectives remove PZBlZal.1Wert

data remove storage block-zaehler:v1daten "EigBlZal.1Zaehlen"
data remove storage block-zaehler:v1daten "EigBlZal.1Bloecke"
data remove storage block-zaehler:v1daten "EigBlZal.1Luefte"
data remove storage block-zaehler:v1daten "EigBlZal.1Luft"
data remove storage block-zaehler:v1daten "EigBlZal.1Start"
data remove storage block-zaehler:v1daten "EigBlZal.1Ende"
data remove storage block-zaehler:v1daten "EigBlZal.1Position"
data remove storage block-zaehler:v1daten "EigBlZal.1Argumente"
data remove storage block-zaehler:v1daten "EigBlZal.1Listenelement"
data remove storage block-zaehler:v1daten "EigBlZal.1Liste"

tag @a[tag=EtiBlZal.1Auswahl] remove EtiBlZal.1Auswahl

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigBlZal.1Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird ebenfalls entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBlZal.1Alle:true}] run kill @s
kill @e[type=minecraft:marker,tag=EtiBlZal.1Alle]
