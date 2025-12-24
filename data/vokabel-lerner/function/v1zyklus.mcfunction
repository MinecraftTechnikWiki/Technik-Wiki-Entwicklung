# Wenn der Stock ausgewählt ist, erhält der jenige Spieler ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigVokLe.1Stock:true}] run tag @s add EtiVokLe.1Ausgewaehlt

# Wenn der Spieler gerade zum Slot mit dem Stock gewechselt hat, wird ihm ein Wert gegeben, sodass im Anschluss die Funktion geladen wird.
scoreboard players set @a[tag=EtiVokLe.1Ausgewaehlt,tag=!EtiVokLe.1Auswahl] PZVokLe.1Ausl -99

# Hat der Spieler den Stock ausgewählt und nicht den Wert null, so wird durch ihn die Auslöser-Funktion gestartet.
execute as @a[tag=EtiVokLe.1Ausgewaehlt] unless entity @s[scores={PZVokLe.1Ausl=0}] run function vokabel-lerner:v1ausloeser

# Wenn der Spieler den Stock gerade ausgewählt hat oder ihn gerade nicht mehr auswählt bekommt er das Etikett oder es wird entfernt.
tag @a[tag=EtiVokLe.1Ausgewaehlt,tag=!EtiVokLe.1Auswahl] add EtiVokLe.1Auswahl
tag @a[tag=!EtiVokLe.1Ausgewaehlt,tag=EtiVokLe.1Auswahl] remove EtiVokLe.1Auswahl

# Das Etikett für die Auswahl des Stockes wird wieder entfernt.
tag @a[tag=EtiVokLe.1Ausgewaehlt] remove EtiVokLe.1Ausgewaehlt
