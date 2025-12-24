# In den Markierer wird die ID festegelegt und im Datenspeicher die neue ID.
$execute as @n[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.2Reden] on passengers store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].ID int 1 store result storage dialog-system:v2daten "EigDiaLS.2Antwort".ZurID int 1 run scoreboard players get @p PZDiaLS.2Antwort

# Die Antworten des Markierers werden in den Datenspeicher kopiert, damit der Index der Antwort per Makro-Argument eingebunden werden kann.
$execute as @n[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.2Reden] on passengers run data modify storage dialog-system:v2daten "EigDiaLS.2Antworten" set from entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Antworten

# Die Antworten-Funktion wird mit den Makro-Argumenten des Datenspeichers aufgerufen.
function dialog-system:v2antworten with storage dialog-system:v2daten "EigDiaLS.2Antwort"

# In das Interaktionsobjekt wird der Spieler als Interagierer eingefügt, damit er den Dorfbewohner zum Reden bringt.
$data modify entity @n[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.2Reden] interaction set value {player:$(UUID),timestamp:0L}

# Vom Spieler wird die angeklickte Antwort als neue Nachricht des Dorfbewohners festgelegt.
$execute as @n[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.2Reden] on passengers store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].ID int 1 run scoreboard players get @p[scores={PZDiaLS.2Antwort=0..}] PZDiaLS.2Antwort

# Damit der Spieler erneut auf die Schaltflächen fürs Antworten klicken kann.
scoreboard players enable @s PZDiaLS.2Antwort
scoreboard players set @s PZDiaLS.2Antwort -1
