
tag @a[distance=..15,nbt={SelectedItem:{tag:{EigBewS.1Sensor:true} } }] add EtiBewS.1Sensor

# Bei jeglischer Form der Bewegung erhält der Spieler das gleiche Etikett
tag @a[tag=EtiBewS.1Sensor,scores={PZBewS.1Gehen=1..}] add EtiBewS.1BewegungErfasst
tag @a[tag=EtiBewS.1Sensor,scores={PZBewS.1Plansch=1..}] add EtiBewS.1BewegungErfasst
tag @a[tag=EtiBewS.1Sensor,scores={PZBewS.1Schwim=1..}] add EtiBewS.1BewegungErfasst
tag @a[tag=EtiBewS.1Sensor,scores={PZBewS.1Sprint=1..}] add EtiBewS.1BewegungErfasst
tag @a[tag=EtiBewS.1Sensor,scores={PZBewS.1Schl=1..}] add EtiBewS.1BewegungErfasst
tag @a[tag=EtiBewS.1Sensor,scores={PZBewS.1Sprung=1..}] add EtiBewS.1BewegungErfasst

execute as @a[tag=EtiBewS.1BewegungErfasst] run function bewegungssensor:v1erfassen

# Anschließend wird dem Spieler sein Punktestand wieder zurückgesetzt
scoreboard players set @a[scores={PZBewS.1Gehen=1..}] PZBewS.1Gehen 0
scoreboard players set @a[scores={PZBewS.1Plansch=1..}] PZBewS.1Plansch 0
scoreboard players set @a[scores={PZBewS.1Schwim=1..}] PZBewS.1Schwim 0
scoreboard players set @a[scores={PZBewS.1Sprint=1..}] PZBewS.1Sprint 0
scoreboard players set @a[scores={PZBewS.1Schl=1..}] PZBewS.1Schl 0
scoreboard players set @a[scores={PZBewS.1Sprung=1..},nbt={OnGround:true}] PZBewS.1Sprung 0

# Nachdem eine Bewegung erfasst wurde, wird der Aktionsleistentitel frei gemacht und das Etikett entfernt
title @a[distance=..15,tag=!EtiBewS.1BewegungErfasst] actionbar [""]

tag @a[tag=EtiBewS.1BewegungErfasst] remove EtiBewS.1BewegungErfasst
tag @a[tag=EtiBewS.1Sensor] remove EtiBewS.1Sensor
