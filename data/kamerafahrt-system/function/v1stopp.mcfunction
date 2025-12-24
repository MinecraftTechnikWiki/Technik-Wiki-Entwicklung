
scoreboard objectives remove PZKamFah.1Ausl
scoreboard objectives remove PZKamFah.1Wert

data remove storage kamerafahrt-system:v1daten "EigKamFah.1Kamera"

tag @a[tag=EtiKamFah.1Auswahl] remove EtiKamFah.1Auswahl

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigKamFah.1Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird ebenfalls entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigKamFah.1Alle:true}] run kill @s
kill @e[type=minecraft:marker,tag=EtiKamFah.1Alle]