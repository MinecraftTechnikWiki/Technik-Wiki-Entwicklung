# Dem Knoten-Rüstungsständer werden zwei Etiketten gegeben und der Kopfslot wird geleert.
data merge entity @s {ArmorItems:[{},{},{},{}]}
tag @s add EtiWegFS.1Hindernis
tag @s add EtiWegFS.1Selbst

# Der aktuelle Punktestand wird kopiert und anschließend zieht der Wert der Vorgänger-Variable sich von diesem ab.
scoreboard players operation @s PZWegFS.1Vergl = @s PZWegFS.1Wert
scoreboard players operation @s PZWegFS.1Vergl -= #VarWegFS.1Vorgaenger PZWegFS.1Wert

# An der aktuellen zentrierten Position muss sich ein solider Block befinden, dann wird in einem Radius von 1,2 Metern nach Knoten-Rüstungsständern geschaut die zur Seite stehen und den gleichen Wert besitzen. Von diesen wird die Schritte-Funktion aufgerufen.
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~1 ~ #wegfindungssystem:v1nichtsolide as @e[tag=EtiWegFS.1Knoten,distance=..1.2] at @s if entity @s[tag=!EtiWegFS.1NichtSeite] if score @s PZWegFS.1Wert = @e[tag=EtiWegFS.1Selbst,limit=1] PZWegFS.1Vergl run function wegfindungssystem:v1schritte
tag @s remove EtiWegFS.1Selbst

# Der eigene Rüstungsständer wird entfernt, wenn er das Etikett immer noch besitzt.
kill @s[tag=EtiWegFS.1Hindernis]
