# Nur wenn der Spieler das Holzschwert ausgewählt hat, bekommt er ein Etikett, wenn er in der Nähe der Lore sich befindet, die auf dem Halter-Rüstungsständer sitzt. Der Copilot erhält dann auch das Etikett.
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Halter,sort=nearest,limit=1] run tag @a[distance=..10,team=TMFlugz.2Pilot,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{flugzeug:"v2gegenstand"} } }] add EtiFlugz.2Steuer
execute if entity @p[tag=EtiFlugz.2Steuer] run tag @e[type=minecraft:villager,tag=EtiFlugz.2PilotenSteuer] add EtiFlugz.2Steuer

# Nur wenn der Spieler sich etwas mehr als einen halben Meter vom Flugzeug-Rüstungsständer entfernt und dabei auf roten Beton (Teil des Flugzeugs) steht, wird dem Rüstungsständer ein Etikett gegeben.
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] at @s at @e[distance=0.8..1.4,team=TMFlugz.2Pilot,tag=EtiFlugz.2Steuer,sort=nearest,limit=1] if block ~ ~-1 ~ minecraft:red_concrete run tag @s add EtiFlugz.2Fahren

# Je nach Blickwinkel des Spielers bekommt der Flugzeug-Rüstungsständer den Namen Oben, Geradeaus oder Unten.
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren] at @s if entity @e[distance=0.8..1.4,team=TMFlugz.2Pilot,tag=EtiFlugz.2Steuer,x_rotation=-90..-45,sort=nearest,limit=1] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"Oben"}'}
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren] at @s if entity @e[distance=0.8..1.4,team=TMFlugz.2Pilot,tag=EtiFlugz.2Steuer,x_rotation=-45..45,sort=nearest,limit=1] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"aqua","text":"Geradeaus"}'}
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren] at @s if entity @e[distance=0.8..1.4,team=TMFlugz.2Pilot,tag=EtiFlugz.2Steuer,x_rotation=45..90,sort=nearest,limit=1] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.2Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"Unten"}'}

# Der Flugzeug-Rüstungsständer wird an der neuen Position des Spielers zentriert teleportiert, mit Blickrichtung.
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren] at @s at @e[distance=0.8..1.4,team=TMFlugz.2Pilot,tag=EtiFlugz.2Steuer,sort=nearest,limit=1] align xz run teleport @s ~0.5 ~ ~0.5 ~ ~

# Wenn der Rüstungsständer in eine Richtung schaut in die er bisher noch nicht geschaut hat (Name), wird er genau in die Himmelsrichtung ausgerichtet und bekommt als Namen den der Himmelsrichtung.
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren,name=!"Norden",y_rotation=135..-135] run data merge entity @s {CustomName:'{"bold":true,"color":"blue","text":"Norden"}',Rotation:[180.0f,0.0f]}
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren,name=!"Osten",y_rotation=-135..-45] run data merge entity @s {CustomName:'{"bold":true,"color":"gold","text":"Osten"}',Rotation:[270.0f,0.0f]}
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren,name=!"Süden",y_rotation=-45..45] run data merge entity @s {CustomName:'{"bold":true,"color":"blue","text":"Süden"}',Rotation:[0.0f,0.0f]}
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren,name=!"Westen",y_rotation=45..135] run data merge entity @s {CustomName:'{"bold":true,"color":"gold","text":"Westen"}',Rotation:[90.0f,0.0f]}

# Der Flugzeug-Rüstungsständer ruft die Flugzeug-Funktion auf, wenn dieser das Etikett bekommen hat, welches vergeben wird, wenn der Spieler mit dem Flugzeug fliegen möchte.
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren] at @s run function flugzeug:v2flugzeug

# Nur wenn der Spieler das Etikett noch nicht besitzt und in einer Lore sitzt, die auf dem Halter-Rüstungsständer sitzt, dann erhält er das Etikett.
tag @p[team=TMFlugz.2Pilot,tag=!EtiFlugz.2Ansicht,nbt={RootVehicle:{Entity:{Tags:["EtiFlugz.2Halter"]} } }] add EtiFlugz.2Ansicht

# Nur wenn der Spieler nicht in der Lore sitzt, wird die Lore samt Halter-Rüstungsständer zum Copiloten teleportiert.
execute unless entity @p[tag=EtiFlugz.2Ansicht] at @e[type=minecraft:villager,tag=EtiFlugz.2PilotenSteuer] run teleport @e[type=minecraft:armor_stand,tag=EtiFlugz.2Halter] ~ ~ ~

# Wenn der Spieler in der Lore sitzt, wird die Dritte-Ansicht-Funktion geladen.
execute as @p[tag=EtiFlugz.2Ansicht] at @s run function flugzeug:v2dritte_ansicht

# Wenn der Spieler nicht mehr in der Lore sitzt, wird er wieder zum Copiloten teleportiert.
execute at @e[type=minecraft:villager,tag=EtiFlugz.2PilotenSteuer] run teleport @p[tag=EtiFlugz.2Ansicht,nbt=!{RootVehicle:{} }] ~ ~ ~
tag @p[tag=EtiFlugz.2Ansicht,nbt=!{RootVehicle:{} }] remove EtiFlugz.2Ansicht

# Der Rüstungsständer wie auch der Spieler bekommen das jeweilige Etikett entfernt wenn sie es besaßen.
tag @e[type=minecraft:armor_stand,tag=EtiFlugz.2Fahren] remove EtiFlugz.2Fahren
tag @e[tag=EtiFlugz.2Steuer] remove EtiFlugz.2Steuer
