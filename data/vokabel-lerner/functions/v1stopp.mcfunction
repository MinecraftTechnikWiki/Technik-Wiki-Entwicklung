
scoreboard objectives remove PZVokLe.1Ausl

data remove storage vokabel-lerner:v1daten "EigVokLe.1Sprache"
data remove storage vokabel-lerner:v1daten "EigVokLe.1Woerter"
data remove storage vokabel-lerner:v1daten "EigVokLe.1Worte"
data remove storage vokabel-lerner:v1daten "EigVokLe.1Wort"

tag @a[tag=EtiVokLe.1Auswahl] remove EtiVokLe.1Auswahl

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigVokLe.1Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird ebenfalls entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigVokLe.1Alle:true}] run kill @s
