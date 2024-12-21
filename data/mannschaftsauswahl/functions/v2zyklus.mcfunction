# Wenn Spieler den Stock ausgewählt haben, wird ihnen das Etikett gegeben.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigManSA.2Stock:true}] run tag @s add EtiManSA.2Ausgewaehlt

# Wenn Spieler den Stock gerade erst ausgewählt haben, wird ihnen der Wert auf -99 gesetzt.
scoreboard players set @a[tag=EtiManSA.2Ausgewaehlt,tag=!EtiManSA.2Auswahl] PZManSA.2Ausl -99

# Wenn Spieler den Stock gerade auswählen, wird ihnen noch eine Nachricht geschickt.
execute as @a[tag=EtiManSA.2Ausgewaehlt] unless entity @s[scores={PZManSA.2Ausl=0}] run function mannschaftsauswahl:v2ausloeser

# Es wird ein Etikett gegeben oder genommen, je nach dem ob man gerade den Stock ausgewählt hat, oder nicht.
tag @a[tag=EtiManSA.2Ausgewaehlt,tag=!EtiManSA.2Auswahl] add EtiManSA.2Auswahl
tag @a[tag=!EtiManSA.2Ausgewaehlt,tag=EtiManSA.2Auswahl] remove EtiManSA.2Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiManSA.2Ausgewaehlt] remove EtiManSA.2Ausgewaehlt
