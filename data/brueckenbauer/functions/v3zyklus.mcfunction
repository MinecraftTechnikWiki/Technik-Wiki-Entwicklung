# Wenn ein Rüstungsständer mit entsprechenden Etikett platziert wurde, wird für diesen die Erstellen-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiBruB.3Erstellen] at @s run function brueckenbauer:v3erstellen

# Wenn sich in einem Umkreis von maximal zehn Blöcken ein Spieler aufhält, wird die Ausrichtungs-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiBruB.3Verleger] at @s if entity @p[distance=..10] rotated ~ 0 run function brueckenbauer:v3ausrichtung

# Wenn der Spieler im Umkreis ist und auch dabei auf dem Boden schleicht, wird die Brücken-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiBruB.3Verleger] at @s if entity @p[distance=..10,scores={PZBruB.3Schl=3..},nbt={OnGround:true}] rotated ~180 0 run function brueckenbauer:v3bruecke

# Wenn beim Bau der Brücke ein Rüstungsständer mit dem Pfeiler-Etikett erschienen ist, wird dieser mit der Funktion den Pfeiler errichten
execute as @e[type=armor_stand,tag=EtiBruB.3Pfeiler] at @s run function brueckenbauer:v3pfeiler

# Zuletzt werden alle Spieler, die mindestens drei Ticks lang geschlichen sind wieder zurück gesetzt
scoreboard players reset @a[scores={PZBruB.3Schl=3..}] PZBruB.3Schl
