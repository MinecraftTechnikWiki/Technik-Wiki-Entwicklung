# Um den Spieler einfacher erkennen zu können, wird ihm zeitweilig ein Etikett gegeben
tag @p[distance=..10,scores={PZBruB.1Schl=1..}] add EtiBruB.1Spieler

# Jedes Material des Spielers wird ausgelesen und in ein Punktestand-Ziel gespeichert
execute as @p[distance=..10,tag=EtiBruB.1Spieler] store result score @s PZBruB.1Gleis run clear @s minecraft:rail 0
execute as @p[distance=..10,tag=EtiBruB.1Spieler] store result score @s PZBruB.1Andes run clear @s minecraft:andesite 0
execute as @p[distance=..10,tag=EtiBruB.1Spieler] store result score @s PZBruB.1Stein run clear @s minecraft:stone 0

# Wenn die Anzahl der Materialien ausreichend ist, wird ihm die entsprechende Anzahl entfernt
clear @p[distance=..10,tag=EtiBruB.1Spieler,scores={PZBruB.1Gleis=2..,PZBruB.1Andes=2..,PZBruB.1Stein=10..}] minecraft:rail 1
clear @p[distance=..10,tag=EtiBruB.1Spieler,scores={PZBruB.1Gleis=2..,PZBruB.1Andes=2..,PZBruB.1Stein=10..}] minecraft:andesite 1
clear @p[distance=..10,tag=EtiBruB.1Spieler,scores={PZBruB.1Gleis=2..,PZBruB.1Andes=2..,PZBruB.1Stein=10..}] minecraft:stone 6

# Wenn der Brückenbauer für zwei Fahrspuren aktiviert wurde, werden weitere Materialien abgezogen
execute if entity @s[tag=EtiBruB.1ZweiSpuren] run clear @p[distance=..10,tag=EtiBruB.1Spieler,scores={PZBruB.1Gleis=2..,PZBruB.1Andes=2..,PZBruB.1Stein=10..}] minecraft:rail 1
execute if entity @s[tag=EtiBruB.1ZweiSpuren] run clear @p[distance=..10,tag=EtiBruB.1Spieler,scores={PZBruB.1Gleis=2..,PZBruB.1Andes=2..,PZBruB.1Stein=10..}] minecraft:stone 4

# Hat der Spieler genug Materialien bei sich gehabt, so wird die Funktion für das Brücken verlegen aufgerufen
execute if entity @p[tag=EtiBruB.1Spieler,scores={PZBruB.1Gleis=2..,PZBruB.1Andes=2..,PZBruB.1Stein=10..}] run function brueckenbauer:v1bruecke_verlegen_1
execute as @p[distance=..10,tag=EtiBruB.1Spieler] unless entity @s[scores={PZBruB.1Gleis=2..,PZBruB.1Andes=2..,PZBruB.1Stein=10..}] run tellraw @s ["Brückenbauer.1 ",{"text":"Du hast zu wenig Blöcke bei dir!","bold":true}]

# Zu guter letzt wird das Etikett zur vereinfachten Erkennung des Spielers wieder entfernt
tag @p[distance=..10,tag=EtiBruB.1Spieler] remove EtiBruB.1Spieler
