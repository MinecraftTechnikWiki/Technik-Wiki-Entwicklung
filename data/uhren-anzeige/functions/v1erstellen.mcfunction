# Die Rüstungsständer für die Ziffern werden von der Blickrichtung des Erstellen-Rüstungsständers aus in einer Reihe erzeugt.
summon minecraft:armor_stand ^-4 ^4 ^ {Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1SekundenZehner"]}
summon minecraft:armor_stand ^-7 ^4 ^ {Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Punkte"]}
summon minecraft:armor_stand ^-10 ^4 ^ {Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1Minuten"]}
summon minecraft:armor_stand ^-14 ^4 ^ {Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1MinutenZehner"]}
summon minecraft:armor_stand ^-17 ^4 ^ {Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Punkte"]}
summon minecraft:armor_stand ^-20 ^4 ^ {Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1Stunden"]}
summon minecraft:armor_stand ^-24 ^4 ^ {Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1StundenZehner"]}

# Die Ziffern-Rüstungsständer werden alle in die gleiche Richtung rotiert in die der Erstellen-Rüstungsständer schaut und dieser wird vier Meter hoch teleportiert.
execute as @e[type=minecraft:armor_stand,tag=EtiUhrA.1Blickwinkel] positioned as @s run teleport @s ~ ~ ~ ~ ~
teleport @s ~ ~4 ~

# Alle Ziffern erhalten den Wert null und die Etiketten für das Erstellen werden entfernt.
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Ziffer] PZUhrA.1Zeichen 0
tag @e[type=minecraft:armor_stand,tag=EtiUhrA.1Blickwinkel] remove EtiUhrA.1Blickwinkel
tag @s remove EtiUhrA.1Erstellen
