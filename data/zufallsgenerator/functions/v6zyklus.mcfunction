# Wenn Spieler den Stock ausgewählkt haben, erhalten sie ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigZufG.6Felder:true} } }] add EtiZufG.6Ausgewaehlt

# Wenn Spieler den Stock gerade erst ausgewählt haben, wird ihnen der Auslöser-Wert und die Position gesetzt.
scoreboard players set @a[tag=EtiZufG.6Ausgewaehlt,tag=!EtiZufG.6Auswahl] PZZufG.6Wert -99
scoreboard players add @a[tag=EtiZufG.6Ausgewaehlt,tag=!EtiZufG.6Auswahl] PZZufG.6Pos 0

# Wenn Spieler den Stock ausgewählt haben und irgend einen Auslöser angeklickt haben, wird die Auslöser-Funktion gestartet.
execute as @a[tag=EtiZufG.6Ausgewaehlt] unless entity @s[scores={PZZufG.6Wert=0}] run function zufallsgenerator:v6ausloeser

# Es wird ein Etikett gegeben oder genommen, je nach dem ob man gerade Stock ausgewählt hat, oder nicht.
tag @a[tag=EtiZufG.6Ausgewaehlt,tag=!EtiZufG.6Auswahl] add EtiZufG.6Auswahl
tag @a[tag=!EtiZufG.6Ausgewaehlt,tag=EtiZufG.6Auswahl] remove EtiZufG.6Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiZufG.6Ausgewaehlt] remove EtiZufG.6Ausgewaehlt
