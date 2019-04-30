# Erhöht die aktuelle Position der zweiten Dimension um eins und falls die aktuelle Position der zweiten Dimension über dem Maximum ist, wird sie wieder auf eins zurück gesetzt
execute as @s[tag=EtiFeld.p1PositionAufsteigen] run scoreboard players add #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos 1
execute as @s[tag=EtiFeld.p1PositionAufsteigen] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos > #VarFeld.p1Dimension2 PZFeld.p1Felder run scoreboard players set #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos 1

# Falls die Position der zweiten Dimension aktuell auf eins gesetzt wurde, wird die Position der zweiten Dimension um eins erhöht und anschließend geprüft ob sie über das Maximum gelangt ist, dann wird sie auch auf eins zurük gesetzt
execute as @s[tag=EtiFeld.p1PositionAufsteigen] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos matches 1 run scoreboard players add #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos 1
execute as @s[tag=EtiFeld.p1PositionAufsteigen] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos matches 1 if score #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos > @s PZFeld.p1Felder run scoreboard players set #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos 1

# Gibt die veränderten Positionen als tellraw-Nachrichten aus
execute at @s[tag=EtiFeld.p1PositionAufsteigen] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:"]
execute at @s[tag=EtiFeld.p1PositionAufsteigen] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos matches 1 run tellraw @a[distance=..25] ["",{"text":"Feld.Position + 1 = ","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"}]
execute at @s[tag=EtiFeld.p1PositionAufsteigen] run tellraw @a[distance=..25] ["",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"},{"text":"].Position + 1 = ","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension2","objective":"PZFeld.p1Pos"},"bold":true,"color":"red"} ]

# Gibt die aktuelle Position aus
execute at @s[tag=EtiFeld.p1PositionAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"},{"text":"].Position = ","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension2","objective":"PZFeld.p1Pos"},"bold":true,"color":"red"} ]

# Gibt die neue verringerte Position der zweiten Dimension aus
execute as @s[tag=EtiFeld.p1PositionAbsteigen] run scoreboard players remove #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos 1
execute as @s[tag=EtiFeld.p1PositionAbsteigen] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos matches ..0 run scoreboard players operation #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos = #VarFeld.p1Dimension2 PZFeld.p1Felder

# Falls Position der zweiten Dimension wieder beim Ende ist, wird die Position der ersten Dimension um eins verringert, falls sie dann auch unter eins sein sollte, wird sie wieder auf das Ende gesetzt
execute as @s[tag=EtiFeld.p1PositionAbsteigen] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos = #VarFeld.p1Dimension2 PZFeld.p1Felder run scoreboard players remove #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos 1
execute as @s[tag=EtiFeld.p1PositionAbsteigen] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos = #VarFeld.p1Dimension2 PZFeld.p1Felder if score #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos matches ..0 run scoreboard players operation #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos = @s PZFeld.p1Felder

# Gibt die veränderten Positionen als tellraw-Nachrichten aus
execute at @s[tag=EtiFeld.p1PositionAbsteigen] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:"]
execute at @s[tag=EtiFeld.p1PositionAbsteigen] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos = #VarFeld.p1Dimension2 PZFeld.p1Felder run tellraw @a[distance=..25] ["",{"text":"Feld.Position - 1 = ","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"}]
execute at @s[tag=EtiFeld.p1PositionAbsteigen] run tellraw @a[distance=..25] ["",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"},{"text":"].Position - 1 = ","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension2","objective":"PZFeld.p1Pos"},"bold":true,"color":"red"} ]
