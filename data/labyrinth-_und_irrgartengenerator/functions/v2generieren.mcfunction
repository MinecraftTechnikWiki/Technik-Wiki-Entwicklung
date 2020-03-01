# Von der aktuellen Position aus werden vier Rüstungsständer in jede Himmelsrichtung erzeugt, wenn sich in der Richtung ein Quarzblock befindet.
execute if block ~2 ~-1 ~ minecraft:quartz_block run summon minecraft:armor_stand ~2 ~ ~ {Small:true,Invisibel:true,Tags:["EtiLaUIr.2Alle","EtiLaUIr.2Richtung"]}
execute if block ~-2 ~-1 ~ minecraft:quartz_block run summon minecraft:armor_stand ~-2 ~ ~ {Small:true,Invisibel:true,Tags:["EtiLaUIr.2Alle","EtiLaUIr.2Richtung"]}
execute if block ~ ~-1 ~2 minecraft:quartz_block run summon minecraft:armor_stand ~ ~ ~2 {Small:true,Invisibel:true,Tags:["EtiLaUIr.2Alle","EtiLaUIr.2Richtung"]}
execute if block ~ ~-1 ~-2 minecraft:quartz_block run summon minecraft:armor_stand ~ ~ ~-2 {Small:true,Invisibel:true,Tags:["EtiLaUIr.2Alle","EtiLaUIr.2Richtung"]}

# Der Rüstungsständer schaut zufällig zu einem der maximal vier erzeugten Rüstungsständer.
teleport @s ~ ~ ~ facing entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.2Richtung,sort=random,limit=1]

# Je nach dem zu welchen Rüstungsständer er schaut wird er entsprechend in diese Richtung einen Befehlsblock ausgerichtet platzieren.
execute if entity @s[y_rotation=135..-135] if block ~ ~-1 ~ minecraft:quartz_block run setblock ~ ~ ~ minecraft:command_block[facing=north] replace
execute if entity @s[y_rotation=-135..-45] if block ~ ~-1 ~ minecraft:quartz_block run setblock ~ ~ ~ minecraft:command_block[facing=east] replace
execute if entity @s[y_rotation=-45..45] if block ~ ~-1 ~ minecraft:quartz_block run setblock ~ ~ ~ minecraft:command_block[facing=south] replace
execute if entity @s[y_rotation=45..135] if block ~ ~-1 ~ minecraft:quartz_block run setblock ~ ~ ~ minecraft:command_block[facing=west] replace

# Eine Seelaterne wird im Boden platziert und es wird der obere Block durch Luft ersetzt.
setblock ~ ~-1 ~ minecraft:sea_lantern replace
setblock ~ ~1 ~ minecraft:air replace

# Falls mindestens ein Rüstungsständer für eine zufällige Richtung exisitiert, wird der Rüstungsständer in Blickrichtung nach vorne teleportiert und in Blickrichtung wird Luft platziert.
execute if entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.2Richtung,limit=1] at @s run teleport @s ^ ^ ^2
execute if entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.2Richtung,limit=1] at @s run fill ^ ^ ^ ^ ^1 ^-1 minecraft:air

# Falls es keinen Rüstungsständer für die Richtung gibt und auch kein Befehlsblock an der aktuellen Stelle sich befindet, muss der Irrgarten fertig sein und dementsprechend wird eine Nachricht im Umkreis von 100 Metern ausgegeben. Ebenfalls wird der Rüstungsständer entfernt.
execute unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.2Richtung] unless block ~ ~ ~ minecraft:command_block run tellraw @a[distance=..100] ["Labyrinth- und Irrgartengenerator.2:\n",{"text":"Irrgarten wurde generiert","color":"gray","bold":true}]
execute unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.2Richtung] unless block ~ ~ ~ minecraft:command_block run kill @s

# Falls der Rüstungsständer nicht entfernt wurde, muss es einen Rückweg geben der durch die Befehlsblöcke markiert ist, dann wird die Abzweig-Funktion aufgerufen.
execute unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.2Richtung] at @s run function labyrinth-_und_irrgartengenerator:v2generieren_abzweig

# Alle möglichen vier Richtungs-Rüstungsständer werden gelöscht.
kill @e[type=minecraft:armor_stand,tag=EtiLaUIr.2Richtung]
