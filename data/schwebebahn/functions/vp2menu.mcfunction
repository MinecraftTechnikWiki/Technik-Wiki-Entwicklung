# Wenn der Spieler einen der Gegenstände in der Güterlore angeklickt hat oder mit Q rausgeworfen hat, wird ihm der Wert auf eins gesetzt.
execute as @a[distance=..5] store success score @s PZSchwB.p2Wert run clear @s #schwebebahn:vp2menu{EigSchwB.p2Alle:true}
execute as @a[distance=..5,scores={PZSchwB.p2Wert=0}] store success score @s PZSchwB.p2Wert run kill @e[distance=..5,type=minecraft:item,nbt={Item:{tag:{EigSchwB.p2Alle:true} } }]

# Wenn der Spieler auf eine der drei Kompasse geklickt hat, wird die entsprechende Richtung als Wert gespeichert.
execute if entity @p[distance=..5,scores={PZSchwB.p2Wert=1}] run scoreboard players set @s[nbt=!{Items:[{Slot:4b,id:"minecraft:compass",Count:1b}]}] PZSchwB.p2Ausl 4

execute if entity @p[distance=..5,scores={PZSchwB.p2Wert=1}] run scoreboard players set @s[nbt=!{Items:[{Slot:12b,id:"minecraft:compass",Count:1b}]}] PZSchwB.p2Ausl 3

execute if entity @p[distance=..5,scores={PZSchwB.p2Wert=1}] run scoreboard players set @s[nbt=!{Items:[{Slot:14b,id:"minecraft:compass",Count:1b}]}] PZSchwB.p2Ausl 2

# Danach wird die Richtung in den Bahn-Markierer kopiert.
execute store success score @s PZSchwB.p2Ausl run scoreboard players operation @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] PZSchwB.p2Ausl = @s PZSchwB.p2Ausl

# Anschließend wird geprüft ob der Markierer die Eigenschaft für die Richtung besitzt und falls nicht erhält er den Wert eins. Wenn er den Wert eins bis vier besitzt wird die Drehen-Funktion geladen.
execute as @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,scores={PZSchwB.p2Ausl=0},sort=nearest,limit=1] store success score @s PZSchwB.p2Ausl unless data entity @s data."EigSchwB.p2Richtung"[1]
execute as @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,scores={PZSchwB.p2Ausl=1..4},sort=nearest,limit=1] at @s run function schwebebahn:vp2drehen

# Wenn der Spieler auf das Lagerfeuer geklickt hat, wird ein Etikett zur Markierung vergeben.
execute if entity @p[distance=..5,scores={PZSchwB.p2Wert=1}] if entity @s[nbt=!{Items:[{Slot:22b,id:"minecraft:campfire"}]}] run tag @s add EtiSchwB.p2Tempo

# Der Wert der Bahn wird kopiert.
scoreboard players operation @s[tag=EtiSchwB.p2Tempo] PZSchwB.p2Wert = @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] PZSchwB.p2Wert

# Anschließend wird der Wert um eins erhöht, falls er aber vier oder höher ereicht, wird er wieder auf eins gesetzt.
scoreboard players add @s[tag=EtiSchwB.p2Tempo] PZSchwB.p2Wert 1
scoreboard players set @s[scores={PZSchwB.p2Wert=4..}] PZSchwB.p2Wert 1

# Das aktuelle Tempo wird als Nachricht angezeigt.
execute if entity @s[tag=EtiSchwB.p2Tempo] run tellraw @p[distance=..5,scores={PZSchwB.p2Wert=1}] ["Schwebebahn.erweitert.2:\n",{"text":"tempo == ","bold":true},{"score":{"name":"@s","objective":"PZSchwB.p2Wert"},"color":"dark_purple","bold":true}]

# Danach wird das neue Tempo wieder in den Bahn-Markierer kopiert.
execute if entity @s[tag=EtiSchwB.p2Tempo] run scoreboard players operation @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] PZSchwB.p2Wert = @s PZSchwB.p2Wert

# Das Etikett wird wieder entfernt.
tag @s[tag=EtiSchwB.p2Tempo] remove EtiSchwB.p2Tempo

