# Alle Felder werden gelöscht und die Variable erhält den Wert der aktuellen Felder
kill @e[type=minecraft:armor_stand,tag=EtiFeld.p3Inhalt,tag=EtiFeld.p3AlleFelder]
scoreboard players operation #VarFeld.p3FelderErzeugen PZFeld.p3Felder = @s PZFeld.p3Felder
execute at @s run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.3:\n",{"text":"Feld = neues Feld[","bold":true},{"score":{"name":"#VarFeld.p3FelderErzeugen","objective":"PZFeld.p3Felder"},"bold":true,"color":"green"},{"text":"]","bold":true} ]
