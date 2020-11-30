
#scoreboard objectives add PZObjZae.1Bes minecraft.custom:minecraft.mob_kills ["Objekt-Zähler.1: ",{"text":"Besiegte Kreaturen","bold":true}]
#scoreboard objectives add PZObjZae.1BesDor minecraft.killed:minecraft.villager ["Objekt-Zähler.1: ",{"text":"Besiegte Dorfbewohner","bold":true}]
#scoreboard objectives add PZObjZae.1BesEis minecraft.killed:minecraft.iron_golem ["Objekt-Zähler.1: ",{"text":"Besiegte Eisengolems","bold":true}]

#give @a[distance=..25] minecraft:diamond_sword{EigObjZae.1Alle:true,display:{Lore:['"Besiege mit dem Schwert"','"die Dorfbewohner um"','"deine Punktestände zu erhöhen"'] } } 1
#give @a[distance=..25] minecraft:villager_spawn_egg{EigObjZae.1Alle:true,display:{Lore:['"Spawne einen"','"Dorfbewohner"'] } } 16

#summon minecraft:falling_block ~ ~ ~2 {Time:0,Tags:["EtiObjZae.1Alle","EtiObjZae.1Mitte"],Passengers:[{id:"minecraft:villager",Tags:["EtiObjZae.1Alle","EtiObjZae.1Objekt"] },{id:"minecraft:villager",Tags:["EtiObjZae.1Alle","EtiObjZae.1Objekt"] },{id:"minecraft:villager",Tags:["EtiObjZae.1Alle","EtiObjZae.1Objekt"] },{id:"minecraft:villager",Tags:["EtiObjZae.1Alle","EtiObjZae.1Objekt"] },{id:"minecraft:iron_golem",Tags:["EtiObjZae.1Alle","EtiObjZae.1Objekt"] } ] }
#execute at @e[type=minecraft:falling_block,tag=EtiObjZae.1Mitte] run spreadplayers ~ ~ 2 10 false @e[distance=..5,tag=EtiObjZae.1Objekt]

#execute as @a[scores={PZObjZae.1Bes=1..}] run title @s actionbar ["",{"text":"besiegt == ","bold":true},{"score":{"name":"@s","objective":"PZObjZae.1Bes"},"color":"dark_purple","bold":true},{"text":" dorfb. == ","bold":true},{"score":{"name":"@s","objective":"PZObjZae.1BesDor"},"color":"dark_purple","bold":true},{"text":" eiseng. == ","bold":true},{"score":{"name":"@s","objective":"PZObjZae.1BesEis"},"color":"dark_purple","bold":true}]

#scoreboard players operation VarObjZae.1GesamtVergl PZObjZae.1Bes = VarObjZae.1Gesamt PZObjZae.1Bes

#scoreboard players set VarObjZae.1Gesamt PZObjZae.1Bes 0
#scoreboard players operation VarObjZae.1Gesamt PZObjZae.1Bes += @a[scores={PZObjZae.1Bes=1..}] PZObjZae.1Bes

#execute unless score VarObjZae.1GesamtVergl PZObjZae.1Bes = VarObjZae.1Gesamt PZObjZae.1Bes run tellraw @a[scores={PZObjZae.1Bes=1..}] ["Objekt-Zähler.1:\n",{"text":"besiegt_gesamt == ","color":"gray","bold":true},{"score":{"name":"VarObjZae.1Gesamt","objective":"PZObjZae.1Bes"},"color":"dark_purple","bold":true}]


#scoreboard objectives remove PZObjZae.1Bes
#scoreboard objectives remove PZObjZae.1BesDor
#scoreboard objectives remove PZObjZae.1BesEis

#clear @a minecraft:diamond_sword{EigObjZae.1Alle:true}
#clear @a minecraft:villager_spawn_egg{EigObjZae.1Alle:true}

#tag @e[type=minecraft:item,nbt={Item:{tag:{EigObjZae.1Alle:true} } }] add EtiObjZae.1Alle
#kill @e[tag=EtiObjZae.1Alle]