# Das Lagerfeuer wird in den entsprechenden Slot gesetzt.
item replace entity @s container.22 with minecraft:campfire{EigSchwB.p2Alle:true,EigSchwB.p2Menu:true,display:{Name:'{"text":"Tempo","color":"dark_purple","bold":true}'} }

# Je nach Tempo wird die Stapel-Anzahl angepasst.
execute store result entity @s[scores={PZSchwB.p2Wert=2..}] Items[{Slot:22b}].Count byte 1 run scoreboard players get @s PZSchwB.p2Wert

# Wenn das Fernrohr angeklickt wurde wird ein Etikett vergeben.
execute if entity @p[distance=..5,scores={PZSchwB.p2Wert=1}] if entity @s[nbt=!{Items:[{Slot:3b,Count:1b}]}] run tag @s add EtiSchwB.p2Ansicht

# Zuerst wird das Etikett entfernt um es anschließend wieder zu vergeben, wenn der Bahn-Markierer die Eigenschaft besitzt.
tag @s[tag=EtiSchwB.p2Ansicht] remove EtiSchwB.p2AnsichtWahr
execute if entity @s[tag=EtiSchwB.p2Ansicht] if entity @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,nbt={data:{EigSchwB.p2Ansicht:'{"bold":true,"color":"red","text":"falsch"}'} },sort=nearest,limit=1] run tag @s add EtiSchwB.p2AnsichtWahr

# Je nach dem ob die Ansicht aktiviert oder deaktiviert werden soll, wird die Eigenschaft angepasst.
execute if entity @s[tag=EtiSchwB.p2Ansicht,tag=!EtiSchwB.p2AnsichtWahr] run data modify entity @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] data."EigSchwB.p2Ansicht" set value '{"bold":true,"color":"red","text":"falsch"}'
execute if entity @s[tag=EtiSchwB.p2Ansicht,tag=EtiSchwB.p2AnsichtWahr] run data modify entity @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] data."EigSchwB.p2Ansicht" set value '{"bold":true,"color":"green","text":"wahr"}'

# Je nach Ansicht wird die Lore in die Bahn oder vor die Bahn teleportiert.
execute if entity @s[tag=EtiSchwB.p2Ansicht,tag=!EtiSchwB.p2AnsichtWahr] at @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] run teleport @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] ^ ^1.3 ^8

execute if entity @s[tag=EtiSchwB.p2Ansicht,tag=EtiSchwB.p2AnsichtWahr] at @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] run teleport @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] ^ ^1.3 ^14

# Die Güterlore wird an die neue Position teleportiert.
execute if entity @s[tag=EtiSchwB.p2Ansicht] at @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] run teleport @s ~ ~ ~

# Das Etikett wird entfernt.
tag @s[tag=EtiSchwB.p2Ansicht] remove EtiSchwB.p2Ansicht

# Wenn die Lore angeklickt wurde, wird ein Etikett vergeben.
execute if entity @p[distance=..5,scores={PZSchwB.p2Wert=1}] if entity @s[nbt=!{Items:[{Slot:13b,Count:1b}]}] run tag @s add EtiSchwB.p2Tempomat

# Es wird der aktuelle Zustand ausgelesen.
execute if entity @s[tag=EtiSchwB.p2Tempomat] store success score VarSchwB.p2Tempomat PZSchwB.p2Wert if entity @s[tag=EtiSchwB.p2TempomatWahr]

# Je nach Zustand wird der jeweils andere aktiv.
execute if entity @s[tag=EtiSchwB.p2Tempomat] if score VarSchwB.p2Tempomat PZSchwB.p2Wert matches 0 run tag @s add EtiSchwB.p2TempomatWahr
execute if entity @s[tag=EtiSchwB.p2Tempomat] if score VarSchwB.p2Tempomat PZSchwB.p2Wert matches 1 run tag @s remove EtiSchwB.p2TempomatWahr

# Danach wird das Etikett entfernt.
tag @s[tag=EtiSchwB.p2Tempomat] remove EtiSchwB.p2Tempomat

