# Das Feld an der aktuellen Position wird ausgewählt und erhält zur Erkennung ein Etikett.
execute as @e[type=minecraft:armor_stand,tag=EtiFeld.p1FeldDimension1,tag=EtiFeld.p1AlleFelder] if score @s PZFeld.p1Pos = #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos at @s align xyz positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=64,dy=0.4,dz=0.4,type=minecraft:armor_stand,tag=EtiFeld.p1Inhalt] if score @s PZFeld.p1Pos = #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos run tag @s add EtiFeld.p1Auswahl

# Erhöht den Wert des aktuellen Feldes um eins und speichert ihn zusätzlich in eine Variable um ihn in der tellraw-Nachricht nutzen zu können.
execute if entity @s[tag=EtiFeld.p1WertAnheben] store result score #VarFeld.p1WertInhalt PZFeld.p1Wert run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiFeld.p1Auswahl,sort=nearest,limit=1] PZFeld.p1Wert 1

execute at @s[tag=EtiFeld.p1WertAnheben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension2","objective":"PZFeld.p1Pos"},"bold":true,"color":"red"},{"text":"] + 1 = ","bold":true},{"score":{"name":"#VarFeld.p1WertInhalt","objective":"PZFeld.p1Wert"},"bold":true,"color":"dark_purple"} ]

# Gibt den Wert des aktuellen Feldes aus.
execute if entity @s[tag=EtiFeld.p1WertAusgeben] run scoreboard players operation #VarFeld.p1WertInhalt PZFeld.p1Wert = @e[type=minecraft:armor_stand,tag=EtiFeld.p1Auswahl,sort=nearest,limit=1] PZFeld.p1Wert
execute at @s[tag=EtiFeld.p1WertAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension2","objective":"PZFeld.p1Pos"},"bold":true,"color":"red"},{"text":"] == ","bold":true},{"score":{"name":"#VarFeld.p1WertInhalt","objective":"PZFeld.p1Wert"},"bold":true,"color":"dark_purple"} ]

# Verringert den Wert des aktuellen Feldes.
execute if entity @s[tag=EtiFeld.p1WertVerringern] store result score #VarFeld.p1WertInhalt PZFeld.p1Wert run scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiFeld.p1Auswahl,sort=nearest,limit=1] PZFeld.p1Wert 1

execute at @s[tag=EtiFeld.p1WertVerringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension2","objective":"PZFeld.p1Pos"},"bold":true,"color":"red"},{"text":"] - 1 = ","bold":true},{"score":{"name":"#VarFeld.p1WertInhalt","objective":"PZFeld.p1Wert"},"bold":true,"color":"dark_purple"} ]

# Wenn der Wert des Feldes geändert wurde, wird der Name des Feldes aktualisiert.
data modify entity @e[type=minecraft:armor_stand,tag=EtiFeld.p1Auswahl,sort=nearest,limit=1] CustomName set value '{"text":""}'
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.p1Schild] run data merge block ~ ~ ~ {Text1:'{"score":{"name":"#VarFeld.p1WertInhalt","objective":"PZFeld.p1Wert"},"color":"dark_purple","bold":true}'}
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.p1Schild] run data modify entity @e[type=minecraft:armor_stand,tag=EtiFeld.p1Auswahl,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1

# Das Etikett zur Erkennung wird wieder entfernt.
tag @e[type=minecraft:armor_stand,tag=EtiFeld.p1Auswahl,sort=nearest,limit=1] remove EtiFeld.p1Auswahl
