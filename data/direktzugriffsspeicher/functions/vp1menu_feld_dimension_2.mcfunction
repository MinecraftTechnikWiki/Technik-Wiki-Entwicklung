# Allen Rüstungsständern der 1. Dimension wird der Punktestand für die 2. Dimension um eins erhöht, um für diese die Rüstungsständer später zu spawnen
execute if entity @s[tag=EtiFeld.p1FeldAnzahlDimension2Anheben] if score #VarFeld.p1Dimension2 PZFeld.p1Felder matches ..63 run scoreboard players add @e[type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1,tag=EtiFeld.p1AlleFelder,tag=EtiFeld.p1Dimensionen] PZFeld.p1Felder 1
execute if entity @s[tag=EtiFeld.p1FeldAnzahlDimension2Anheben] if score #VarFeld.p1Dimension2 PZFeld.p1Felder matches ..63 run scoreboard players add #VarFeld.p1Dimension2 PZFeld.p1Felder 1
execute if entity @s[tag=EtiFeld.p1FeldAnzahlDimension2Anheben] if score #VarFeld.p1Dimension2 PZFeld.p1Felder matches ..63 run scoreboard players add #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos 1

execute at @s[tag=EtiFeld.p1FeldAnzahlDimension2Anheben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p1Felder"},"bold":true,"color":"green"},{"text":"].Länge + 1 = neues Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p1Felder"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p1Dimension2","objective":"PZFeld.p1Felder"},"bold":true,"color":"red"},{"text":"]","bold":true} ]

# Die aktuelle Feldanzahl wird ausgegeben
execute at @s[tag=EtiFeld.p1FeldAnzahlDimension2Ausgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:\n",{"text":"Feld[","bold":true},{"score":{"name":"#VarFeld.p1AktuellePositionDimension1","objective":"PZFeld.p1Pos"},"bold":true,"color":"green"},{"text":"].Länge = ","bold":true},{"score":{"name":"#VarFeld.p1Dimension2","objective":"PZFeld.p1Felder"},"bold":true,"color":"red"} ]

# Allen Feldern der 1. Dimension wird der Punktestand für die 2. Dimension um eins erniedrigt, solange der Wert über eins ist
execute if entity @s[tag=EtiFeld.p1FeldAnzahlDimension2Verringern] if score #VarFeld.p1Dimension2 PZFeld.p1Felder matches 1.. run scoreboard players remove @e[type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1,tag=EtiFeld.p1AlleFelder,tag=EtiFeld.p1Dimensionen] PZFeld.p1Felder 1
execute if entity @s[tag=EtiFeld.p1FeldAnzahlDimension2Verringern] if score #VarFeld.p1Dimension2 PZFeld.p1Felder matches 1.. run scoreboard players remove #VarFeld.p1Dimension2 PZFeld.p1Felder 1

execute if entity @s[tag=EtiFeld.p1FeldAnzahlDimension2Verringern] if score #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos > #VarFeld.p1Dimension2 PZFeld.p1Felder run scoreboard players remove #VarFeld.p1AktuellePositionDimension2 PZFeld.p1Pos 1

execute at @s[tag=EtiFeld.p1FeldAnzahlDimension2Verringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:\n",{"text":"Feld.Länge - 1 = neues Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p1Felder"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p1Dimension2","objective":"PZFeld.p1Felder"},"bold":true,"color":"red"},{"text":"]","bold":true} ]
