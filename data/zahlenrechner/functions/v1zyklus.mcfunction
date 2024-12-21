# Wenn Spieler den Stock ausgewählkt haben, erhalten sie ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigZahlR.1Felder:true}] run tag @s add EtiZahlR.1Ausgewaehlt

# Wenn Spieler den Stock gerade erst ausgewählt haben, wird ihnen der Auslöser-Wert und die Position gesetzt.
scoreboard players set @a[tag=EtiZahlR.1Ausgewaehlt,tag=!EtiZahlR.1Auswahl] PZZahlR.1Wert -99

# Wenn Spieler den Stock ausgewählt haben und irgend einen Auslöser angeklickt haben, wird die Auslöser-Funktion gestartet.
execute as @a[tag=EtiZahlR.1Ausgewaehlt] unless entity @s[scores={PZZahlR.1Wert=0}] run function zahlenrechner:v1ausloeser

# Es wird ein Etikett gegeben oder genommen, je nach dem ob man gerade Stock ausgewählt hat, oder nicht.
tag @a[tag=EtiZahlR.1Ausgewaehlt,tag=!EtiZahlR.1Auswahl] add EtiZahlR.1Auswahl
tag @a[tag=!EtiZahlR.1Ausgewaehlt,tag=EtiZahlR.1Auswahl] remove EtiZahlR.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiZahlR.1Ausgewaehlt] remove EtiZahlR.1Ausgewaehlt
