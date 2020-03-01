# An der Position des Rüstungsständers wird ein Konstruktionsblock samt Redstone-Block platziert, wodurch der Andockplatz entsteht.
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-3,posY:0,posZ:-3,name:"luftschiff:v3andockplatz"} replace
setblock ~ ~1 ~ minecraft:redstone_block replace

# Der Rüstungsständer wird um zwei Meter nach oben teleportiert und das Etikett wird entfernt.
teleport @s ~ ~2 ~
tag @s remove EtiLuftS.3Erstellen
