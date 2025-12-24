# Der aktuelle Nachricht-Wert wird ausgelesen und in eine Variable gespeichert.
$execute on passengers store result score VarDiaLS.1Nachricht PZDiaLS.1Reden run data get entity @s[type=minecraft:marker] data."EigDiaLS.1Spieler"[{UUID:$(player)}].Nachricht

# Falls der Dorfbewohner diesen Spieler noch nicht in der Liste angelegt hatte, wird dieser in die Liste eingefügt.
$execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden matches 0 on passengers unless data entity @s[type=minecraft:marker] data."EigDiaLS.1Spieler"[{UUID:$(player)}] run data modify entity @s data."EigDiaLS.1Spieler" append value {Nachricht:0,UUID:$(player)}

# Zur besseren Erreichbarkeit des Spielers.
execute on target run tag @s add EtiDiaLS.1Spieler

# Geräusch dass dem Spieler signalisiert, das der Dorfbewohner mit ihm spricht.
playsound minecraft:entity.villager.ambient master @p[tag=EtiDiaLS.1Spieler] ~ ~ ~ 1 0.5 1

# Der Spieler erhält Langsamkeit, damit die Sicht vom Spieler kleiner wird, um den Fokus auf das Gespräch zu lenken.
effect give @p[tag=EtiDiaLS.1Spieler] minecraft:slowness 15 1 true

# Die Nachrichten des Markierers werden in den Datenspeicher geladen, um den Zugriff auf die Nachrichten zu erleichtern.
execute on passengers run data modify storage dialog-system:v1daten "EigDiaLS.1Nachrichten" set from entity @s[type=minecraft:marker] data."EigDiaLS.1Nachrichten"

# Die Nachricht-Funktion wird vom Markierer aus geladen.
$execute on passengers run function dialog-system:v1nachricht with entity @s[type=minecraft:marker] data."EigDiaLS.1Spieler"[{UUID:$(player)}]

# Damit der Spieler auf die Schaltflächen für Antworten klicken kann.
scoreboard players enable @p[tag=EtiDiaLS.1Spieler] PZDiaLS.1Antwort
scoreboard players set @p[tag=EtiDiaLS.1Spieler] PZDiaLS.1Antwort 0

# Das Etikett wird ab hier nicht mehr gebraucht.
execute on target run tag @s remove EtiDiaLS.1Spieler

# Damit das Interaktionsobjekt erneut mit einem Rechtsklick angeklickt werden kann.
data remove entity @s interaction
