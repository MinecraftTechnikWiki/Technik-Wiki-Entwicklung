
scoreboard objectives remove PZKartDar.1Ausl

data remove storage kartendarstellung:v1daten "EigKartDar.1Bloecke"
data remove storage kartendarstellung:v1daten "EigKartDar.1Argumente"

tag @a[tag=EtiKartDar.1Auswahl] remove EtiKartDar.1Auswahl

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigKartDar.1Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird ebenfalls entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigKartDar.1Alle:true}] run kill @s
kill @e[tag=EtiKartDar.1Alle]