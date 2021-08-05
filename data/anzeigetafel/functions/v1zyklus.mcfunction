
execute as @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1Rangliste,tag=EtiAnzTaf.1Mitstreiter] run function anzeigetafel:v1mitstreiter

# Wenn der Stock ausgewählt ist, erhält der jenige Spieler ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigAnzTaf.1Tafel:true} } }] add EtiAnzTaf.1Ausgewaehlt

# Wenn der Spieler gerade zum Slot mit dem Rüstungsständer gewechselt hat, wird ihm ein Wert gegeben, sodass im Anschluss die Auslöser-Funktion geladen wird.
scoreboard players set @a[tag=EtiAnzTaf.1Ausgewaehlt,tag=!EtiAnzTaf.1Auswahl] PZAnzTaf.1Ausl -99

# Hat der Spieler den Stock ausgewählt und nicht den Wert null, so wird durch ihn die Auslöser-Funktion gestartet.
execute as @a[tag=EtiAnzTaf.1Ausgewaehlt] unless entity @s[scores={PZAnzTaf.1Ausl=0}] run function anzeigetafel:v1ausloeser

# Wenn der Spieler den Stock gerade ausgewählt hat oder ihne gerade nicht mehr auswählt bekommt er das Etikett oder es wird entfernt.
tag @a[tag=EtiAnzTaf.1Ausgewaehlt,tag=!EtiAnzTaf.1Auswahl] add EtiAnzTaf.1Auswahl
tag @a[tag=!EtiAnzTaf.1Ausgewaehlt,tag=EtiAnzTaf.1Auswahl] remove EtiAnzTaf.1Auswahl

# Das Etikett für die Auswahl des Stockes wird wieder entfernt.
tag @a[tag=EtiAnzTaf.1Ausgewaehlt] remove EtiAnzTaf.1Ausgewaehlt

scoreboard players add VarAnzTaf.1Tick PZAnzTaf.1Ausl 1
execute if score VarAnzTaf.1Tick PZAnzTaf.1Ausl matches 20.. as @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1Tafel] at @s run function anzeigetafel:v1tafel
execute if score VarAnzTaf.1Tick PZAnzTaf.1Ausl matches 20.. run scoreboard players set VarAnzTaf.1Tick PZAnzTaf.1Ausl 0
