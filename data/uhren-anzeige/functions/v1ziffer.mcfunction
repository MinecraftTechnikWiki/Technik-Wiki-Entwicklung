# Je nach der Blickrichtung des Ziffern-Rüstungsständers, wird die Ziffer durch den Konstruktionsblock an die entsprechende Richtung angepasst.
execute if entity @s[y_rotation=135..-135] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-1,posY:0,posZ:0,name:"uhren-anzeige:v1zahl_0"} replace
execute if entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:0,posY:0,posZ:-1,name:"uhren-anzeige:v1zahl_0"} replace
execute if entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:1,posY:0,posZ:0,name:"uhren-anzeige:v1zahl_0"} replace
execute if entity @s[y_rotation=45..135] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posX:0,posY:0,posZ:1,name:"uhren-anzeige:v1zahl_0"} replace

# Der Wert des Ziffern-Rüstungsständers entscheidet, welche Ziffer in dem Konstruktionsblock geladen werden soll.
execute if entity @s[scores={PZUhrA.1Zeichen=1}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_1"}
execute if entity @s[scores={PZUhrA.1Zeichen=2}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_2"}
execute if entity @s[scores={PZUhrA.1Zeichen=3}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_3"}
execute if entity @s[scores={PZUhrA.1Zeichen=4}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_4"}
execute if entity @s[scores={PZUhrA.1Zeichen=5}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_5"}
execute if entity @s[scores={PZUhrA.1Zeichen=6}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_6"}
execute if entity @s[scores={PZUhrA.1Zeichen=7}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_7"}
execute if entity @s[scores={PZUhrA.1Zeichen=8}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_8"}
execute if entity @s[scores={PZUhrA.1Zeichen=9}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1zahl_9"}

# Um den Konstruktionsblock zu aktivieren, wird ein Redstone-Block direkt darüber platziert.
setblock ~ ~1 ~ minecraft:redstone_block replace
