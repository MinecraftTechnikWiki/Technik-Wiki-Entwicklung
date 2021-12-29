# Das Punkte-Ziel wird wieder entfernt.
scoreboard objectives remove PZManSV.1Wert

# Die beiden Mannschaften werden entfernt.
team remove TMManSV.1Team1
team remove TMManSV.1Team2

# Der Lederhelm wird aus dem Inventar entfernt.
clear @a minecraft:leather_helmet{EigManSV.1Alle:true}

# Der graue Betonboden wird an der Position des Markierers wieder entfernt.
execute at @e[type=minecraft:marker,tag=EtiManSV.1Plattform] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace minecraft:gray_concrete

# Alle Objekte mit dem Etikett werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigManSV.1Alle:true} } }] add EtiManSV.1Alle
kill @e[tag=EtiManSV.1Alle]
