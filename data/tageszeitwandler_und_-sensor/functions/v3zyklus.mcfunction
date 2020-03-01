# Falls an der Position des Rüstungsständers (Tag-Nacht-Rhythmusanlage) kein Tageslichtsensor vorhanden ist, wird einer platziert
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage] unless block ~ ~ ~ minecraft:daylight_detector run setblock ~ ~ ~ minecraft:daylight_detector[inverted=true] replace

# Wenn man eine Uhr in die Nähe der Tag-Nacht-Rhythmusanlage wirft, erhält der Drop ein Etikett, damit dieser einfacher erkannt werden kann
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage] run tag @e[distance=..2,type=minecraft:item,tag=!EtiTagZWS.3Uhr,nbt={Item:{id:"minecraft:clock"} },sort=nearest,limit=1] add EtiTagZWS.3Uhr

# Spieler erhalten nach dem Wurf der Uhr den Wert -1 und erhalten so die Chat-Nachricht und gleichzeitig erhält die Tag-Nacht-Rhythmusanlage den Wert 500 für die Ticks wie lange sie aktiv ist. Anschließend wird die Uhr entfernt
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage] if entity @e[distance=..2,type=minecraft:item,tag=EtiTagZWS.3Uhr,sort=nearest,limit=1] run scoreboard players set @a[distance=..5] PZTagZWS.3Wert -1
execute as @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage] at @s if entity @e[distance=..2,type=minecraft:item,tag=EtiTagZWS.3Uhr,sort=nearest,limit=1] run scoreboard players set @s PZTagZWS.3Wert 500
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage] run kill @e[distance=..2,type=minecraft:item,tag=EtiTagZWS.3Uhr,sort=nearest,limit=1]

# Wenn die Tag-Nacht-Rhythmusanlage aktiv ist, wird sie rotiert und lässt Flammen und Quarz-Partikel um sie kreisen, welche die Sonne und den Mond symbolisieren sollen
execute as @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] at @s run teleport @s ~ ~ ~ ~2 ~
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] run particle minecraft:item minecraft:fire_charge ^ ^1 ^1 0 0 0 0.01 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] run particle minecraft:item minecraft:quartz ^ ^1 ^-1 0 0 0 0.01 10 force @a[distance=..25]

# Solange die Wetteranlage mindestens den Wert von eins hat, wird ihr jeden Tick dieser um eins reduziert
scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] PZTagZWS.3Wert 1

# Wenn die Schnelligkeit des Tag-Nacht-Rhythmus größer gleich eins gestellt wurde, wird die Beschleunigungs-Variable auf den aktuellen Schnelligkeitswerrt gesetzt und anschlie0end wird die Beschleinigungs-Funktion geladen
execute if score VarTagZWS.3Schnelligkeit PZTagZWS.3Wert matches 1.. run scoreboard players operation VarTagZWS.2Beschleunigung PZTagZWS.3Wert = VarTagZWS.3Schnelligkeit PZTagZWS.3Wert
execute if score VarTagZWS.3Schnelligkeit PZTagZWS.3Wert matches 1.. run function tageszeitwandler_und_-sensor:v3beschleunigen

# Wenn der Wert der schnelligkeits-Variable kleiner gleich minus eins ist, wird die Verlangsamungs-Variable um eins reduziert und nur wenn sie den Wert der Verlangsamungs-Variable erreicht hat, wird die Sonne und Mond ein kleines Stück bewegt. Im gleichen Moment wird die Verlangsamungs-Variable wieder auf null gesetzt
execute if score VarTagZWS.3Schnelligkeit PZTagZWS.3Wert matches ..-1 run scoreboard players remove VarTagZWS.2Verlangsamung PZTagZWS.3Wert 1
execute if score VarTagZWS.3Schnelligkeit PZTagZWS.3Wert matches ..-1 if score VarTagZWS.2Verlangsamung PZTagZWS.3Wert <= VarTagZWS.3Schnelligkeit PZTagZWS.3Wert run time add 1
execute if score VarTagZWS.3Schnelligkeit PZTagZWS.3Wert matches ..-1 if score VarTagZWS.2Verlangsamung PZTagZWS.3Wert <= VarTagZWS.3Schnelligkeit PZTagZWS.3Wert run scoreboard players set VarTagZWS.2Verlangsamung PZTagZWS.3Wert 0

