# Immer wenn der Startpunkt-Rüstungsständer erstellt wurde, wird ein vorhandener Weg wieder gelöscht.
kill @e[tag=EtiWegFS.1Knoten]

# Der Startpunkt-Rüstungsständer erhält drei neue Etiketten, sodass sein Erstellen-Etikett entfernt wird und er bekommt den Wert null.
data merge entity @s {Tags:["EtiWegFS.1Alle","EtiWegFS.1Knoten","EtiWegFS.1Start"]}
scoreboard players set @e[tag=EtiWegFS.1Start] PZWegFS.1Wert 0