# Die Eigenschaft Tempomat wird entsprechend gesetzt.
execute if entity @s[tag=!EtiSchwB.p2TempomatWahr] run data modify entity @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] data."EigSchwB.p2Tempomat" set value '{"bold":true,"color":"red","text":"falsch"}'
execute if entity @s[tag=EtiSchwB.p2TempomatWahr] run data modify entity @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] data."EigSchwB.p2Tempomat" set value '{"bold":true,"color":"green","text":"wahr"}'

# Je nach dem ob die Ansicht aktiv oder nicht aktiv ist, wird das Fernrohr mit entsprechenden Text in den Slot gelegt.
item replace entity @s[tag=!EtiSchwB.p2AnsichtWahr] container.3 with minecraft:spyglass{EigSchwB.p2Alle:true,EigSchwB.p2Menu:true,display:{Name:'{"text":"Ansicht = wahr","color":"green","bold":true}'} }
item replace entity @s[tag=EtiSchwB.p2AnsichtWahr] container.3 with minecraft:spyglass{EigSchwB.p2Alle:true,EigSchwB.p2Menu:true,display:{Name:'{"text":"Ansicht = falsch","color":"red","bold":true}'} }

# Die drei Kompasse werden in die entsprechenden Slots gelegt.
item replace entity @s container.4 with minecraft:compass{EigSchwB.p2Alle:true,EigSchwB.p2Menu:true,display:{Name:'{"text":"Drehung = 180","color":"gold","bold":true}'} }
item replace entity @s container.12 with minecraft:compass{EigSchwB.p2Alle:true,EigSchwB.p2Menu:true,display:{Name:'{"text":"Drehung = Links","color":"blue","bold":true}'} }
item replace entity @s container.14 with minecraft:compass{EigSchwB.p2Alle:true,EigSchwB.p2Menu:true,display:{Name:'{"text":"Drehung = Rechts","color":"blue","bold":true}'} }

# Die drei Kompasse bekommen entsprechende Beschreibungen in denen die neue Richtung angezeigt wird.
data modify entity @s Items[{Slot:4b}].tag.display.Lore append from entity @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] data."EigSchwB.p2Richtung"[2]
data modify entity @s Items[{Slot:12b}].tag.display.Lore append from entity @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] data."EigSchwB.p2Richtung"[-1]
data modify entity @s Items[{Slot:14b}].tag.display.Lore append from entity @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] data."EigSchwB.p2Richtung"[1]

# Je nach dem ob der Tempomat aktiv oder nicht aktiv ist, wird eine Lore oder Antriebslore in den Slot gelegt.
item replace entity @s[tag=!EtiSchwB.p2TempomatWahr] container.13 with minecraft:minecart{EigSchwB.p2Alle:true,EigSchwB.p2Menu:true,display:{Name:'{"text":"Tempomat == falsch","color":"red","bold":true}'} }
item replace entity @s[tag=EtiSchwB.p2TempomatWahr] container.13 with minecraft:furnace_minecart{EigSchwB.p2Alle:true,EigSchwB.p2Menu:true,display:{Name:'{"text":"Tempomat == wahr","color":"green","bold":true}'} }

# Wenn die Bahn einen aktiven Tempomaten besitzt, wird der Wert entsprechend gesetzt.
scoreboard players set @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,nbt={data:{EigSchwB.p2Tempomat:'{"bold":true,"color":"green","text":"wahr"}'} },sort=nearest,limit=1] PZSchwB.p2Ausl 7

# Bevor die Fahren-Funktion aufgerufen wird, werden die Variablen entsprechend gesetzt.
scoreboard players set VarSchwB.p2Bewegen PZSchwB.p2Wert 0
scoreboard players operation VarSchwB.p2Tempo PZSchwB.p2Wert = @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,scores={PZSchwB.p2Ausl=7},sort=nearest,limit=1] PZSchwB.p2Wert
execute as @e[distance=..20,type=minecraft:marker,tag=EtiSchwB.p2Bahn,scores={PZSchwB.p2Ausl=7},sort=nearest,limit=1] at @s run function schwebebahn:vp2fahren
