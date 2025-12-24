# Wenn der Stock ausgewählt ist, erhält der jenige Spieler ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigBlZal.1Stock:true}] run tag @s add EtiBlZal.1Ausgewaehlt

# Wenn der Spieler gerade zum Slot mit dem Stock gewechselt hat, wird ihm ein Wert gegeben, sodass im Anschluss die Funktion geladen wird.
scoreboard players set @a[tag=EtiBlZal.1Ausgewaehlt,tag=!EtiBlZal.1Auswahl] PZBlZal.1Ausl -99

# Hat der Spieler den Stock ausgewählt und nicht den Wert null, so wird durch ihn die Auslöser-Funktion gestartet.
execute as @a[tag=EtiBlZal.1Ausgewaehlt] unless entity @s[scores={PZBlZal.1Ausl=0}] at @s align xyz run function block-zaehler:v1ausloeser

# Wenn der Spieler den Stock gerade ausgewählt hat oder ihn gerade nicht mehr auswählt, bekommt er das Etikett oder es wird entfernt.
tag @a[tag=EtiBlZal.1Ausgewaehlt,tag=!EtiBlZal.1Auswahl] add EtiBlZal.1Auswahl
tag @a[tag=!EtiBlZal.1Ausgewaehlt,tag=EtiBlZal.1Auswahl] remove EtiBlZal.1Auswahl

execute at @e[type=minecraft:marker,tag=EtiBlZal.1Position,tag=!EtiBlZal.1Koordinaten,sort=nearest,limit=2] if entity @p[tag=EtiBlZal.1Ausgewaehlt] run particle minecraft:dust{color:[1.000,0.000,1.000],scale:1} ~ ~ ~ 0.1 0.1 0.1 0 5 force @a[distance=..50]

execute at @n[type=minecraft:marker,tag=EtiBlZal.1Koordinaten,tag=EtiBlZal.1Start] if entity @p[tag=EtiBlZal.1Ausgewaehlt] run particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ~1 ~ ~ 0.5 0 0 0 5 force @a[distance=..50,tag=EtiBlZal.1Ausgewaehlt]
execute at @n[type=minecraft:marker,tag=EtiBlZal.1Koordinaten,tag=EtiBlZal.1Start] if entity @p[tag=EtiBlZal.1Ausgewaehlt] run particle minecraft:dust{color:[0.000,1.000,0.000],scale:1} ~ ~1 ~ 0 0.5 0 0 5 force @a[distance=..50,tag=EtiBlZal.1Ausgewaehlt]
execute at @n[type=minecraft:marker,tag=EtiBlZal.1Koordinaten,tag=EtiBlZal.1Start] if entity @p[tag=EtiBlZal.1Ausgewaehlt] run particle minecraft:dust{color:[0.000,0.000,1.000],scale:1} ~ ~ ~1 0 0 0.5 0 5 force @a[distance=..50,tag=EtiBlZal.1Ausgewaehlt]

execute at @n[type=minecraft:marker,tag=EtiBlZal.1Koordinaten,tag=EtiBlZal.1Ende] if entity @p[tag=EtiBlZal.1Ausgewaehlt] run particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ~-1 ~ ~ 0.5 0 0 0 5 force @a[distance=..50,tag=EtiBlZal.1Ausgewaehlt]
execute at @n[type=minecraft:marker,tag=EtiBlZal.1Koordinaten,tag=EtiBlZal.1Ende] if entity @p[tag=EtiBlZal.1Ausgewaehlt] run particle minecraft:dust{color:[0.000,1.000,0.000],scale:1} ~ ~-1 ~ 0 0.5 0 0 5 force @a[distance=..50,tag=EtiBlZal.1Ausgewaehlt]
execute at @n[type=minecraft:marker,tag=EtiBlZal.1Koordinaten,tag=EtiBlZal.1Ende] if entity @p[tag=EtiBlZal.1Ausgewaehlt] run particle minecraft:dust{color:[0.000,0.000,1.000],scale:1} ~ ~ ~-1 0 0 0.5 0 5 force @a[distance=..50,tag=EtiBlZal.1Ausgewaehlt]

# Das Etikett für die Auswahl des Stockes wird wieder entfernt.
tag @a[tag=EtiBlZal.1Ausgewaehlt] remove EtiBlZal.1Ausgewaehlt
