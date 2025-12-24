

# Wenn der Stock ausgewählt ist, erhält der jenige Spieler ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigKamFah.1Stock:true}] run tag @s add EtiKamFah.1Ausgewaehlt

# Wenn der Spieler gerade zum Slot mit dem Stock gewechselt hat, wird ihm ein Wert gegeben, sodass im Anschluss die Funktion geladen wird.
scoreboard players set @a[tag=EtiKamFah.1Ausgewaehlt,tag=!EtiKamFah.1Auswahl] PZKamFah.1Ausl -99

# Hat der Spieler den Stock ausgewählt und nicht den Wert null, so wird durch ihn die Auslöser-Funktion gestartet.
execute as @a[tag=EtiKamFah.1Ausgewaehlt] unless entity @s[scores={PZKamFah.1Ausl=0}] at @s align xyz run function kamerafahrt-system:v1ausloeser

# Wenn der Spieler den Stock gerade ausgewählt hat oder ihn gerade nicht mehr auswählt bekommt er das Etikett oder es wird entfernt.
tag @a[tag=EtiKamFah.1Ausgewaehlt,tag=!EtiKamFah.1Auswahl] add EtiKamFah.1Auswahl
tag @a[tag=!EtiKamFah.1Ausgewaehlt,tag=EtiKamFah.1Auswahl] remove EtiKamFah.1Auswahl

#execute at @e[type=minecraft:marker,tag=EtiKamFah.1Position,tag=!EtiKamFah.1Koordinaten,sort=nearest,limit=2] if entity @p[tag=EtiKamFah.1Ausgewaehlt] run particle minecraft:dust{color:[100.0,0.0,200.0],scale:1.0} ~ ~ ~ 0.1 0.1 0.1 0 5 force @a[distance=..50]

#execute at @n[type=minecraft:marker,tag=EtiKamFah.1Koordinaten,tag=EtiKamFah.1Start] if entity @p[tag=EtiKamFah.1Ausgewaehlt] run particle minecraft:dust{color:[255.0,0.0,0.0],scale:1.0} ~1 ~ ~ 0.5 0 0 0 5 force @a[distance=..50,tag=EtiKamFah.1Ausgewaehlt]

#execute at @n[type=minecraft:marker,tag=EtiKamFah.1Koordinaten,tag=EtiKamFah.1Ende] if entity @p[tag=EtiKamFah.1Ausgewaehlt] run particle minecraft:dust{color:[255.0,0.0,0.0],scale:1.0} ~-1 ~ ~ 0.5 0 0 0 5 force @a[distance=..50,tag=EtiKamFah.1Ausgewaehlt]

# Das Etikett für die Auswahl des Stockes wird wieder entfernt.
tag @a[tag=EtiKamFah.1Ausgewaehlt] remove EtiKamFah.1Ausgewaehlt


execute as @e[type=minecraft:armor_stand,tag=EtiKamFah.1Kamera] at @e[type=minecraft:marker,tag=EtiKamFah.1Position] if score @s PZKamFah.1Ausl = @n[type=minecraft:marker,tag=EtiKamFah.1Position] PZKamFah.1Ausl run rotate @s facing ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=EtiKamFah.1Kamera] at @s run teleport @s ^ ^ ^0.1 ~ ~

execute as @e[type=minecraft:armor_stand,tag=EtiKamFah.1Kamera] at @s if score @s PZKamFah.1Ausl = @n[distance=..0.2,type=minecraft:marker,tag=EtiKamFah.1Position,tag=EtiKamFah.1Stopp] PZKamFah.1Ausl run kill @s

execute as @e[type=minecraft:armor_stand,tag=EtiKamFah.1Kamera] at @s if score @s PZKamFah.1Ausl = @n[distance=..0.2,type=minecraft:marker,tag=EtiKamFah.1Position] PZKamFah.1Ausl run scoreboard players add @s PZKamFah.1Ausl 1

