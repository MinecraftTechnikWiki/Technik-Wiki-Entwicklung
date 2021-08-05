# Ein Punkte-Ziel wird angelegt um die Koordinaten zu speichern.
scoreboard objectives add PZChunkS.2Wert dummy ["Chunk-Sensor.2: ",{"text":"Chunk-Koordinaten","bold":true}]

# Eine Konstante die den Wert 16 besitzt wird festgelegt.
scoreboard players set KonstChunkS.2Chunk PZChunkS.2Wert 16

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Chunk-Koordinaten messen können.
give @a[distance=..15] minecraft:compass{EigChunkS.2Alle:true,EigChunkS.2Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Chunk-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Kompass aus"','"um die Chunk-Koordinaten"','"anzuzeigen zu lassen."'] } }

# Der Chunk wird aktiv, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~




# Wenn der Spieler den Kompass ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigChunkS.2Sensor:true} } }] add EtiChunkS.2Ausgewaehlt

# Spieler die das Etikett besitzen laden von sich aus die Sensor-Funktion.
execute as @a[tag=EtiChunkS.2Ausgewaehlt] run function chunk-sensor:v1sensor

# Wenn der Kompass nicht mehr ausgewählt ist, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiChunkS.2Ausgewaehlt,tag=EtiChunkS.2Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Kompass ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiChunkS.2Ausgewaehlt,tag=!EtiChunkS.2Auswahl] add EtiChunkS.2Auswahl
tag @a[tag=!EtiChunkS.2Ausgewaehlt,tag=EtiChunkS.2Auswahl] remove EtiChunkS.2Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiChunkS.2Ausgewaehlt] remove EtiChunkS.2Ausgewaehlt





scoreboard players set VarChunkS.2Weite PZChunkS.2Wert 0
execute at @s run function chunk-sensor:v1weite

# Die drei Koordinaten X, Y und Z werden in jeweils zwei Variablen gespeichert und dabei wird die Koordinate von einer Kommazahl in eine Ganzzahl umgewandelt.
execute store result score VarChunkS.2X PZChunkS.2Wert store result score VarChunkS.2XSektion PZChunkS.2Wert run data get entity @s Pos[0]
execute store result score VarChunkS.2Y PZChunkS.2Wert store result score VarChunkS.2YSektion PZChunkS.2Wert run data get entity @s Pos[1]
execute store result score VarChunkS.2Z PZChunkS.2Wert store result score VarChunkS.2ZSektion PZChunkS.2Wert run data get entity @s Pos[2]

# Um die Chunk-Koordinaten zu erhalten, werden die Koordinaten durch 16 geteilt.
scoreboard players operation VarChunkS.2X PZChunkS.2Wert /= KonstChunkS.2Chunk PZChunkS.2Wert
scoreboard players operation VarChunkS.2Y PZChunkS.2Wert /= KonstChunkS.2Chunk PZChunkS.2Wert
scoreboard players operation VarChunkS.2Z PZChunkS.2Wert /= KonstChunkS.2Chunk PZChunkS.2Wert

# Um die Sektions-Koordinaten zu erhalten, werden die Koordinaten modulo 16 genommen.
scoreboard players operation VarChunkS.2XSektion PZChunkS.2Wert %= KonstChunkS.2Chunk PZChunkS.2Wert
scoreboard players operation VarChunkS.2YSektion PZChunkS.2Wert %= KonstChunkS.2Chunk PZChunkS.2Wert
scoreboard players operation VarChunkS.2ZSektion PZChunkS.2Wert %= KonstChunkS.2Chunk PZChunkS.2Wert

# Die drei Chunk-Koordinaten und die drei Sektions-Kooridnaten werden mit Hilfe der Variablen ausgegeben.
title @s actionbar ["",{"text":"Chunk[","color":"gray","bold":true},{"score":{"name":"VarChunkS.2X","objective":"PZChunkS.2Wert"},"color":"dark_purple","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.2Y","objective":"PZChunkS.2Wert"},"color":"dark_purple","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.2Z","objective":"PZChunkS.2Wert"},"color":"dark_purple","bold":true},{"text":"] == [","color":"gray","bold":true},{"score":{"name":"VarChunkS.2XSektion","objective":"PZChunkS.2Wert"},"color":"red","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.2YSektion","objective":"PZChunkS.2Wert"},"color":"dark_green","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.2ZSektion","objective":"PZChunkS.2Wert"},"color":"blue","bold":true},{"text":"]","color":"gray","bold":true}]




execute store success score VarChunkS.2Geladen1 PZChunkS.2Wert if block ~ ~ ~ minecraft:air
execute store success score VarChunkS.2Geladen2 PZChunkS.2Wert unless block ~ ~ ~ minecraft:air

scoreboard players add VarChunkS.2Weite PZChunkS.2Wert 16
execute unless score VarChunkS.2Geladen1 PZChunkS.2Wert = VarChunkS.2Geladen2 PZChunkS.2Wert positioned ^ ^ ^16 run function chunk-sensor:v1weite




# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZChunkS.2Wert

# Das Etikett zur Auswahl des Kompasses, wird wieder entfernt, falls es noch vorhanden war.
tag @a[tag=EtiChunkS.2Auswahl] remove EtiChunkS.2Auswahl

# Der Kompass wird aus dem Inventar entfernt.
clear @a minecraft:compass{EigChunkS.2Alle:true}

# Falls der Kompass auf dem Boden geworfen wurde, wird der Drop entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigChunkS.2Alle:true} } }]

# Der aktive Chunk wird wieder entladen.
forceload remove ~ ~
