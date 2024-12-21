
scoreboard objectives remove PZZahlR.1Wert

data remove storage zahlenrechner:v1daten "EigZahlR.1Term"
data remove storage zahlenrechner:v1daten "EigZahlR.1Variable2"
data remove storage zahlenrechner:v1daten "EigZahlR.1Operator"

# Das Etikett zur Auswahl des Stockes wird entfernt.
tag @a[tag=EtiZahlR.1Auswahl] remove EtiZahlR.1Auswahl
tag @a[tag=EtiZahlR.1Zahl] remove EtiZahlR.1Zahl

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigZahlR.1Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird ebenfalls entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigZahlR.1Alle:true}] run kill @s
