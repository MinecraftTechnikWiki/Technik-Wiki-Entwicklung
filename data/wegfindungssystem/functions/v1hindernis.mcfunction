
tag @s add EtiWegFS.1Hindernis
data merge entity @s {ArmorItems:[{},{},{},{}]}
tag @s add EtiWegFS.1Selbst

scoreboard players operation @s PZWegFS.1Vergl = @s PZWegFS.1Wert
scoreboard players operation @s PZWegFS.1Vergl -= #VarWegFS.1Vorgaenger PZWegFS.1Wert
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~1 ~ #wegfindungssystem:v1nichtsolide as @e[tag=EtiWegFS.1Knoten,distance=..1.2] at @s if entity @s[tag=!EtiWegFS.1NichtSeite] if score @s PZWegFS.1Wert = @e[tag=EtiWegFS.1Selbst,limit=1] PZWegFS.1Vergl run function wegfindungssystem:v1schritte
tag @s remove EtiWegFS.1Selbst

kill @s[tag=EtiWegFS.1Hindernis]
