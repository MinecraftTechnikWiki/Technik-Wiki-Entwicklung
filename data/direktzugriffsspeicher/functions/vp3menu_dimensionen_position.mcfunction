# Gibt die neue erhöhte Position aus
execute as @s[tag=EtiFeld.p3DimensionenPositionAufsteigen] run scoreboard players add #VarFeld.p3AktuellePosition PZFeld.p3Pos 1
execute as @s[tag=EtiFeld.p3DimensionenPositionAufsteigen] if score #VarFeld.p3AktuellePosition PZFeld.p3Pos > @s PZFeld.p3Felder run scoreboard players set #VarFeld.p3AktuellePosition PZFeld.p3Pos 1
execute at @s[tag=EtiFeld.p3DimensionenPositionAufsteigen] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.3:\n",{"text":"Feld.Dimensionsposition + 1 = ","bold":true},{"score":{"name":"#VarFeld.p3AktuellePosition","objective":"PZFeld.p3Pos"},"bold":true,"color":"dark_green"} ]

# Gibt die aktuelle Position aus
execute at @s[tag=EtiFeld.p3DimensionenPositionAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.3:\n",{"text":"Feld.Dimensionsposition = ","bold":true},{"score":{"name":"#VarFeld.p3AktuellePosition","objective":"PZFeld.p3Pos"},"bold":true,"color":"dark_green"} ]

# Gibt die neue veringerte Position aus
execute as @s[tag=EtiFeld.p3DimensionenPositionAbsteigen] run scoreboard players remove #VarFeld.p3AktuellePosition PZFeld.p3Pos 1
execute as @s[tag=EtiFeld.p3DimensionenPositionAbsteigen] if score #VarFeld.p3AktuellePosition PZFeld.p3Pos matches ..0 run scoreboard players operation #VarFeld.p3AktuellePosition PZFeld.p3Pos = @s PZFeld.p3Felder
execute at @s[tag=EtiFeld.p3DimensionenPositionAbsteigen] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.3:\n",{"text":"Feld.Dimensionsposition - 1 = ","bold":true},{"score":{"name":"#VarFeld.p3AktuellePosition","objective":"PZFeld.p3Pos"},"bold":true,"color":"dark_green"} ]
