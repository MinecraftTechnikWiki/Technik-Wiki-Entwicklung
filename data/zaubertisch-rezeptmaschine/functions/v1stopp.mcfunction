
scoreboard objectives remove PZZaRezM.1Wert

scoreboard objectives remove PZZaRezM.1Fort
scoreboard objectives remove PZZaRezM.1Dau
scoreboard objectives remove PZZaRezM.1Mat

data remove storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"
data remove storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber"
data remove storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher"

clear @a[nbt={Inventory:[{tag:{EigZaRezM.1Alle:true} } ] }] #zaubertisch-rezeptmaschine:v1rezepte

execute at @e[type=minecraft:item_frame,tag=EtiZaRezM.1Spender] run data remove block ~ ~-1 ~ Items
execute at @e[type=minecraft:item_frame,tag=EtiZaRezM.1Spender] if block ~ ~-1 ~ minecraft:dropper run setblock ~ ~-1 ~ minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{EigZaRezM.1Alle:true} } }] add EtiZaRezM.1Alle
kill @e[tag=EtiZaRezM.1Alle]
