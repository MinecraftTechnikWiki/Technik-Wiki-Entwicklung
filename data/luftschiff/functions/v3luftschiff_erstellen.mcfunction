# Es wird ein Eichenholzbrett 24 Meter über der aktuellen Position gesetzt, auf dem nachher der Spieler hinkommt, falls das Laden des Luftschiffes länger dauert.
setblock ~ ~24 ~ minecraft:oak_planks replace

# Das Schwert, dass der Spieler geworfen hat, bekommt die Eigenschaft, dass es sofort wieder aufgehoben werden kann und es wird 25 Meter höher teleportiert, wie auch der Spieler selbst.
data merge entity @e[distance=..5,type=minecraft:item,nbt={Item:{tag:{luftschiff:"v3gegenstand"} } },sort=nearest,limit=1] {PickupDelay:0s}
teleport @e[distance=..5,type=minecraft:item,nbt={Item:{tag:{luftschiff:"v3gegenstand"} } },sort=nearest,limit=1] ~ ~25 ~
teleport @s ~ ~25 ~

# Es wird der Rüstungsständer für das Luftschiff erstellt und er erhält den Wert 0, das später für das Fahren benutzt wird.
summon minecraft:armor_stand ~ ~25 ~ {Small:true,NoGravity:true,Invisible:true,Tags:["EtiLuftS.3Alle","EtiLuftS.3Luftschiff"]}
execute positioned ~ ~25 ~ run scoreboard players set @e[distance=..3,type=minecraft:armor_stand,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] PZLuftS.3Steuer 0

# Der Name des Andockplatz-Rüstungsständers wird grau geförbt und er bekommt ein Etikett, um zu markieren, dass der Pilot an diesem gestartet ist.
data merge entity @e[distance=..1,tag=EtiLuftS.3Andockplatz,tag=!EtiLuftS.3PilotVorhanden,sort=nearest,limit=1] {CustomName:'{"text":"Andockplatz","color":"gray","bold":true}'}
tag @e[distance=..1,type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz,tag=!EtiLuftS.3PilotVorhanden] add EtiLuftS.3PilotVorhanden