# Wenn man den Auslöser aktiviert hat und eine der vier möglichen Tageszeiten angeklickt hat, befindet man sich in der Nähe der aktiven Anlage und besitzt einen bestimmten Wert. Der Wert entscheidet, welche der vier Optionen ausgelöst wird. Danach wird immer die aktuelle Zeit in die Zeit-Variable gespeichert
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] if entity @a[distance=..5,scores={PZTagZWS.3Wert=1}] run time set 1000
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] if entity @a[distance=..5,scores={PZTagZWS.3Wert=2}] run time set 6000
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] if entity @a[distance=..5,scores={PZTagZWS.3Wert=3}] run time set 13000
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] if entity @a[distance=..5,scores={PZTagZWS.3Wert=4}] run time set 18000
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] if entity @a[distance=..5,scores={PZTagZWS.3Wert=1..4}] store result score VarTagZWS.3Zeit PZTagZWS.3Wert run time query daytime

# Hat man auf Schnelligkeits-Option geklickt, so wird die Rotation der Sonne beschleunigt oder verlangsamt
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] if entity @a[distance=..5,scores={PZTagZWS.3Wert=5}] run scoreboard players add VarTagZWS.3Schnelligkeit PZTagZWS.3Wert 1
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] if entity @a[distance=..5,scores={PZTagZWS.3Wert=6}] run scoreboard players remove VarTagZWS.3Schnelligkeit PZTagZWS.3Wert 1

# Wenn die Tag-Nacht-Rhythmusanlage aktiv ist und der Spieler nicht den Wert null besitzt, so erhält er die Chat-Nachricht in der alle Wetteroptionen aufgelistet sind
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage,scores={PZTagZWS.3Wert=1..}] as @a[distance=..5] unless entity @s[scores={PZTagZWS.3Wert=0}] run tellraw @s ["Tageszeitwandler und -sensor.3: ",{"text":"\nzeit = ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Vormittag"} },"clickEvent":{"action":"run_command","value":"/trigger PZTagZWS.3Wert set 1"} },{"text":"1000","color":"gray","bold":true},{"text":"\nzeit = ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Nachmittag"} },"clickEvent":{"action":"run_command","value":"/trigger PZTagZWS.3Wert set 2"} },{"text":"6000","color":"gray","bold":true},{"text":"\nzeit = ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe Nacht"} },"clickEvent":{"action":"run_command","value":"/trigger PZTagZWS.3Wert set 3"} },{"text":"13000","color":"gray","bold":true},{"text":"\nzeit = ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe Mitternacht"} },"clickEvent":{"action":"run_command","value":"/trigger PZTagZWS.3Wert set 4"} },{"text":"18000","color":"gray","bold":true},{"text":"\nzeit == ","bold":true},{"score":{"name":"VarTagZWS.3Zeit","objective":"PZTagZWS.3Wert"},"color":"dark_purple","bold":true},{"text":"\nschnelligkeit (","bold":true},{"text":"+1","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Dauer +1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTagZWS.3Wert set 5"} },{"text":"!","bold":true},{"text":"-1","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Dauer -1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTagZWS.3Wert set 6"} },{"text":") == ","bold":true},{"score":{"name":"VarTagZWS.3Schnelligkeit","objective":"PZTagZWS.3Wert"},"color":"dark_purple","bold":true}]

# Spieler die keinen Wert besitzen oder einen über null erhalten die Erlaubnis einen Auslöser zu nutzen und bekommen den Wert null zugewiesen
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage] as @a[distance=..5] unless entity @s[scores={PZTagZWS.3Wert=0}] run scoreboard players enable @s PZTagZWS.3Wert
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage] as @a[distance=..5] unless entity @s[scores={PZTagZWS.3Wert=0}] run scoreboard players set @s PZTagZWS.3Wert 0
