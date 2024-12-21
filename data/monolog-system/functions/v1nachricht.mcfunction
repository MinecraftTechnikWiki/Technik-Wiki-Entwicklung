# Die Nachricht wird um eins angehoben.
scoreboard players add VarMonoLS.1Nachricht PZMonoLS.1Reden 1

# Der Dorfbewohner führt den Befehl für die Nachricht aus und spricht seinen Text aus den Daten des Markierers.
$execute on vehicle on vehicle run tellraw @p[tag=EtiMonoLS.1Spieler] ["",{"text":"[","color":"gray"},{"score":{"name":"VarMonoLS.1Nachricht","objective":"PZMonoLS.1Reden"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"VarMonoLS.1Nachrichten","objective":"PZMonoLS.1Reden"},"color":"gray"},{"text":"]","color":"gray"},{"text":" «","color":"gold","bold":true},{"entity":"@s","nbt":"CustomName","color":"white","interpret":true},{"text":"» ","color":"gold","bold":true},{"storage":"monolog-system:v1daten","nbt":"\"EigMonoLS.1Nachrichten\"[$(Nachricht)]","color":"yellow","interpret":true}]
