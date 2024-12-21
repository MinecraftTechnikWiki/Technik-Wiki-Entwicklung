# Das Punkte-Ziel wird wieder entfernt.
scoreboard objectives remove PZManSA.1Wert

# Die beiden Mannschaften werden entfernt.
team remove TMManSA.1Team1
team remove TMManSA.1Team2

# Der Lederhelm wird aus dem Inventar entfernt.
clear @a *[minecraft:custom_data~{EigManSA.1Alle:true}]

# Der graue Betonboden wird an der Position des Markierers wieder entfernt.
execute at @e[type=minecraft:marker,tag=EtiManSA.1Wartesaal] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace minecraft:gray_concrete

# Alle Objekte mit dem Etikett werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigManSA.1Alle:true}] run kill @s
kill @e[tag=EtiManSA.1Alle]
