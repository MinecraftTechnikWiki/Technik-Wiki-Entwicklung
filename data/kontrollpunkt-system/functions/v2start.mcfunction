# Das Punktestand-Ziel, für die Nummerierung der Spieler, wird erstellt.
scoreboard objectives add PZKontPS.2Nr dummy ["Kontrollpunkt-System.2: ",{"text":"Spielernummer","bold":true}]

# Ein Konstruktionsblock samt Redstone-Block werden platziert um einen Parcours zu erstellen.
setblock ~10 ~ ~-10 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-7,posY:0,posZ:-8,name:"kontrollpunkt-system:v2parcours"} replace
setblock ~10 ~ ~-9 minecraft:redstone_block replace

# Spielern im Umkreis von 25 Metern wird eine Nachricht in den Chat geschrieben.
tellraw @a[distance=..25] ["Kontrollpunkt-System.2:\n",{"text":"Für den Mehrspieler","bold":true}]
