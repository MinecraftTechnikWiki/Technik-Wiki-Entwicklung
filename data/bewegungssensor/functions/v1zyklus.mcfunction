# Nachdem eine Bewegung erfasst wurde, wird der Aktionsleistentitel frei gemacht und das Etikett entfernt
title @a[distance=..15,tag=EtiBewS.1BewegungErfasst] actionbar [""]
tag @a[tag=EtiBewS.1BewegungErfasst] remove EtiBewS.1BewegungErfasst

# Bei jeglischer Form der Bewegung erhält der Spieler das gleiche Etikett
tag @a[distance=..15,scores={PZBewS.1Gehen=1..}] add EtiBewS.1BewegungErfasst
tag @a[distance=..15,scores={PZBewS.1Plansch=1..}] add EtiBewS.1BewegungErfasst
tag @a[distance=..15,scores={PZBewS.1Schwim=1..}] add EtiBewS.1BewegungErfasst
tag @a[distance=..15,scores={PZBewS.1Sprint=1..}] add EtiBewS.1BewegungErfasst
tag @a[distance=..15,scores={PZBewS.1Schl=1..}] add EtiBewS.1BewegungErfasst
tag @a[distance=..15,scores={PZBewS.1Sprung=1..}] add EtiBewS.1BewegungErfasst

# Wenn der Spieler sich bewegt hat, besitzt er ein Etikett, welches abgefragt wird um ihm dann eine Nachricht auszugeben
title @a[distance=..15,tag=EtiBewS.1BewegungErfasst] actionbar ["",{"text":"Deine Bewegung wurde erfasst!","color":"dark_purple","bold":true} ]

# Anschließend wird dem Spieler sein Punktestand wieder zurückgesetzt
scoreboard players reset @a[distance=..15,scores={PZBewS.1Gehen=1..}] PZBewS.1Gehen
scoreboard players reset @a[distance=..15,scores={PZBewS.1Plansch=1..}] PZBewS.1Plansch
scoreboard players reset @a[distance=..15,scores={PZBewS.1Schwim=1..}] PZBewS.1Schwim
scoreboard players reset @a[distance=..15,scores={PZBewS.1Sprint=1..}] PZBewS.1Sprint
scoreboard players reset @a[distance=..15,scores={PZBewS.1Schl=1..}] PZBewS.1Schl
scoreboard players reset @a[distance=..15,scores={PZBewS.1Sprung=1..}] PZBewS.1Sprung