#scoreboard objectives add PZStaOS.2Wert dummy
#give @a[distance=..15] minecraft:armor_stand{EigStaOS.2Alle:true,display:{Name:'{"text":"Quader","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Sensor zu aktivieren"']},EntityTag:{Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Quader","color":"green","bold":true}',Tags:["EtiStaOS.2Alle","EtiStaOS.2Sensor"],Rotation:[0.0f,0.0f]} }


#execute as @e[type=minecraft:armor_stand,tag=EtiStaOS.2Sensor] at @s run teleport @s ~ ~ ~ ~90 0
#execute as @e[type=minecraft:armor_stand,tag=EtiStaOS.2Sensor,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] at @s run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 0 0 2 0.1 10 force @a[distance=..25]
#execute as @e[type=minecraft:armor_stand,tag=EtiStaOS.2Sensor,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] at @s run particle minecraft:totem_of_undying ^ ^0.5 ^5 2 0 0 0.1 10 force @a[distance=..25]
#execute as @e[type=minecraft:armor_stand,tag=EtiStaOS.2Sensor] at @s positioned ~-5 ~ ~-5 store result score @s PZStaOS.2Wert if entity @e[dx=10,dy=5,dz=10,tag=!EtiStaOS.2Sensor]
#execute as @e[type=minecraft:armor_stand,tag=EtiStaOS.2Sensor] at @s positioned ~-5 ~ ~-5 run title @a[dx=10,dy=5,dz=10] actionbar ["",{"text":"Anzahl == ","bold":true},{"score":{"name":"@s","objective":"PZStaOS.2Wert"},"color":"dark_purple","bold":true}]

#kill @e[tag=EtiStaOS.2Alle]





#scoreboard objectives add PZObjZae.3Anz dummy ["Objekt-Zähler.3: ",{"text":"Anzahl der Objekte","bold":true}]

#give @a[distance=..15] minecraft:armor_stand{EigObjZae.3Alle:true,display:{Name:'{"text":"Kugel","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Sensor zu aktivieren"']},EntityTag:{Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Kugel","color":"green","bold":true}',Tags:["EtiObjZae.3Alle","EtiObjZae.3Sensor","EtiObjZae.3Kugel","EtiObjZae.3Erzeugen"]} }

#give @a[distance=..15] minecraft:armor_stand{EigObjZae.3Alle:true,display:{Name:'{"text":"Quader","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Sensor zu aktivieren"']},EntityTag:{Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Quader","color":"green","bold":true}',Tags:["EtiObjZae.3Alle","EtiObjZae.3Sensor","EtiObjZae.3Quader","EtiObjZae.3Erzeugen"],Rotation:[0.0f,0.0f]} }

#give @a[distance=..25] minecraft:armor_stand{EigObjZae.3Alle:true,display:{Lore:['"Platziere das Objekt"'] },EntityTag:{Small:true,Tags:["EtiObjZae.3Alle","EtiObjZae.3Objekt"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]} } 16

#give @a[distance=..25] minecraft:blue_dye{EigObjZae.3Alle:true,display:{Name:'{"text":"Obergrenze+1"}',Lore:['"Droppe den Farbstoff"','"um die Obergrenze zu vergrößern"'] } } 1
#give @a[distance=..25] minecraft:red_dye{EigObjZae.3Alle:true,display:{Name:'{"text":"Obergrenze-1"}',Lore:['"Droppe den Farbstoff"','"um die Obergrenze zu verringern"'] } } 1



#execute at @e[type=minecraft:armor_stand,tag=EtiObjZae.3Erzeugen] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiObjZae.3Alle","EtiObjZae.3Grenze"]}
#tag @e[type=minecraft:armor_stand,tag=EtiObjZae.3Erzeugen] remove EtiObjZae.3Erzeugen


#execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] at @s run teleport @s ~ ~ ~ ~5 0
#execute at @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]


