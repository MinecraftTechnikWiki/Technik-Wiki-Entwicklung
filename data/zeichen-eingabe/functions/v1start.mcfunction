# Das Punktestand-Ziel für den Auslöser wird erstellt.
scoreboard objectives add PZZeiEin.1Taste trigger ["Zeichen-Eingabe.1: ",{"text":"Tastenklick","bold":true}]

# Zwei Partikelwolken werden erstellt, welche die eingetippten Zeichen speichern
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiZeiEin.1Alle","EtiZeiEin.1Zeichen"],CustomName:'{"text":"","color":"gray"}'}
summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiZeiEin.1Alle","EtiZeiEin.1Zeichenkette"],CustomName:'{"text":"","color":"gray"}'}

# An der Position der Partikelwolke wird ein Schild aufgestellt, welches für das Verbinden von Zeichen verwendet wird.
execute at @e[tag=EtiZeiEin.1Zeichen] run setblock ~ ~ ~ minecraft:oak_sign{Text1:'[{"text":""}]'} replace
