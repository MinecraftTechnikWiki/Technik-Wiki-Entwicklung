# Falls der Spieler keine Nummer besitzt wird die Funktion dafür geladen
execute as @a[tag=!EtiZone.1SpielerNummer] run function zonen-system:v1nummer

# Hat der Spieler eine Truhe geworfen, wird die Funktion dafür geladen
execute as @a[scores={PZZone.1Nr=1..,PZZone.1Fass=1..}] at @s run function zonen-system:v1optionen

# Sobald eine Option angeklickt hat, wird die Funktion dafür gestartet
execute as @a[scores={PZZone.1Ausl=1..}] at @s run function zonen-system:v1zone

# Immer wenn der Spieler auf seiner eigenen Zone ist, erhält er Rechte für die Zonenoptionen und einmal die Optionsnachricht
execute as @a[scores={PZZone.1Ausl=0}] at @s if score @e[distance=..8,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone"] PZZone.1Nr = @s PZZone.1Nr run scoreboard players enable @s PZZone.1Ausl
execute at @a[tag=!EtiZone.1Betreten] at @e[distance=..25,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Zone] positioned ~-7 ~-15 ~-7 if score @e[sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Zone] PZZone.1Nr = @s[dx=15,dy=30,dz=15] PZZone.1Nr run function zonen-system:v1optionen

# Spieler die eine Zone betreten erhalten eine Nachricht, auf welchen Grundstück sie gerade sind
execute as @a[tag=!EtiZone.1Betreten] at @s at @e[distance=..25,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Zone] positioned ~-7 ~-15 ~-7 run tellraw @s[dx=15,dy=30,dz=15] ["Zonen-System.1:\n",{"text":"zone[","bold":true},{"score":{"name":"@e[sort=nearest,limit=1,type=minecraft:armor_stand,name=\"Zone\",tag=EtiZone.1Alle]","objective":"PZZone.1Nr"},"bold":true,"color":"dark_purple"},{"text":"] UND ","bold":true},{"score":{"name":"@s","objective":"PZZone.1Nr"},"bold":true,"color":"dark_purple"}]

# Spieler die auf fremden Zonen laufen werden in den Abenteuermodus gesetzt
execute as @a[gamemode=survival,tag=!EtiZone.1Betreten] at @s at @e[distance=..25,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Zone] positioned ~-7 ~-15 ~-7 unless score @e[sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Zone] PZZone.1Nr = @s[dx=15,dy=30,dz=15] PZZone.1Nr run gamemode adventure @s
execute as @a[tag=!EtiZone.1Betreten] at @s at @e[distance=..25,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Alle] positioned ~-7 ~-15 ~-7 run tag @s[dx=15,dy=30,dz=15] add EtiZone.1Betreten
execute as @a[tag=EtiZone.1Betreten] at @s at @e[distance=..25,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Alle] positioned ~-7 ~-15 ~-7 unless entity @s[dx=15,dy=30,dz=15] run tag @s remove EtiZone.1Betreten

# Falls zwei Zonen von verschiedenen Spielern sehr nah beieinander sind, wird dennoch ein Wechsel der Zone erkannt
execute as @a at @s unless score @e[distance=..25,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Zone] PZZone.1Nr = @s PZZone.1ZonenNr run tag @s remove EtiZone.1Betreten
execute as @a at @s run scoreboard players operation @s PZZone.1ZonenNr = @e[distance=..25,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Zone] PZZone.1Nr

# Spieler die außerhalb von Zonen laufen werden wieder in den Überlebensmodus gesetzt
gamemode survival @a[gamemode=adventure,tag=!EtiZone.1Betreten]

# Wenn im Radius von 25 Blöcken eine Zone sich noch im Aufbau befindet, wird die Funktion gestartet
execute as @a at @s at @e[distance=..25,sort=nearest,limit=1,type=minecraft:armor_stand,name="Zone",tag=!EtiZone.1Zone] align xz positioned ~0.5 ~ ~0.5 run function zonen-system:v1partikel
