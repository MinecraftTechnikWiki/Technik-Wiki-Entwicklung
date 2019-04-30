# Sobald der Rüstungsständer platziert ist, wird für diesen die entsprechende Funktion aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiBruB.2Brueckenstrecke] at @s run function brueckenbauer:v2bruecke

# Falls einer der entsprechenden Rüstungsständer platziert wird, wird ein Konstruktionsblock platziert, der später mit dem Redstone-Block die Konstruktion lädt
execute as @e[type=minecraft:armor_stand,tag=EtiBruB.2Pfeilersockel] at @s run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"brueckenbauer:v2pfeilersockel"} replace
execute as @e[type=minecraft:armor_stand,tag=EtiBruB.2Pfeiler] at @s run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"brueckenbauer:v2pfeiler"} replace

# Sobald einer der Rüstungsständer platziert wurde, wird ein Redstone-Block einen Block nebendran platziert um die Konstruktion zu laden
execute at @e[type=minecraft:armor_stand,tag=EtiBruB.2Bauwerk] run setblock ~ ~ ~1 minecraft:redstone_block replace

# Der platzierte Rüstungsständer wird anschließend gelöscht
kill @e[type=minecraft:armor_stand,tag=EtiBruB.2Bauwerk]
