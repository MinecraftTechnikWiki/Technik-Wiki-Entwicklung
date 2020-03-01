# An der Position aller Kontrollpunkte wird nach Spielern gesucht, die in keinen der beiden Teams sind. Diese Spieler erhalten ein Etikett.
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] as @p[distance=..5,tag=!EtiKontPS.4KeinTeam,team=!TMKontPS.4ROT,team=!TMKontPS.4BLAU] run tag @s add EtiKontPS.4KeinTeam

# Die aktuelle Anzahl der Spieler in den beiden Teams wird ausgelesen und in entsprechende Variablen gespeichert.
execute if entity @p[tag=EtiKontPS.4KeinTeam] store result score VarKontPS.4ROT PZKontPS.4Wert run team list TMKontPS.4ROT
execute if entity @p[tag=EtiKontPS.4KeinTeam] store result score VarKontPS.4BLAU PZKontPS.4Wert run team list TMKontPS.4BLAU

# Der Spieler kommt ins Team rot, falls dieses weniger oder gleich viel Mitglieder hat wie blau. Ansonsten kommt er in das blaue Team.
execute as @p[tag=EtiKontPS.4KeinTeam] if score VarKontPS.4ROT PZKontPS.4Wert <= VarKontPS.4BLAU PZKontPS.4Wert run team join TMKontPS.4ROT @s
execute as @p[tag=EtiKontPS.4KeinTeam] if score VarKontPS.4ROT PZKontPS.4Wert > VarKontPS.4BLAU PZKontPS.4Wert run team join TMKontPS.4BLAU @s

# Anschließend wird das Etikett wieder entfernt.
tag @p[tag=EtiKontPS.4KeinTeam] remove EtiKontPS.4KeinTeam

# Wenn ein Kontrollpunkt in Form eines Rüstunggständers platziert wurde, wird ihm ein Etikett gegeben und dadurch wird die Plattform durch einen Konstruktionsblock geladen. Er erhält zusätzlich den Wert null für die Drehung.
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Plattform] at @s if block ~ ~ ~ minecraft:air run tag @s remove EtiKontPS.4Plattform
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=!EtiKontPS.4Plattform] PZKontPS.4Dreh 0
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=!EtiKontPS.4Plattform] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-4,posY:0,posZ:-4,name:"kontrollpunkt-system:v4kontrollpunkt"} replace
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=!EtiKontPS.4Plattform] run setblock ~1 ~ ~ minecraft:redstone_block replace
tag @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=!EtiKontPS.4Plattform] add EtiKontPS.4Plattform

# Die aktuelle Anzahl der Kontrollpunkte des Teams rot wird ausgelesen und in eine Variable gespeichert. Davor wird dieser Wert in eine Vergleichs-Variable gesteckt um einen Unterschied feststellen zu können. Wenn die Anzahl der Kontrollpunkte sich verändert hat, wird die Nummern-Funktion aufgerufen um allen Kontrollpunkten wieder neue Nummern zu vergeben.
scoreboard players operation #VarKontPS.4Vergleich PZKontPS.4Wert = #VarKontPS.4Anzahl PZKontPS.4ROT
execute store result score #VarKontPS.4Anzahl PZKontPS.4Wert store result score #VarKontPS.4Anzahl PZKontPS.4ROT if entity @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4ROT]
execute unless score #VarKontPS.4Vergleich PZKontPS.4Wert = #VarKontPS.4Anzahl PZKontPS.4ROT as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4ROT,sort=nearest,limit=1] run function kontrollpunkt-system:v4nummern

# Die aktuelle Anzahl der Kontrollpunkte des Teams blau wird ausgelesen und in eine Variable gespeichert. Davor wird dieser Wert in eine Vergleichs-Variable gesteckt um einen Unterschied feststellen zu können. Wenn die Anzahl der Kontrollpunkte sich verändert hat, wird die Nummern-Funktion aufgerufen um allen Kontrollpunkten wieder neue Nummern zu vergeben.
scoreboard players operation #VarKontPS.4Vergleich PZKontPS.4Wert = #VarKontPS.4Anzahl PZKontPS.4BLAU
execute store result score #VarKontPS.4Anzahl PZKontPS.4Wert store result score #VarKontPS.4Anzahl PZKontPS.4BLAU if entity @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4BLAU]
execute unless score #VarKontPS.4Vergleich PZKontPS.4Wert = #VarKontPS.4Anzahl PZKontPS.4BLAU as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4BLAU,sort=nearest,limit=1] run function kontrollpunkt-system:v4nummern

