# An der Position eines gesetzten Rüstungsständer, der für Bauwerke verwendet wird, wird die Bauwerks-Funktion geladen.
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Bauwerk] at @s align y run function schwebebahn:vp2bauwerk

# Wird die Schwebebahn platziert, wird die Erstellen-Funktion geladen.
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Erstellen] at @s align y run function schwebebahn:vp2erstellen

# Wenn der Spieler sich in die Lore von der Schwebebahn gesetzt hat, erhält er ein Etikett.
execute at @e[type=minecraft:marker,tag=EtiSchwB.p2Bahn] run tag @p[distance=..20,nbt={RootVehicle:{Entity:{Tags:["EtiSchwB.p2Halter"]} } }] add EtiSchwB.p2Sitzen

# Den Wert den der Spieler vor einen Tick besaß wird kopiert um Rückschlüsse zu ziehen, was er zuvor ausgewählt hatte.
execute as @a run scoreboard players operation @s PZSchwB.p2Auswahl = @s PZSchwB.p2Ausgewaehlt

# Die Rüstungsständer und das Holzschwert besitzen eine spezielle Eigenschaft die einen wert besitzt, diese wird ausgelesen und gespeichert, falls ein anderer Gegenstand ausgewählt wurde, besitzt man den Wert null.
execute as @a store result score @s PZSchwB.p2Ausgewaehlt run data get entity @s SelectedItem.tag."EigSchwB.p2Ausgewaehlt"

# Hatte man vor einen Tick den Rüstungsständer ausgewählt für Spuren, und trägt diesen jetzt in der Zweithand, so wird ein Etikett vergeben.
tag @a[scores={PZSchwB.p2Ausgewaehlt=0,PZSchwB.p2Auswahl=2},nbt={Inventory:[{Slot:-106b,tag:{EigSchwB.p2Ausgewaehlt:2} } ] }] add EtiSchwB.p2Hoehe

# Wenn der Spieler dieses Etikett nicht mehr besitzt, wird der Wert auf null gesetzt.
scoreboard players set @a[tag=!EtiSchwB.p2Hoehe,scores={PZSchwB.p2Ausgewaehlt=0,PZSchwB.p2Auswahl=2}] PZSchwB.p2Wert 0

# Besitzt er das Etikett wird, sein wert um eins erhöht und der Rpüstungsständer wird wieder in die Haupthand gelegt.
scoreboard players add @a[tag=EtiSchwB.p2Hoehe] PZSchwB.p2Wert 1
execute as @a[tag=EtiSchwB.p2Hoehe] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @a[tag=EtiSchwB.p2Hoehe] run item replace entity @s weapon.offhand with minecraft:air
tag @a[tag=EtiSchwB.p2Hoehe] remove EtiSchwB.p2Hoehe

# Wenn der Spieler den Rüstungsständer gerade ausgewählt hat, wird sein Wert auf null gesetzt, falls er noch keinen hatte. Anschließend wird sein Wert in dem Chat als Höhe angezeigt.
scoreboard players add @a[scores={PZSchwB.p2Ausgewaehlt=2,PZSchwB.p2Auswahl=0}] PZSchwB.p2Wert 0
execute as @a[scores={PZSchwB.p2Ausgewaehlt=2,PZSchwB.p2Auswahl=0}] run tellraw @s ["Schwebebahn.erweitert.2:\n",{"text":"hoehe == ","bold":true},{"score":{"name":"@s","objective":"PZSchwB.p2Wert"},"color":"dark_purple","bold":true}]

# Wenn der Spieler das Holzschwert ausgewählt hat und dabei nicht sitzt, wird ihm die Auswahl auf null gesetzt.
scoreboard players set @a[tag=!EtiSchwB.p2Sitzen,scores={PZSchwB.p2Ausgewaehlt=1,PZSchwB.p2Auswahl=1}] PZSchwB.p2Auswahl 0

