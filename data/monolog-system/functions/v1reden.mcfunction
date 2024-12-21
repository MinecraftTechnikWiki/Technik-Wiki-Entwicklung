# Der Markierer der auf dem Interaktionsobjekt sitzt, kopiert seinen Nachrichten-Wert in die Variable.
execute on passengers store result score VarMonoLS.1Nachrichten PZMonoLS.1Reden run data get entity @s data."EigMonoLS.1Nachrichten"

# Der aktuelle Wert der Nachricht vom Markierer wird in eine Variable gespeichert.
$execute on passengers store result score VarMonoLS.1Nachricht PZMonoLS.1Reden run data get entity @s data."EigMonoLS.1Spieler"[{UUID:$(player)}].Nachricht

# Falls der Markierer noch keine Daten für die Nachricht besaß, bekommt er einen Eintrag hinzugefügt.
$execute if score VarMonoLS.1Nachricht PZMonoLS.1Reden matches 0 on passengers unless data entity @s data."EigMonoLS.1Spieler"[{UUID:$(player)}] run data modify entity @s data."EigMonoLS.1Spieler" append value {Nachricht:0,UUID:$(player)}

# Der Spieler wird markiert.
execute on target run tag @s add EtiMonoLS.1Spieler

# Geräusch dass dem Spieler signalisiert, das der Dorfbewohner mit ihm spricht.
playsound minecraft:entity.villager.ambient master @p[tag=EtiMonoLS.1Spieler] ~ ~ ~ 1 0.5 1

# Der Spieler erhält Langsamkeit, damit die Sicht vom Spieler kleiner wird, um den Fokus auf das Gespräch zu lenken.
effect give @p[tag=EtiMonoLS.1Spieler] minecraft:slowness 15 1 true

# Solange die aktuelle Nachricht noch nicht die letzte war, werden alle Nachrichten vom Markierer in den Datenspeicher gespeichert.
execute if score VarMonoLS.1Nachricht PZMonoLS.1Reden < VarMonoLS.1Nachrichten PZMonoLS.1Reden on passengers run data modify storage monolog-system:v1daten "EigMonoLS.1Nachrichten" set from entity @s data."EigMonoLS.1Nachrichten"

# Solange die aktuelle Nachricht noch nicht die letzte war, wird vom Markierer aus die Nachricht-Funktion mit Makro-Argumenten geladen.
$execute if score VarMonoLS.1Nachricht PZMonoLS.1Reden < VarMonoLS.1Nachrichten PZMonoLS.1Reden on passengers run function monolog-system:v1nachricht with entity @s data."EigMonoLS.1Spieler"[{UUID:$(player)}]

# Falls die letzte Nachricht erreicht wurde, wird die variable wieder auf den wert für die erste Nachricht zurückgesetzt.
execute if score VarMonoLS.1Nachricht PZMonoLS.1Reden = VarMonoLS.1Nachrichten PZMonoLS.1Reden run scoreboard players set VarMonoLS.1Nachricht PZMonoLS.1Reden 0

# Der aktualisierte Wert der aktuellen Nachricht wird zurück in den Markierer-Daten geschrieben.
$execute on passengers store result entity @s data."EigMonoLS.1Spieler"[{UUID:$(player)}].Nachricht int 1 run scoreboard players get VarMonoLS.1Nachricht PZMonoLS.1Reden

# Das Etikett zur Markierung wird entfernt.
execute on target run tag @s remove EtiMonoLS.1Spieler

# Damit das Interaktionsobjekt erneut mit einem Rechtsklick angeklickt werden kann.
data remove entity @s interaction