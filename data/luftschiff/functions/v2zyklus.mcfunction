# Nur wenn der Spieler das Holzschwert ausgewählt hat, bekommt er ein Etikett.
tag @a[team=TMLuftS.2Pilot,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{luftschiff:"v2gegenstand"} } }] add EtiLuftS.2Steuer

# Nur wenn der Spieler sich etwas mehr als einen halben Meter vom Luftschiff-Rüstungsständer entfernt und dabei auf einem Steuerblock steht, wird dem Rüstungsständer ein Etikett gegeben.
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] at @s at @p[distance=0.8..1.5,team=TMLuftS.2Pilot,tag=EtiLuftS.2Steuer] if block ~ ~-1 ~ #luftschiff:v2steuer run tag @s add EtiLuftS.2Fahren

# Je nach Blickwinkel des Spielers bekommt der Luftschiff-Rüstungsständer den Namen Oben, Geradeaus oder Unten.
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren] at @s if entity @p[distance=0.8..1.5,team=TMLuftS.2Pilot,tag=EtiLuftS.2Steuer,x_rotation=-90..-45] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiLuftS.2Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"Oben"}'}
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren] at @s if entity @p[distance=0.8..1.5,team=TMLuftS.2Pilot,tag=EtiLuftS.2Steuer,x_rotation=-45..45] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiLuftS.2Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"aqua","text":"Geradeaus"}'}
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren] at @s if entity @p[distance=0.8..1.5,team=TMLuftS.2Pilot,tag=EtiLuftS.2Steuer,x_rotation=45..90] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiLuftS.2Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"Unten"}'}

# Der Luftschiff-Rüstungsständer wird an der neuen Position des Spielers zentriert teleportiert, mit Blickrichtung.
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren] at @s at @p[distance=0.8..1.5,team=TMLuftS.2Pilot,tag=EtiLuftS.2Steuer] align xyz run teleport @s ~0.5 ~ ~0.5 ~ ~

# Wenn der Rüstungsständer in eine Richtung schaut in die er bisher noch nicht geschaut hat, wird er genau in die Himmelsrichtung ausgerichtet und bekommt als Namen den der Himmelsrichtung.
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren,name=!"Norden",y_rotation=135..-135] run data merge entity @s {CustomName:'{"bold":true,"color":"blue","text":"Norden"}',Rotation:[180.0f,0.0f]}
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren,name=!"Osten",y_rotation=-135..-45] run data merge entity @s {CustomName:'{"bold":true,"color":"gold","text":"Osten"}',Rotation:[270.0f,0.0f]}
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren,name=!"Süden",y_rotation=-45..45] run data merge entity @s {CustomName:'{"bold":true,"color":"blue","text":"Süden"}',Rotation:[0.0f,0.0f]}
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren,name=!"Westen",y_rotation=45..135] run data merge entity @s {CustomName:'{"bold":true,"color":"gold","text":"Westen"}',Rotation:[90.0f,0.0f]}

# Der Luftschiff-Rüstungsständer ruft die Luftschiff-Funktion auf, wenn der Spieler mit dem Luftschiff fahren will.
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren] at @s run function luftschiff:v2luftschiff

# Der Rüstungsständer wie auch der Spieler bekommen das jeweilige Etikett entfernt wenn sie es besaßsen.
tag @e[type=minecraft:armor_stand,tag=EtiLuftS.2Fahren] remove EtiLuftS.2Fahren
tag @a[tag=EtiLuftS.2Steuer] remove EtiLuftS.2Steuer
