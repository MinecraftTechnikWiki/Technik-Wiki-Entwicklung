execute as @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1,tag=EtiFeld.p2AlleFelder,sort=nearest] if score @s PZFeld.p2Pos = #VarFeld.p2AktuellePositionDimension1 PZFeld.p2Pos at @s positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=64,dy=0.2,dz=0.2,type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension2] if score @s PZFeld.p2Pos = #VarFeld.p2AktuellePositionDimension2 PZFeld.p2Pos at @s positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=0.2,dy=0.2,dz=64,type=minecraft:armor_stand,tag=EtiFeld.p2Inhalt] if score @s PZFeld.p2Pos = #VarFeld.p2AktuellePositionDimension3 PZFeld.p2Pos run tag @s add EtiFeld.p2Auswahl

# Erhöht den Wert des aktuellen Feldes um eins und speichert ihn zusätzlich in eine Variable um ihn in der tellraw-Nachricht nutzen zu können.
execute if entity @s[tag=EtiFeld.p2WertAnheben] store result score #VarFeld.p2WertInhalt PZFeld.p2Wert run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiFeld.p2Auswahl,sort=nearest,limit=1] PZFeld.p2Wert 1

execute at @s[tag=EtiFeld.p2WertAnheben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.2:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension1","objective":"PZFeld.p2Pos"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension2","objective":"PZFeld.p2Pos"},"bold":true,"color":"red"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension3","objective":"PZFeld.p2Pos"},"bold":true,"color":"blue"},{"text":"] + 1 = ","bold":true},{"score":{"name":"#VarFeld.p2WertInhalt","objective":"PZFeld.p2Wert"},"bold":true,"color":"dark_purple"} ]

# Gibt den Wert des aktuellen Feldes aus.
execute if entity @s[tag=EtiFeld.p2WertAusgeben] run scoreboard players operation #VarFeld.p2WertInhalt PZFeld.p2Wert = @e[type=minecraft:armor_stand,tag=EtiFeld.p2Auswahl,sort=nearest,limit=1] PZFeld.p2Wert
execute at @s[tag=EtiFeld.p2WertAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.2:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension1","objective":"PZFeld.p2Pos"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension2","objective":"PZFeld.p2Pos"},"bold":true,"color":"red"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension3","objective":"PZFeld.p2Pos"},"bold":true,"color":"blue"},{"text":"] == ","bold":true},{"score":{"name":"#VarFeld.p2WertInhalt","objective":"PZFeld.p2Wert"},"bold":true,"color":"dark_purple"} ]

# Verringert den Wert des aktuellen Feldes.
execute if entity @s[tag=EtiFeld.p2WertVerringern] store result score #VarFeld.p2WertInhalt PZFeld.p2Wert run scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiFeld.p2Auswahl,sort=nearest,limit=1] PZFeld.p2Wert 1

execute at @s[tag=EtiFeld.p2WertVerringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.2:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension1","objective":"PZFeld.p2Pos"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension2","objective":"PZFeld.p2Pos"},"bold":true,"color":"red"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2AktuellePositionDimension3","objective":"PZFeld.p2Pos"},"bold":true,"color":"blue"},{"text":"] - 1 = ","bold":true},{"score":{"name":"#VarFeld.p2WertInhalt","objective":"PZFeld.p2Wert"},"bold":true,"color":"dark_purple"} ]

# Wenn der Wert des Feldes geändert wurde, wird der Name des Feldes aktualisiert.
data modify entity @e[type=minecraft:armor_stand,tag=EtiFeld.p2Auswahl,sort=nearest,limit=1] CustomName set value '{"text":""}'
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.p2Schild] run data merge block ~ ~ ~ {Text1:'{"score":{"name":"#VarFeld.p2WertInhalt","objective":"PZFeld.p2Wert"},"color":"dark_purple","bold":true}'}
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.p2Schild] run data modify entity @e[type=minecraft:armor_stand,tag=EtiFeld.p2Auswahl,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1

# Das Etikett zur Erkennung wird wieder entfernt.
tag @e[type=minecraft:armor_stand,tag=EtiFeld.p2Auswahl,sort=nearest,limit=1] remove EtiFeld.p2Auswahl
