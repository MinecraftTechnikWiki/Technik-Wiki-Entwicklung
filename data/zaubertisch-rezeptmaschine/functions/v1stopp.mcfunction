
scoreboard objectives remove PZZaRezM.1Wert

scoreboard objectives remove PZZaRezM.1Fort
scoreboard objectives remove PZZaRezM.1Dau
scoreboard objectives remove PZZaRezM.1Mat

data remove storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"
data remove storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber"
data remove storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher"

clear @a[nbt={Inventory:[{components:{"minecraft:custom_data":{EigZaRezM.1Alle:true} } } ] }] #zaubertisch-rezeptmaschine:v1rezepte

execute at @e[type=minecraft:item_frame,tag=EtiZaRezM.1Spender] run data remove block ~ ~-1 ~ Items
execute at @e[type=minecraft:item_frame,tag=EtiZaRezM.1Spender] if block ~ ~-1 ~ minecraft:dropper run setblock ~ ~-1 ~ minecraft:air replace

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigZaRezM.1Alle:true}] run kill @s
kill @e[tag=EtiZaRezM.1Alle]
