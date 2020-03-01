# Das Feld an der aktuellen Position wird ausgewählt und erhält zur Erkennung ein Etikett.
execute as @e[type=minecraft:armor_stand,tag=EtiFeld.1Inhalt,tag=EtiFeld.1AlleFelder] if score @s PZFeld.1Pos = #VarFeld.1AktuellePosition PZFeld.1Pos run tag @s add EtiFeld.1Auswahl

# Erhöht den Wert des aktuellen Feldes um eins.
execute if entity @s[tag=EtiFeld.1WertAnheben] store result score #VarFeld.1WertInhalt PZFeld.1Wert run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiFeld.1Auswahl,sort=nearest,limit=1] PZFeld.1Wert 1
execute at @s[tag=EtiFeld.1WertAnheben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"] + 1 = ","bold":true},{"score":{"name":"#VarFeld.1WertInhalt","objective":"PZFeld.1Wert"},"bold":true,"color":"dark_purple"} ]

# Gibt den Wert des aktuellen Feldes aus.
execute if entity @s[tag=EtiFeld.1WertAusgeben] run scoreboard players operation #VarFeld.1WertInhalt PZFeld.1Wert = @e[type=minecraft:armor_stand,tag=EtiFeld.1Auswahl,sort=nearest,limit=1] PZFeld.1Wert
execute at @s[tag=EtiFeld.1WertAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"] == ","bold":true},{"score":{"name":"#VarFeld.1WertInhalt","objective":"PZFeld.1Wert"},"bold":true,"color":"dark_purple"} ]

# Verringert den Wert des aktuellen Feldes.
execute if entity @s[tag=EtiFeld.1WertVerringern] store result score #VarFeld.1WertInhalt PZFeld.1Wert run scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiFeld.1Auswahl,sort=nearest,limit=1] PZFeld.1Wert 1
execute at @s[tag=EtiFeld.1WertVerringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"] - 1 = ","bold":true},{"score":{"name":"#VarFeld.1WertInhalt","objective":"PZFeld.1Wert"},"bold":true,"color":"dark_purple"} ]

# Wenn der Wert des Feldes geändert wurde, wird der Name des Feldes aktualisiert.
data modify entity @e[type=minecraft:armor_stand,tag=EtiFeld.1Auswahl,sort=nearest,limit=1] CustomName set value '{"text":""}'
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.1Schild] run data merge block ~ ~ ~ {Text1:'{"score":{"name":"#VarFeld.1WertInhalt","objective":"PZFeld.1Wert"},"color":"dark_purple","bold":true}'}
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.1Schild] run data modify entity @e[type=minecraft:armor_stand,tag=EtiFeld.1Auswahl,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1

# Das Etikett zur Erkennung wird wieder entfernt.
tag @e[type=minecraft:armor_stand,tag=EtiFeld.1Auswahl,sort=nearest,limit=1] remove EtiFeld.1Auswahl
