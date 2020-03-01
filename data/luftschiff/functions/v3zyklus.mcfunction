# Wenn ein Spieler vom Team Pilot in der Nähe des Andockplatzes ist und mindestens eine Kohle im Inventar besitzt, wird die Luftschiff-Erstellen-Funktion aufgerufen.
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz,tag=!EtiLuftS.3PilotVorhanden] as @p[distance=..10,team=TMLuftS.3Pilot,scores={PZLuftS.3Steuer=1..},nbt={Inventory:[{id:"minecraft:coal"}]}] run function luftschiff:v3luftschiff_erstellen

# Wenn der Spieler im Team Pilot ist und Kohle bei sich trägt und unter ihm in zehn Meter Luft ist und sich kein Andockplatz in der Nähe befindet wird die Luftschiff-Funktion aufgerufen.
execute as @a[team=TMLuftS.3Pilot,scores={PZLuftS.3Steuer=1..},nbt={Inventory:[{id:"minecraft:coal"}]}] at @s if block ~ ~-10 ~ minecraft:air unless entity @e[distance=..10,tag=EtiLuftS.3Andockplatz] run function luftschiff:v3luftschiff

# Wenn der Spieler den Rüstungsständer für den Andockplatz erstellt hat, wird von diesem aus die Funktion Andockplatz-Erstellen aufgerufen.
execute as @e[type=minecraft:armor_stand,tag=EtiLuftS.3Erstellen] at @s run function luftschiff:v3andockplatz_erstellen

# Wenn der Spieler sich in der Nähe des Andockplatzes befindet und noch nicht im Team Pilot ist, erhält er eine Anleitung im Chat-Bereich, bekommt er ein Holzschwert und wird ins Piloten-Team gesetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz] run tellraw @p[distance=..5,team=!TMLuftS.3Pilot] ["Luftschiff.3: ",{"text":"Wirf das Schwert mit Q um ein Luftschiff zu fahren. Du musst aber genug Kohlestücke dabei haben!","bold":true}]
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz] run give @p[distance=..5,team=!TMLuftS.3Pilot] minecraft:wooden_sword{luftschiff:"v3gegenstand",AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Name:"Extraschaden",Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"}],Unbreakable:true,Enchantments:[{id:-1}],HideFlags:6,display:{Name:'{"text":"Steuerkreuz","color":"gold"}',Lore:['"Wirf das Schwert mit Q"','"um ein Luftschiff zu fahren"']} }
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz] run team join TMLuftS.3Pilot @p[distance=..5,team=!TMLuftS.3Pilot]

# Wenn der Spieler die Leine mit Q geworfen hat, wird die Funktion Andocken aufgerufen, vorausgesetzt ein Andockplatz wie auch ein Luftschiff sind in der Nähe, ansonsten erhält er eine Fehlermeldung.
execute as @a[team=TMLuftS.3Pilot,scores={PZLuftS.3Leine=1..}] at @s if entity @e[distance=..50,tag=EtiLuftS.3Andockplatz] if entity @e[distance=..50,tag=EtiLuftS.3Luftschiff] run function luftschiff:v3andocken
execute as @a[team=TMLuftS.3Pilot,scores={PZLuftS.3Leine=1..}] at @s unless entity @e[distance=..50,tag=EtiLuftS.3Andockplatz] run tellraw @s ["Luftschiff.3: ",{"text":"Es befindet sich kein Andockplatz in der Nähe","bold":true}]
execute as @a[team=TMLuftS.3Pilot,scores={PZLuftS.3Leine=1..}] at @s unless entity @e[distance=..50,tag=EtiLuftS.3Luftschiff] run tellraw @s ["Luftschiff.3: ",{"text":"Es befindet sich kein Luftschiff in der Nähe","bold":true}]

# Wenn der Spieler die Leine zum Andocken erfolgreich geworfen hat, besitzt er einen Wert von -20, dieser wird hoch bis 0 gezählt und dann bekommt er die Leine zurück.
scoreboard players add @a[scores={PZLuftS.3Leine=..-1}] PZLuftS.3Leine 1
scoreboard players set @a[team=TMLuftS.3Pilot,scores={PZLuftS.3Leine=1..}] PZLuftS.3Leine 0
give @a[scores={PZLuftS.3Leine=-1}] minecraft:lead{luftschiff:"v3gegenstand",display:{Lore:['"Wirf die Leine mit Q um"','"zum Luftschiff oder"','"Andockplatz zu gelangen"']} } 1
