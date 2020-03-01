# Das Team für Piloten wird erstellt und der nächstgelegene Spieler wird in dieses gesteckt.
team add TMLuftS.2Pilot ["Luftschiff.1: ",{"text":"Piloten","bold":true}]
team join TMLuftS.2Pilot @p[distance=..5,team=!TMLuftS.2Pilot]

# Der Luftschiff-Rüstungsständer mit einem zweiten huckepack, wird 25 Meter über der Befehlsquelle erzeugt.
summon minecraft:armor_stand ~ ~25 ~ {Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Westen","color":"gold","bold":true}',Tags:["EtiLuftS.2Alle","EtiLuftS.2Luftschiff","EtiLuftS.2Richtung"],Rotation:[90.0f,0.0f],Passengers:[{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Geradeaus","color":"aqua","bold":true}',Tags:["EtiLuftS.2Alle","EtiLuftS.2Neigung"]}]}

# Einen Block unter dem Luftschiff-Rüstungsständer wird ein Eichenholzbrett platziert, damit der Spieler bei der Teleportation auf festen Untegrund steht.
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run setblock ~-1 ~-1 ~ minecraft:oak_planks replace
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run teleport @p[team=TMLuftS.2Pilot] ~-1 ~ ~

# Dem Piloten wird ein Holzschwert mit dem Namen Steuerkreuz gegeben. Damit lässt sich das Luftschiff fahren.
replaceitem entity @p[team=TMLuftS.2Pilot] weapon.mainhand minecraft:wooden_sword{luftschiff:"v2gegenstand",AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Name:"Extraschaden",Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"}],Unbreakable:true,Enchantments:[{id:-1}],HideFlags:6,display:{Name:'{"text":"Steuerkreuz","color":"gold","bold":true}',Lore:['"Wähle das Steuerkreuz"','"aus, um das Luftschiff zu fahren"']} }

# Eine Nachricht an den Piloten, damit dieser weiss was er machen muss um das Luftschiff zu fahren.
tellraw @p[team=TMLuftS.2Pilot] ["Luftschiff.2: ",{"text":"Wähle das Steuerkreuz aus und laufe in die gewünschte Richtung um das Luftschiff zu fahren.","bold":true}]