# Wenn Spieler das Steuer gerade erst ausgewählt haben, wird an ihrer Position eine Güterlore erzeugt. Anschließend bekommt die Güterlore den Wert null.
execute at @a[tag=EtiSchwB.p2Sitzen,scores={PZSchwB.p2Ausgewaehlt=1,PZSchwB.p2Auswahl=0}] run summon minecraft:chest_minecart ~ ~0.5 ~ {NoGravity:true,Invulnerable:true,CustomName:'{"text":"Hyperloop","color":"red","bold":true}',Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Menu"]}
execute at @a[tag=EtiSchwB.p2Sitzen,scores={PZSchwB.p2Ausgewaehlt=1,PZSchwB.p2Auswahl=0}] run scoreboard players set @e[distance=..6,type=minecraft:chest_minecart,tag=EtiSchwB.p2Menu,sort=nearest,limit=1] PZSchwB.p2Ausl 0

# Wenn der Spieler nicht sitzt aber das Schwert ausgewählt hat, wird seine Auswahl auf null gesetzt.
execute as @a[tag=!EtiSchwB.p2Sitzen,scores={PZSchwB.p2Ausgewaehlt=1}] store success score @s PZSchwB.p2Auswahl run scoreboard players set @s PZSchwB.p2Ausgewaehlt 0

# Wenn der Spieler das Holzschwert nicht mehr auswählt, wird die Güterlore geleert und anschließend gelöscht.
execute at @a[scores={PZSchwB.p2Ausgewaehlt=0,PZSchwB.p2Auswahl=1}] run data remove entity @e[distance=..6,type=minecraft:chest_minecart,tag=EtiSchwB.p2Menu,sort=nearest,limit=1] Items
execute at @a[scores={PZSchwB.p2Ausgewaehlt=0,PZSchwB.p2Auswahl=1}] run kill @e[distance=..6,type=minecraft:chest_minecart,tag=EtiSchwB.p2Menu,sort=nearest,limit=1]

# Solange der Spieler das Holzschwert ausgewählt hat, wird die Güterlore immer an seine Position geholt.
execute at @a[scores={PZSchwB.p2Ausgewaehlt=1}] run teleport @e[distance=..6,type=minecraft:chest_minecart,tag=EtiSchwB.p2Menu,sort=nearest,limit=1] ~ ~0.5 ~ ~ 0

 #Von der Güterlore wird die Anzahl der belegten Slots ausgelesen und nur wenn sie nicht mit der normalen Anzahl übereinstimmt, wird die Menü-Funktion geladen.
execute as @e[type=minecraft:chest_minecart,tag=EtiSchwB.p2Menu] store result score @s PZSchwB.p2Wert run data get entity @s Items
execute as @e[type=minecraft:chest_minecart,tag=EtiSchwB.p2Menu] unless entity @s[scores={PZSchwB.p2Wert=6}] at @s run function schwebebahn:vp2menu

# Je nach ob der Spieler nicht sitzt oder sitzt und nicht das Schwert ausgewählt hat, wird die entsprechende Titel-Nachricht angezeigt.
title @a[tag=!EtiSchwB.p2Sitzen,scores={PZSchwB.p2Ausgewaehlt=1,PZSchwB.p2Auswahl=0}] actionbar ["",{"text":"Spieler sitzt == ","bold":true},{"text":"falsch","color":"red","bold":true}]
title @a[tag=EtiSchwB.p2Sitzen,scores={PZSchwB.p2Ausgewaehlt=0,PZSchwB.p2Auswahl=1}] actionbar ["",{"text":"Steuer ausgewählt == ","color":"gray","bold":true},{"text":"falsch","color":"red","bold":true}]

# Die Eigenschaft für den Tempomat wird in den Namen des Bahn-Markierers kopiert, sodass man eine einfachere Abfragemöglichkeit hat.
execute as @e[type=minecraft:marker,tag=EtiSchwB.p2Bahn] run data modify entity @s CustomName set from entity @s data."EigSchwB.p2Tempomat"

# Wenn sich in der Nähe des Markierers kein Spieler aufhält der das Schwert ausgewählt hat, wird, falls der Tempomat aktiv ist, dieser deaktiviert, in dem die NBT-Eigenschaft geändert wird.
execute as @e[type=minecraft:marker,tag=EtiSchwB.p2Bahn,name="wahr"] at @s unless entity @p[distance=..18,tag=EtiSchwB.p2Sitzen,scores={PZSchwB.p2Ausgewaehlt=1}] run data modify entity @s data."EigSchwB.p2Tempomat" set value '{"bold":true,"color":"red","text":"falsch"}'

# Wenn der Markierer, der den Wahrheitswert für den Tempomat speichert, den Namen wahr besitzt, wird dem Fahrer der Wert sieben gegeben, sodass die Bahn losfährt. Dazu wird jeden Tick der Wert der Tick-Variable um eins erhöht und bei vier wieder auf null gesetzt. Das ermöglicht dem Fahrer, der die Option Tempomat gewählt hat, dass die Bahn nur alle vier Ticks nach vorne fährt.
scoreboard players add VarSchwB.p2Tick PZSchwB.p2Ausl 1
execute if score VarSchwB.p2Tick PZSchwB.p2Ausl matches 4.. at @e[type=minecraft:marker,tag=EtiSchwB.p2Bahn,name="wahr"] run data remove entity @e[distance=..18,type=minecraft:chest_minecart,tag=EtiSchwB.p2Menu,sort=nearest,limit=1] Items[0]
execute if score VarSchwB.p2Tick PZSchwB.p2Ausl matches 4.. run scoreboard players set VarSchwB.p2Tick PZSchwB.p2Ausl 0

# Das Etikett wird wieder entfernt, damit der Spieler es nur besitzt, wenn er in der Bahn noch sitzt.
tag @a[tag=EtiSchwB.p2Sitzen] remove EtiSchwB.p2Sitzen