#execute at @e[type=minecraft:armor_stand,tag=EtiStaOS.3Kugel] run title @a[distance=..5] actionbar ["",{"text":"Spieler in Kugel == ","bold":true},{"text":"wahr","color":"green","bold":true}]


#execute as @e[type=minecraft:armor_stand,tag=EtiStaOS.3Kugel] at @s store result score @s PZObjZae.3Anz if entity @e[distance=..5,tag=!EtiObjZae.3Kugel,tag=!EtiObjZae.3Quader]


#execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] at @s run title @a[distance=..5] actionbar ["",{"text":"anzahl == ","bold":true},{"score":{"name":"@s","objective":"PZObjZae.3Anz"},"color":"dark_purple","bold":true}]

#execute if score VarObjZae.2Grenze PZObjZae.2Anz matches -1 run title @a[distance=..50] actionbar ["",{"text":"anzahl == ","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Anzahl","objective":"PZObjZae.2Anz"},"color":"dark_purple","bold":true},{"text":", grenze == ","color":"gray","bold":true},{"text":"∞","color":"dark_red","bold":true} ]



#execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Quader] at @s run teleport @s ~ ~ ~ ~90 0

#execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Quader,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] at @s run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 0 0 2 0.1 10 force @a[distance=..25]

#execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Quader,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] at @s run particle minecraft:totem_of_undying ^ ^0.5 ^5 2 0 0 0.1 10 force @a[distance=..25]

#execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Quader] at @s positioned ~-5 ~ ~-5 store result score @s PZObjZae.3Anz if entity @e[dx=10,dy=5,dz=10,tag=!EtiObjZae.3Kugel,tag=!EtiObjZae.3Quader]

#execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Quader] at @s positioned ~-5 ~ ~-5 run title @a[dx=10,dy=5,dz=10] actionbar ["",{"text":"anzahl == ","bold":true},{"score":{"name":"@s","objective":"PZObjZae.3Anz"},"color":"dark_purple","bold":true}]

#Varianten: Zone mit Zaunpfahl in der Mitte, Spieler besitzt eine Leine um Schafe einzusammeln und die Zone zählt die Tiere

#scoreboard objectives remove PZObjZae.3Anz

#clear @a minecraft:armor_stand{EigObjZae.3Alle:true}

#tag @e[type=minecraft:item,nbt={Item:{tag:{EigObjZae.3Alle:true} } }] add EtiObjZae.3Alle
#kill @e[tag=EtiObjZae.3Alle]

#Variante 1: Mit und Ohne Obergrenze Rüstungsständer

#Variante 2: Mit und ohne Obergrenze innerhalb von Zonen

#Variante 3: Mit und ohne Obergrenze innerhalb von Zonen mit Verbotszonen die Objekte abziehen. verschiedene Teams

#Variante 4: KillCounter

scoreboard objectives add PZObjZae.2Anz dummy ["Objektzähler.2: ",{"text":"Anzahl der Objekte","bold":true}]
scoreboard players set VarObjZae.2Grenze PZObjZae.2Anz 10

summon minecraft:armor_stand ~ ~ ~3 {Small:true,Tags:["EtiObjZae.2Alle","EtiObjZae.2Objekt"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}

give @a[distance=..25] minecraft:armor_stand{EigObjZae.2Alle:true,display:{Lore:['"Platziere das Objekt"'] },EntityTag:{Small:true,Tags:["EtiObjZae.2Alle","EtiObjZae.2Objekt"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]} } 16
give @a[distance=..25] minecraft:blue_dye{EigObjZae.2Alle:true,display:{Name:'{"text":"Obergrenze+1"}',Lore:['"Droppe den Farbstoff"','"um die Obergrenze zu vergrößern"'] } } 1
give @a[distance=..25] minecraft:red_dye{EigObjZae.2Alle:true,display:{Name:'{"text":"Obergrenze-1"}',Lore:['"Droppe den Farbstoff"','"um die Obergrenze zu verringern"'] } } 1
