# Der aktuelle Nachricht-Wert wird ausgelesen und in eine Variable gespeichert.
$execute on vehicle store result score VarBeziehS.1Nachricht PZBeziehS.1Reden run data get entity @s data."EigBeziehS.1Spieler"[{UUID:$(player)}].Nachricht

# Falls der Dorfbewohner diesen Spieler noch nicht in der Liste angelegt hatte, wird dieser in die Liste eingefügt.
$execute if score VarBeziehS.1Nachricht PZBeziehS.1Reden matches 0 on vehicle unless data entity @s data."EigBeziehS.1Spieler"[{UUID:$(player)}] run data modify entity @s data."EigBeziehS.1Spieler" append value {ID:0,Nachricht:0,UUID:$(player),ZurID:1}

# Zur besseren Erreichbarkeit des Spielers.
execute on target run tag @s add EtiBeziehS.1Spieler

# Geräusch dass dem Spieler signalisiert, das der Dorfbewohner mit ihm spricht.
playsound minecraft:entity.villager.ambient master @p[tag=EtiBeziehS.1Spieler] ~ ~ ~ 1 0.5 1

# Der Spieler erhält Langsamkeit, damit die Sicht vom Spieler kleiner wird, um den Fokus auf das Gespräch zu lenken.
effect give @p[tag=EtiBeziehS.1Spieler] minecraft:slowness 15 1 true

# Die Nachrichten des Markierers werden in den Datenspeicher geladen, um den Zugriff auf die Nachrichten zu erleichtern.
execute on vehicle run data modify storage dialog-system:v2daten "EigBeziehS.1Nachrichten" set from entity @s data."EigBeziehS.1Nachrichten"

# Die Nachricht-Funktion wird vom Markierer aus geladen.
$execute on vehicle run function dialog-system:v2nachricht with entity @s data."EigBeziehS.1Spieler"[{UUID:$(player)}]

# Damit der Spieler auf die Schaltflächen für Antworten klicken kann.
scoreboard players enable @p[tag=EtiBeziehS.1Spieler] PZBeziehS.1Antwort
scoreboard players set @p[tag=EtiBeziehS.1Spieler] PZBeziehS.1Antwort -1

# Das Etikett wird ab hier nicht mehr gebraucht.
execute on target run tag @s remove EtiBeziehS.1Spieler

# Damit das Interaktionsobjekt erneut mit einem Rechtsklick angeklickt werden kann.
data remove entity @s interaction
