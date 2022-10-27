# Wird der Rüstungsständer platziert um die Baumaschine zu erzeugen, wird geprüft ob nicht bereits eine Baumaschine in der Nähe ist, andernfalls wird der Rüstungsständer entfernt.
execute as @e[type=minecraft:armor_stand,tag=EtiStraBM.1Erstellen] at @s if entity @e[distance=..20,type=minecraft:marker,tag=EtiStraBM.1Baumaschine] run function strassenbaumaschine:v1entfernen
execute as @e[type=minecraft:armor_stand,tag=EtiStraBM.1Erstellen] at @s align y run function strassenbaumaschine:v1erstellen

# Wenn die Baumaschine keine Lore mehr als Sitz besitzt, wird sie entfernt. Ebenso soll sie entfernt werden, wenn man mit einem Angelköder nach ihr schmeißt, diesbezüglich wird die Lore entfernt um den anderen Fall auszulösen.
execute at @e[type=minecraft:marker,tag=EtiStraBM.1Baumaschine] if entity @e[distance=..5,type=minecraft:fishing_bobber] run kill @e[distance=..5,type=minecraft:minecart,tag=EtiStraBM.1Sitz,sort=nearest,limit=1]
execute at @e[type=minecraft:armor_stand,tag=EtiStraBM.1Halter,nbt=!{Passengers:[{}]}] as @e[distance=..5,type=minecraft:marker,tag=EtiStraBM.1Baumaschine,sort=nearest,limit=1] at @s run function strassenbaumaschine:v1entfernen

# Wenn der Spieler in der Lore der Baumaschine sitzt, bekommt er ein Etikett.
execute at @e[type=minecraft:marker,tag=EtiStraBM.1Baumaschine] run tag @p[distance=..5,gamemode=!spectator,nbt={RootVehicle:{Entity:{Tags:["EtiStraBM.1Halter"]} } }] add EtiStraBM.1Sitzen

# Wenn der Spieler die Angel ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[gamemode=!spectator,nbt={SelectedItem:{tag:{EigStraBM.1Steuer:true} } }] add EtiStraBM.1Ausgewaehlt

# Wenn der Spieler die Angel ausgewählt hatte, aber nicht mehr in der Lore sitzt, wird ihm das Etikett entfernt.
tag @a[tag=EtiStraBM.1Ausgewaehlt,tag=EtiStraBM.1Auswahl,tag=!EtiStraBM.1Sitzen] remove EtiStraBM.1Auswahl

# Wenn der Spieler die Angel auswählt, wird ihm sein Punktestand auf einen Wert ohne Funktion gesetzt, sodass er aber dennoch den Auslöser aktiviert und so eine Auslöser-Nachricht erhählt.
scoreboard players set @a[tag=EtiStraBM.1Ausgewaehlt,tag=!EtiStraBM.1Auswahl] PZStraBM.1Wert -99

# Spieler die das Etikett besitzen laden von sich aus die Auslöser-Funktion.
execute as @a[tag=EtiStraBM.1Ausgewaehlt,tag=EtiStraBM.1Sitzen] unless entity @s[scores={PZStraBM.1Wert=0}] at @s as @e[distance=..5,type=minecraft:marker,tag=EtiStraBM.1Baumaschine,sort=nearest,limit=1] run function strassenbaumaschine:v1ausloeser

# Falls Spieler die Angel auswählen ohne in der Lore zu sitzen erhalten sie eine Titel-Nachricht, als Rückmeldung.
title @a[tag=EtiStraBM.1Ausgewaehlt,tag=!EtiStraBM.1Auswahl,tag=!EtiStraBM.1Sitzen] actionbar ["",{"text":"Spieler sitzt == ","bold":true},{"text":"falsch","color":"red","bold":true}]

# Um zu erfassen ob der Spieler gerade die Angel ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiStraBM.1Ausgewaehlt,tag=!EtiStraBM.1Auswahl] add EtiStraBM.1Auswahl
tag @a[tag=!EtiStraBM.1Ausgewaehlt,tag=EtiStraBM.1Auswahl] remove EtiStraBM.1Auswahl

# Damit die Baumaschine ausgerichtet wird, wird von iherer Position die Ausrichtungs-Funktion geladen, sofern Spieler in der Nähe sind.
execute as @e[type=minecraft:marker,tag=EtiStraBM.1Baumaschine] at @s if entity @p[distance=..10,gamemode=!spectator] rotated ~ 0 run function strassenbaumaschine:v1ausrichtung

# Der Wahrheitswert von der Tempomat-Eigenschaft wird in den Namen kopiert um eine erleichterte Abfrage zu ermöglichen.
execute as @e[type=minecraft:marker,tag=EtiStraBM.1Baumaschine] run data modify entity @s CustomName set from entity @s data."EigStraBM.1Tempomat"

# Wenn sich in der Nähe des Baumaschinen-Markierers kein Spieler aufhält der das Schwert ausgewählt hat, wird, falls der Tempomat aktiv ist, dieser deaktiviert, in dem die NBT-Eigenschaft geändert wird.
execute as @e[type=minecraft:marker,tag=EtiStraBM.1Baumaschine,name="wahr"] at @s unless entity @p[distance=..5,tag=EtiStraBM.1Sitzen,tag=EtiStraBM.1Ausgewaehlt] run data modify entity @s data."EigStraBM.1Tempomat" set value '{"bold":true,"color":"red","text":"falsch"}'

# Damit nur alle vier Ticks die Baumaschine einen Block zurücklegt, wenn der Tempomat aktiv ist, wird eine Variable hochgezählt und nur bei dem Wert vier wird dem Spieler der Wert zum Fahren gegeben.
scoreboard players add VarStraBM.1Tick PZStraBM.1Wert 1
execute if score VarStraBM.1Tick PZStraBM.1Wert matches 4.. at @e[type=minecraft:marker,tag=EtiStraBM.1Baumaschine,name="wahr"] run scoreboard players set @p[distance=..5,tag=EtiStraBM.1Sitzen] PZStraBM.1Wert 11
execute if score VarStraBM.1Tick PZStraBM.1Wert matches 4.. run scoreboard players set VarStraBM.1Tick PZStraBM.1Wert 0

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiStraBM.1Ausgewaehlt] remove EtiStraBM.1Ausgewaehlt

# Das Etikett zum Sitzen wird entfernt.
tag @a[tag=EtiStraBM.1Sitzen] remove EtiStraBM.1Sitzen
