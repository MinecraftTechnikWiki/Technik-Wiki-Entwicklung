# Wenn der Spieler mit dem Dorfbewohner Jones redet, wird sein Punktestand für die Nachricht eingestellt
scoreboard players add @a[distance=..3,scores={PZAufS.1Reden=1..}] PZAufS.1Nachr 1
scoreboard players set @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=3..}] PZAufS.1Nachr 1

# Vom Dorfbewohner Jones wird geprüft ob der Spieler eine Pilzsuppe in der Hand hat und ob er von Jones schon den Auftrag dafür bekommen hat (Etikett)
execute store success score @s PZAufS.1Nachr run clear @a[distance=..3,tag=EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..},nbt={Inventory:[{id:"minecraft:mushroom_stew",tag:{display:{Lore:["Ein Auftragsgegenstand"] } } } ] } ] minecraft:mushroom_stew{display:{Lore:["Ein Auftragsgegenstand"] } } 1

# Nur wenn dem Spieler die Pilzsuppe entfernt werden könnte besitzt Jones für seinen Punktestand eine eins, dann wird dem Spieler die Belohnung gegeben
execute if entity @s[scores={PZAufS.1Nachr=1}] run tellraw @a[distance=..3,tag=EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Endlich meine Suppe, danke.","color":"gray"}]
execute if entity @s[scores={PZAufS.1Nachr=1}] run playsound minecraft:entity.player.levelup master @a[distance=..3,tag=EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] ~ ~ ~ 1 0.5 1
execute if entity @s[scores={PZAufS.1Nachr=1}] run experience add @a[distance=..3,tag=EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] 5 points
execute if entity @s[scores={PZAufS.1Nachr=1}] run give @a[distance=..3,tag=EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] minecraft:emerald 1
execute if entity @s[scores={PZAufS.1Nachr=1}] run scoreboard players set @a[distance=..3,tag=EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] PZAufS.1Auftrag 2
execute if entity @s[scores={PZAufS.1Nachr=1}] run scoreboard players set @a[distance=..3,tag=EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] PZAufS.1Nachr 0
execute if entity @s[scores={PZAufS.1Nachr=1}] run tag @a[distance=..3,tag=EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=0}] remove EtiAufS.1JonesSuppeHolen

# Nachrichten von Jones, wenn man in rechtsklickt. Er gibt dem Spieler den Auftrag die Pilzsuppe zu holen
tellraw @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1}] ["",{"text":"[1/2]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Ich leide schon seit 3 Tagen an Hunger. Wärst du so nett und holst mir","color":"yellow"},{"text":" [1 Pilzsuppe] ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Hole Jones 1x Pilzsuppe"} } } ]
tellraw @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=2}] ["",{"text":"[2/2]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Du bist ja immer noch hier. Los hol mir was zu essen!","color":"yellow"}]

# Der Spieler erhält das entsprechende Etikett, wenn er mit Jones  das erste mal gesprochen hat und somit den Auftrag erfüllen soll
execute if entity @a[distance=..3,tag=!EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] run setblock ~ ~ ~-5 minecraft:chest[facing=south]{Items:[{Slot:13b,id:"minecraft:mushroom_stew",Count:1b,tag:{display:{Lore:["Ein Auftragsgegenstand"] } } } ] } replace
tag @a[distance=..3,tag=!EtiAufS.1JonesSuppeHolen,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] add EtiAufS.1JonesSuppeHolen
