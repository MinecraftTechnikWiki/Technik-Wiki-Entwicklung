
execute at @e[tag=EtiLuftS.3Andockplatz,tag=!EtiLuftS.3PilotVorhanden] as @p[distance=..10,team=TMLuftS.3Pilot,scores={PZLuftS.3Steuer=1..},nbt={Inventory:[{id:"minecraft:coal"}]}] run function luftschiff:v3luftschiff_erstellen

execute as @a[team=TMLuftS.3Pilot,scores={PZLuftS.3Steuer=1..},nbt={Inventory:[{id:"minecraft:coal"}]}] at @s if block ~ ~-10 ~ minecraft:air unless entity @e[distance=..10,tag=EtiLuftS.3Andockplatz] run function luftschiff:v3luftschiff

execute as @e[tag=EtiLuftS.3Erstellen] at @s run function luftschiff:v3andockplatz_erstellen

execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz] run tellraw @p[distance=..5,team=!TMLuftS.3Pilot] ["Luftschiff.3: ",{"text":"Wirf das Schwert mit Q um ein Luftschiff zu fahren. Du musst aber genug Kohlestücke dabei haben!","bold":true}]
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz] run give @p[distance=..5,team=!TMLuftS.3Pilot] minecraft:wooden_sword{Luftschiff.3:true,AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Name:"Extraschaden",Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"}],Unbreakable:true,Enchantments:[{id:-1}],HideFlags:6,display:{Name:"{\"text\":\"Steuerkreuz\",\"color\":\"gold\"}",Lore:["Luftschiff.3","Wirf das Schwert mit Q","um ein Luftschiff zu fahren"]} }
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz] run team join TMLuftS.3Pilot @p[distance=..5,team=!TMLuftS.3Pilot]

execute as @a[team=TMLuftS.3Pilot,scores={PZLuftS.3Leine=1..}] at @s run function luftschiff:v3andocken

scoreboard players add @a[scores={PZLuftS.3Leine=..-1}] PZLuftS.3Leine 1
give @a[scores={PZLuftS.3Leine=-1}] minecraft:lead{Luftschiff.3:true,display:{Lore:["Luftschiff.3","Wirf die Leine mit Q um","zum Luftschiff oder","Andockplatz zu gelangen"]}} 1
