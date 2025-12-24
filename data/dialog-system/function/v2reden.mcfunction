# Der aktuelle Nachricht-Wert wird ausgelesen und in eine Variable gespeichert.
$execute on passengers store result score VarDiaLS.2Nachricht PZDiaLS.2Reden run data get entity @s[type=minecraft:marker] data."EigDiaLS.2Spieler"[{UUID:$(player)}].Nachricht

# Falls der Dorfbewohner diesen Spieler noch nicht in der Liste angelegt hatte, wird dieser in die Liste eingefügt.
$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden matches 0 on passengers unless data entity @s[type=minecraft:marker] data."EigDiaLS.2Spieler"[{UUID:$(player)}] run data modify entity @s[type=minecraft:marker] data."EigDiaLS.2Spieler" append value {ID:0,Nachricht:0,UUID:$(player),ZurID:1}

# Zur besseren Erreichbarkeit des Spielers.
execute on target run tag @s add EtiDiaLS.2Spieler

# Geräusch dass dem Spieler signalisiert, das der Dorfbewohner mit ihm spricht.
playsound minecraft:entity.villager.ambient master @p[tag=EtiDiaLS.2Spieler] ~ ~ ~ 1 0.5 1

# Der Spieler erhält Langsamkeit, damit die Sicht vom Spieler kleiner wird, um den Fokus auf das Gespräch zu lenken.
effect give @p[tag=EtiDiaLS.2Spieler] minecraft:slowness 15 1 true

# Die Nachrichten des Markierers werden in den Datenspeicher geladen, um den Zugriff auf die Nachrichten per Marko zu ermöglichen.
execute on passengers run data modify storage dialog-system:v2daten "EigDiaLS.2Nachrichten" set from entity @s[type=minecraft:marker] data."EigDiaLS.2Nachrichten"

# Die Nachricht-Funktion wird durch die Daten des Markierer als Makro aus aufgerufen.
$execute on passengers run function dialog-system:v2nachricht with entity @s[type=minecraft:marker] data."EigDiaLS.2Spieler"[{UUID:$(player)}]

# Damit der Spieler auf die Schaltflächen für Antworten klicken kann.
scoreboard players enable @p[tag=EtiDiaLS.2Spieler] PZDiaLS.2Antwort
scoreboard players set @p[tag=EtiDiaLS.2Spieler] PZDiaLS.2Antwort -1

# Das Etikett wird ab hier nicht mehr gebraucht.
execute on target run tag @s remove EtiDiaLS.2Spieler

# Damit das Interaktionsobjekt erneut mit einem Rechtsklick angeklickt werden kann.
data remove entity @s interaction