# Von allen Kontrollpunkten aus, wird die aktuelle Anzahl der Spieler die im Teeam rot und balu sind ausgelesen und in einen Punktestand gespeichert.
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] at @s store result score @s PZKontPS.4ROT if entity @a[distance=..5,gamemode=!spectator,team=TMKontPS.4ROT]
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] at @s store result score @s PZKontPS.4BLAU if entity @a[distance=..5,gamemode=!spectator,team=TMKontPS.4BLAU]

# Wenn die Kontrollpunkte keine Drehung mehr besitzen, also den Wert null tragen, wird ihen das Etikett des jeweiligen Teams entfernt, falls sie dieses besaßen.
tag @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=EtiKontPS.4ROT,scores={PZKontPS.4Dreh=0}] remove EtiKontPS.4ROT
tag @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=EtiKontPS.4BLAU,scores={PZKontPS.4Dreh=0}] remove EtiKontPS.4BLAU

# Wenn sich Spieler nur eines Teams bei einem unbesetzten Kontrollpunkt befunden haben, wird diesen das entsprechende Etikett des Teams verliehen und gleichzeitig erhalten sie den Wert eins als Erfolg davon für die Drahung, damit die weitere Erfassung erfolgen kann.
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=!EtiKontPS.4ROT,scores={PZKontPS.4ROT=1..,PZKontPS.4BLAU=0,PZKontPS.4Dreh=0}] store success score @s PZKontPS.4Dreh run tag @s add EtiKontPS.4ROT
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=!EtiKontPS.4BLAU,scores={PZKontPS.4ROT=0,PZKontPS.4BLAU=1..,PZKontPS.4Dreh=0}] store success score @s PZKontPS.4Dreh run tag @s add EtiKontPS.4BLAU

# Wenn das entsprechende Team dabei ist den Kontrollpunkt zu erobern, wird die Erobern-Funktion aufgerufen. Dies geschieht allerdings nur wenn kein Spieler des gegnerischen Teams anwesend ist.
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=EtiKontPS.4ROT,scores={PZKontPS.4ROT=1..,PZKontPS.4BLAU=0,PZKontPS.4Dreh=1..359}] at @s run function kontrollpunkt-system:v4erobern
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=EtiKontPS.4BLAU,scores={PZKontPS.4ROT=0,PZKontPS.4BLAU=1..,PZKontPS.4Dreh=1..359}] at @s run function kontrollpunkt-system:v4erobern

# Wenn gegenerische Spieler bei einem Kontrollpunkt sind, wird die Rauben-Funktion aufgeruden.
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=EtiKontPS.4ROT,scores={PZKontPS.4ROT=0,PZKontPS.4BLAU=1..,PZKontPS.4Dreh=1..360}] at @s run function kontrollpunkt-system:v4rauben
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,tag=EtiKontPS.4BLAU,scores={PZKontPS.4ROT=1..,PZKontPS.4BLAU=0,PZKontPS.4Dreh=1..360}] at @s run function kontrollpunkt-system:v4rauben

# Spieler die am gewünschten Ort sind, klicken auf den Auslöser um den Kontrollpunkt zu verlassen und dadurch erhält der Spieler den Punkt -99
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] run gamemode adventure @a[distance=..3,gamemode=spectator,scores={PZKontPS.4Wert=-99}]
execute as @a[tag=EtiKontPS.4Nachricht] at @s unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] run tag @s remove EtiKontPS.4Nachricht
execute as @a[scores={PZKontPS.4Wert=-99}] at @s unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] run scoreboard players reset @s PZKontPS.4Wert

# Spieler mit dem Punkt -2 möchten zum nächsten Kontrollpunkt teleportiert werden. Daraufhin wird der aktuelle Wert des Kontrollpunktes dem Spieler übergeben. Anschließend wird der Wert um eins erhöht, damit er den Wert des nächsten Kontrollpunkt besitzt.
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] at @s run scoreboard players operation @a[distance=..2,gamemode=spectator,scores={PZKontPS.4Wert=-2}] PZKontPS.4Wert = @s PZKontPS.4Wert
scoreboard players add @a[gamemode=spectator,scores={PZKontPS.4Wert=1..}] PZKontPS.4Wert 1

# Falls der Spieler jedoch einen Wert besitzt der höher ist, als es aktuell rote Kontrollpunkte gibt, wird der Wert wieder auf eins zurückgesetzt.
execute as @a[gamemode=spectator,team=TMKontPS.4ROT,scores={PZKontPS.4Wert=1..}] if score @s PZKontPS.4Wert > #VarKontPS.4Anzahl PZKontPS.4ROT run scoreboard players set @s PZKontPS.4Wert 1
execute as @a[gamemode=spectator,team=TMKontPS.4ROT,scores={PZKontPS.4Wert=1..}] at @s as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4ROT] if score @s PZKontPS.4Wert = @p PZKontPS.4Wert run teleport @p @s

