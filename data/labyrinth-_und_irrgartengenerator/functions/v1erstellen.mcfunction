# Der Wert der Größen-Variable wird auf den Generieren-Rüstungsständer kopiert.
scoreboard players operation @s PZLaUIr.2Gross = #VarLaUIr.2Groesse PZLaUIr.2Gross

# Drei Wand-Rüstungsständer in bestimmten Abständen zum Generieren-Rüstungsständer werden erzeugt.
summon minecraft:armor_stand ^ ^ ^4 {Small:true,Marker:true,NoGravity:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Erzeuger","EtiLaUIr.1Wand"]}
summon minecraft:armor_stand ^ ^ ^-2 {Small:true,Marker:true,NoGravity:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Erzeuger","EtiLaUIr.1Wand"]}
summon minecraft:armor_stand ^6 ^ ^ {Small:true,Marker:true,NoGravity:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Erzeuger","EtiLaUIr.1Wand"]}

# Alle drei Wand-Rüstungsständer schauen in das Zentrum des Labyrinths, in dem sie zum Generieren-Rüstungsständer rotiert werden.
execute as @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Wand] positioned as @s facing entity @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Erstellen,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0

# Die Wand-Rüstungsständer werden genau in die vier Himmelsrichtungen ausgerichtet
execute as @e[tag=EtiLaUIr.1Erzeuger,y_rotation=135..-135] at @s run teleport @s ~ ~ ~ 180 0
execute as @e[tag=EtiLaUIr.1Erzeuger,y_rotation=-135..-45] at @s run teleport @s ~ ~ ~ -90 0
execute as @e[tag=EtiLaUIr.1Erzeuger,y_rotation=-45..45] at @s run teleport @s ~ ~ ~ 0 0
execute as @e[tag=EtiLaUIr.1Erzeuger,y_rotation=45..135] at @s run teleport @s ~ ~ ~ 90 0

# Das Erstellen-Etikett wird entfernt.
tag @s remove EtiLaUIr.1Erstellen
