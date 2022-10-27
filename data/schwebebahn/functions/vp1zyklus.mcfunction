# Wird eines der Bauwerke platziert, wird die Bauwerks-Funktion geladen.
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Bauwerk] at @s align y run function schwebebahn:vp1bauwerk

# Wird die Schwebebahn platziert, wird die Erstellen-Funktion geladen.
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Erstellen] at @s align y run function schwebebahn:vp1erstellen

# Wenn der Spieler sich in die Lore gesetzt hat, erhält er ein Etikett zur Markierung.
execute at @e[type=minecraft:marker,tag=EtiSchwB.p1Bahn] positioned ^ ^1 ^17 run tag @p[distance=..5,nbt={RootVehicle:{Entity:{Tags:["EtiSchwB.p1Halter"]} } }] add EtiSchwB.p1Sitzen

# Die Auswahl die der Spieler vor einem Tick getroffen hat, wird kopiert, sodass zurückverfolgt werden kann, wenn sich die Auswahl ändert.
execute as @a run scoreboard players operation @s PZSchwB.p1Auswahl = @s PZSchwB.p1Ausgewaehlt

# Wenn der Spieler einen der Rüstungsständer oder das Schwert ausgewählt hat, wird der entsprechende Wert vom Gegenstand auf den Spieler-Wert übertragen, ansonsten wird der Wert null gespeichert.
execute as @a store result score @s PZSchwB.p1Ausgewaehlt run data get entity @s SelectedItem.tag."EigSchwB.p1Ausgewaehlt"

# Wenn der Spieler das Holzschwert ausgewählt hat, aber nicht sitzt, so wird seine Auswahl auf null gesetzt.
scoreboard players set @a[tag=!EtiSchwB.p1Sitzen,scores={PZSchwB.p1Ausgewaehlt=1,PZSchwB.p1Auswahl=1}] PZSchwB.p1Auswahl 0

# Wenn die Spieler das Schwert oder den Rüstungsständer gerade ausgewählt haben, wird ihnen der Auslöser-Wert gesetzt sowie der Wert.
scoreboard players set @a[scores={PZSchwB.p1Ausgewaehlt=1..,PZSchwB.p1Auswahl=0}] PZSchwB.p1Ausl -99
scoreboard players add @a[scores={PZSchwB.p1Ausgewaehlt=1..,PZSchwB.p1Auswahl=0}] PZSchwB.p1Wert 0

# Spieler die Sitzen und das Holzschwert ausgewählt haben, laden von dem Bahn-Markierer aus die Auslöser-Funktion.
execute as @a[tag=EtiSchwB.p1Sitzen,scores={PZSchwB.p1Ausgewaehlt=1}] unless entity @s[scores={PZSchwB.p1Ausl=0}] at @s at @e[distance=..5,type=minecraft:armor_stand,tag=EtiSchwB.p1Halter,sort=nearest,limit=1] positioned ^ ^-1 ^-17 as @e[distance=..5,type=minecraft:marker,tag=EtiSchwB.p1Bahn,sort=nearest,limit=1] positioned ^ ^1 ^17 run function schwebebahn:vp1ausloeser

# Wenn der Spieler einen der Rüstungsständer für Spuren ausgewählt hat, wird die Auslöser-Funktion geladen.
execute as @a[scores={PZSchwB.p1Ausgewaehlt=2}] unless entity @s[scores={PZSchwB.p1Ausl=0}] at @s run function schwebebahn:vp1ausloeser

# Je nach ob der Spieler nicht sitzt oder sitzt und nicht das Schwert ausgewählt hat, wird die entsprechende Titel-Nachricht angezeigt.
title @a[tag=!EtiSchwB.p1Sitzen,scores={PZSchwB.p1Ausgewaehlt=1,PZSchwB.p1Auswahl=0}] actionbar ["",{"text":"Spieler sitzt == ","bold":true},{"text":"falsch","color":"red","bold":true}]
title @a[tag=EtiSchwB.p1Sitzen,scores={PZSchwB.p1Ausgewaehlt=0,PZSchwB.p1Auswahl=1}] actionbar ["",{"text":"Steuer ausgewählt == ","color":"gray","bold":true},{"text":"falsch","color":"red","bold":true}]

# Die Eigenschaft des Bahn-Markierers wird in seinen Namen kopiert, da die Namensabfrage einfacher funktioniert.
execute as @e[type=minecraft:marker,tag=EtiSchwB.p1Bahn] run data modify entity @s CustomName set from entity @s data."EigSchwB.p1Tempomat"

# Wenn sich in der Nähe des Markierers kein Spieler aufhält der das Schwert ausgewählt hat, wird, falls der Tempomat aktiv ist, dieser deaktiviert, in dem die NBT-Eigenschaft geändert wird.
execute as @e[type=minecraft:marker,tag=EtiSchwB.p1Bahn,name="wahr"] at @s unless entity @p[distance=..18,tag=EtiSchwB.p1Sitzen,scores={PZSchwB.p1Ausgewaehlt=1}] run data modify entity @s data."EigSchwB.p1Tempomat" set value '{"bold":true,"color":"red","text":"falsch"}'

# Wenn der Markierer, der den Wahrheitswert für den Tempomat speichert, den Namen wahr besitzt, wird dem Fahrer der Wert sieben gegeben, sodass die Bahn losfährt. Dazu wird jeden Tick der Wert der Tick-Variable um eins erhöht und bei vier wieder auf null gesetzt. Das ermöglicht dem Fahrer, der die Option Tempomat gewählt hat, dass die Bahn nur alle vier Ticks nach vorne fährt.
scoreboard players add VarSchwB.p1Tick PZSchwB.p1Ausl 1
execute if score VarSchwB.p1Tick PZSchwB.p1Ausl matches 4.. as @e[type=minecraft:marker,tag=EtiSchwB.p1Bahn,name="wahr"] at @s positioned ^ ^1 ^17 run scoreboard players set @p[distance=..5,tag=EtiSchwB.p1Sitzen,scores={PZSchwB.p1Ausgewaehlt=1,PZSchwB.p1Ausl=0}] PZSchwB.p1Ausl 7
execute if score VarSchwB.p1Tick PZSchwB.p1Ausl matches 4.. run scoreboard players set VarSchwB.p1Tick PZSchwB.p1Ausl 0

# Das Etikett wird wieder entfernt, damit der Spieler es nur besitzt, wenn er in der Bahn noch sitzt.
tag @a[tag=EtiSchwB.p1Sitzen] remove EtiSchwB.p1Sitzen
