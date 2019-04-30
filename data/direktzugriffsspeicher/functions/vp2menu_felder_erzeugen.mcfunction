# Alle Felder werden gelöscht und die Variable erhält den Wert der aktuellen Felder
kill @e[type=minecraft:armor_stand,tag=EtiFeld.p2Dimensionen]
scoreboard players operation #VarFeld.p2FelderErzeugen PZFeld.p2Felder = @s PZFeld.p2Felder
execute at @s run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.2:\n",{"text":"Feld = neues Feld[","bold":true},{"score":{"name":"#VarFeld.p2FelderErzeugen","objective":"PZFeld.p2Felder"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2Dimension2","objective":"PZFeld.p2Felder"},"bold":true,"color":"red"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2Dimension3","objective":"PZFeld.p2Felder"},"bold":true,"color":"blue"},{"text":"]","bold":true} ]
