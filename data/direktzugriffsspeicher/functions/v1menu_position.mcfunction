# Gibt die neue erhöhte Position aus
execute as @s[tag=EtiFeld.1PositionAufsteigen] run scoreboard players add #VarFeld.1AktuellePosition PZFeld.1Pos 1
execute as @s[tag=EtiFeld.1PositionAufsteigen] if score #VarFeld.1AktuellePosition PZFeld.1Pos > @s PZFeld.1Pos run scoreboard players set #VarFeld.1AktuellePosition PZFeld.1Pos 1
execute at @s[tag=EtiFeld.1PositionAufsteigen] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld.Position + 1 = ","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"} ]

# Gibt die aktuelle Position aus
execute at @s[tag=EtiFeld.1PositionAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld.Position == ","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"} ]

# Gibt die neue verringerte Position aus
execute as @s[tag=EtiFeld.1PositionAbsteigen] run scoreboard players remove #VarFeld.1AktuellePosition PZFeld.1Pos 1
execute as @s[tag=EtiFeld.1PositionAbsteigen] if score #VarFeld.1AktuellePosition PZFeld.1Pos matches ..0 run scoreboard players operation #VarFeld.1AktuellePosition PZFeld.1Pos = @s PZFeld.1Pos
execute at @s[tag=EtiFeld.1PositionAbsteigen] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld.Position - 1 = ","bold":true},{"score":{"name":"#VarFeld.1AktuellePosition","objective":"PZFeld.1Pos"},"bold":true,"color":"green"} ]
