# Alle Felder werden gelöscht und die Variable erhält den Wert der aktuellen Felder
kill @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt,tag=EtiFeld.1AlleFelder]
scoreboard players operation #VarFeld.1FelderErzeugen PZFeld.1Wert = @s PZFeld.1Pos
execute at @s run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld = neues Feld[","bold":true},{"score":{"name":"#VarFeld.1FelderErzeugen","objective":"PZFeld.1Wert"},"bold":true,"color":"green"},{"text":"]","bold":true} ]
