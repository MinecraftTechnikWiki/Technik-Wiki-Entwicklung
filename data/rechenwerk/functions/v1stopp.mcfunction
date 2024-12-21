
scoreboard objectives remove PZRechW.1Ausl

data remove storage rechenwerk:v1daten "EigRechW.1Variable1"
data remove storage rechenwerk:v1daten "EigRechW.1Variable2"
data remove storage rechenwerk:v1daten "EigRechW.1Operator"

clear @a minecraft:stick[minecraft:custom_data~{EigRechW.1Alle:true}]

tag @a[tag=EtiRechW.1Auswahl] remove EtiRechW.1Auswahl

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigRechW.1Alle:true}] run kill @s
