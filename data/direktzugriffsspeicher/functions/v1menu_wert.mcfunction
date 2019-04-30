# Erhöht den Wert des aktuellen Feldes um eins
execute as @s[tag=EtiFeld.1WertAnheben] as @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt,tag=EtiFeld.1AlleFelder] if score @s PZFeld.1Pos = #VarFeld.1AktuellePosition PZFeld.1Pos run scoreboard players add @s PZFeld.1Wert 1
execute as @s[tag=EtiFeld.1WertAnheben] as @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt,tag=EtiFeld.1AlleFelder] if score @s PZFeld.1Pos = #VarFeld.1AktuellePosition PZFeld.1Pos run scoreboard players operation #VarFeld.1WertInhalt PZFeld.1Wert = @s PZFeld.1Wert
execute at @s[tag=EtiFeld.1WertAnheben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"] + 1 = ","bold":true},{"score":{"name":"#VarFeld.1WertInhalt","objective":"PZFeld.1Wert"},"bold":true,"color":"dark_purple"} ]

# Gibt den Wert des aktuellen Feldes aus
execute as @s[tag=EtiFeld.1WertAusgeben] as @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt,tag=EtiFeld.1AlleFelder] if score @s PZFeld.1Pos = #VarFeld.1AktuellePosition PZFeld.1Pos run scoreboard players operation #VarFeld.1WertInhalt PZFeld.1Wert = @s PZFeld.1Wert
execute at @s[tag=EtiFeld.1WertAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"] = ","bold":true},{"score":{"name":"#VarFeld.1WertInhalt","objective":"PZFeld.1Wert"},"bold":true,"color":"dark_purple"} ]

# Verringert den Wert des aktuellen Feldes
execute as @s[tag=EtiFeld.1WertVerringern] as @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt,tag=EtiFeld.1AlleFelder] if score @s PZFeld.1Pos = #VarFeld.1AktuellePosition PZFeld.1Pos run scoreboard players remove @s PZFeld.1Wert 1
execute as @s[tag=EtiFeld.1WertVerringern] as @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt,tag=EtiFeld.1AlleFelder] if score @s PZFeld.1Pos = #VarFeld.1AktuellePosition PZFeld.1Pos run scoreboard players operation #VarFeld.1WertInhalt PZFeld.1Wert = @s PZFeld.1Wert
execute at @s[tag=EtiFeld.1WertVerringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"] - 1 = ","bold":true},{"score":{"name":"#VarFeld.1WertInhalt","objective":"PZFeld.1Wert"},"bold":true,"color":"dark_purple"} ]