# Falls der Spieler jedoch einen Wert besitzt der höher ist, als es aktuell blaue Kontrollpunkte gibt, wird der Wert wieder auf eins zurückgesetzt.
execute as @a[gamemode=spectator,team=TMKontPS.4BLAU,scores={PZKontPS.4Wert=1..}] if score @s PZKontPS.4Wert > #VarKontPS.4Anzahl PZKontPS.4BLAU run scoreboard players set @s PZKontPS.4Wert 1
execute as @a[gamemode=spectator,team=TMKontPS.4BLAU,scores={PZKontPS.4Wert=1..}] at @s as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4BLAU] if score @s PZKontPS.4Wert = @p PZKontPS.4Wert run teleport @p @s

# Der Auslöse-Punktestand wird für alle Spieler die noch im Zuschauermodus sind auf null zurückgesetzt, falls sie den Auslöser bereits ausgelöst hatten
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] run scoreboard players set @a[distance=..2,gamemode=spectator,scores={PZKontPS.4Wert=1..}] PZKontPS.4Wert 0

# Wenn sich ein Spieler dem Kontrollpunkt nähert ohne dass er zuvor durch einen anderen Kontrollpunkt im Zuschauermodus dort hingelangte, so wird er in den Zuschauermodus gesetzt und rotiert. Dies jedoch nur wenn der Spieler im gleichen Team wie der Kontrollpunkt ist.
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4ROT] as @a[distance=..2,gamemode=!spectator,team=TMKontPS.4ROT] unless score @s PZKontPS.4Wert matches -99 run gamemode spectator @s
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4BLAU] as @a[distance=..2,gamemode=!spectator,team=TMKontPS.4BLAU] unless score @s PZKontPS.4Wert matches -99 run gamemode spectator @s
execute as @a[gamemode=spectator] at @s positioned as @e[distance=..2,type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,sort=nearest,limit=1] run teleport @s ~ ~1 ~ ~1 ~

# Alle Spieler die sich im Zuschauermodus in der Nähe des Kontrollpunktes befinden erhalten die Auslöser-Möglichkeit und die Auswahl-Nachricht
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] run scoreboard players enable @a[distance=..2,gamemode=spectator,tag=!EtiKontPS.4Nachricht] PZKontPS.4Wert
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] at @s run tellraw @a[distance=..2,gamemode=spectator,tag=!EtiKontPS.4Nachricht] ["Kontrollpunkt.4:\n",{"text":"Drücke 'T' um in die Chatleiste zu gelangen\n","bold":true},{"text":" [x]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Klicke hier um hier zu bleiben"} },"clickEvent":{"action":"run_command","value":"/trigger PZKontPS.4Wert set -99"} },{"text":" Kontrollpunkt-Auswahl ","color":"gold","bold":true},{"score":{"name":"@s","objective":"PZKontPS.4Wert"},"color":"dark_purple","bold":true},{"text":" [→]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Klicke für den nächsten Kontrollpunkt"} },"clickEvent":{"action":"run_command","value":"/trigger PZKontPS.4Wert set -1"} }]

# Jeder der die Auswahl-Nachricht erhalten hat, erhält auch ein Etikett und dieses wird entfernt, wenn er sich zu einem anderen Kontrollpunkt teleportiert hat, damit er wieder eine erhält
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] at @s run tag @a[distance=..2,gamemode=spectator,tag=!EtiKontPS.4Nachricht] add EtiKontPS.4Nachricht
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] at @s run tag @a[distance=..2,gamemode=spectator,tag=EtiKontPS.4Nachricht,scores={PZKontPS.4Wert=-1}] remove EtiKontPS.4Nachricht
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] at @s run scoreboard players set @a[distance=..2,gamemode=spectator,tag=!EtiKontPS.4Nachricht,scores={PZKontPS.4Wert=-1}] PZKontPS.4Wert -2

# Um den Kontrollpunkt zu entfernen wirft man einen Kontrollpunkt in Form eines Rüstungsständer in die Nähe des Kontrollpunktes, so verschwindet er und man erhält ihn in dem Drop
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] run data merge entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",Count:1b,tag:{kontrollpunkt-system:"v4gegenstand"} } },sort=nearest,limit=1] {Item:{Count:2b},Tags:["EtiKontPS.4Gegenstand"]}
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] if entity @e[distance=..3,type=minecraft:item,tag=EtiKontPS.4Gegenstand] run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:air replace
execute as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] at @s if entity @e[distance=..3,type=minecraft:item,tag=EtiKontPS.4Gegenstand] run kill @s
