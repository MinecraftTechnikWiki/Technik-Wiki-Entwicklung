
execute as @a[scores={PZTagZWS.4Drop=1..}] run scoreboard players add #VarTagZWS.4Zaehler PZTagZWS.4Sonne 1
execute as @a[scores={PZTagZWS.4Drop=1..}] if score #VarTagZWS.4Zaehler PZTagZWS.4Sonne matches 21.. run scoreboard players set #VarTagZWS.4Zaehler PZTagZWS.4Sonne 1

tellraw @a[scores={PZTagZWS.4Drop=1..}] ["Tageszeitwandler und -sensor.4 ",{"text":"Der Tag-Nacht-Rhytmus dauert ","bold":true},{"score":{"name":"#VarTagZWS.4Zaehler","objective":"PZTagZWS.4Sonne"} },{"text":" mal so lange.","bold":true} ]
execute as @a[scores={PZTagZWS.4Drop=1..}] at @s run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Tageszeitwandler und -sensor.4"]} } } },sort=nearest,limit=1]
give @a[scores={PZTagZWS.4Drop=1..}] minecraft:clock{display:{Lore:["Tageszeitwandler und -sensor.4","Droppe den Gegenstand mit Q"] } }
scoreboard players set @a[scores={PZTagZWS.4Drop=1..}] PZTagZWS.4Drop 0

scoreboard players operation #VarTagZWS.4Vergl PZTagZWS.4Sonne -= #VarTagZWS.4Tick PZTagZWS.4Sonne
execute if score #VarTagZWS.4Vergl PZTagZWS.4Sonne matches ..0 run scoreboard players operation #VarTagZWS.4Vergl PZTagZWS.4Sonne = #VarTagZWS.4Zaehler PZTagZWS.4Sonne
execute if score #VarTagZWS.4Vergl PZTagZWS.4Sonne matches ..0 run time add 1
