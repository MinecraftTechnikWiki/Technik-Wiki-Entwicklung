# Alle Felder werden gelöscht und die Variable erhält den Wert der aktuellen Felder
kill @e[type=minecraft:armor_stand,tag=EtiFeld.p1Dimensionen]
scoreboard players operation #VarFeld.p1FelderErzeugen PZFeld.p1Felder = @s PZFeld.p1Felder
execute at @s run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:\n",{"text":"Feld = neues Feld[","bold":true},{"score":{"name":"#VarFeld.p1FelderErzeugen","objective":"PZFeld.p1Felder"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p1Dimension2","objective":"PZFeld.p1Felder"},"bold":true,"color":"red"},{"text":"]","bold":true} ]
