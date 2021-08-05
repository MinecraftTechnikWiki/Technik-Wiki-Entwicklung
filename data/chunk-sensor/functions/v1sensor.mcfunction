# Die drei Koordinaten X, Y und Z werden in jeweils zwei Variablen gespeichert und dabei wird die Koordinate von einer Kommazahl in eine Ganzzahl umgewandelt.
execute store result score VarChunkS.1X PZChunkS.1Wert store result score VarChunkS.1XSektion PZChunkS.1Wert run data get entity @s Pos[0]
execute store result score VarChunkS.1Y PZChunkS.1Wert store result score VarChunkS.1YSektion PZChunkS.1Wert run data get entity @s Pos[1]
execute store result score VarChunkS.1Z PZChunkS.1Wert store result score VarChunkS.1ZSektion PZChunkS.1Wert run data get entity @s Pos[2]

# Um die Chunk-Koordinaten zu erhalten, werden die Koordinaten durch 16 geteilt.
scoreboard players operation VarChunkS.1X PZChunkS.1Wert /= KonstChunkS.1Chunk PZChunkS.1Wert
scoreboard players operation VarChunkS.1Y PZChunkS.1Wert /= KonstChunkS.1Chunk PZChunkS.1Wert
scoreboard players operation VarChunkS.1Z PZChunkS.1Wert /= KonstChunkS.1Chunk PZChunkS.1Wert

# Um die Sektions-Koordinaten zu erhalten, werden die Koordinaten modulo 16 genommen.
scoreboard players operation VarChunkS.1XSektion PZChunkS.1Wert %= KonstChunkS.1Chunk PZChunkS.1Wert
scoreboard players operation VarChunkS.1YSektion PZChunkS.1Wert %= KonstChunkS.1Chunk PZChunkS.1Wert
scoreboard players operation VarChunkS.1ZSektion PZChunkS.1Wert %= KonstChunkS.1Chunk PZChunkS.1Wert

# Die drei Chunk-Koordinaten und die drei Sektions-Kooridnaten werden mit Hilfe der Variablen ausgegeben.
title @s actionbar ["",{"text":"Chunk[","color":"gray","bold":true},{"score":{"name":"VarChunkS.1X","objective":"PZChunkS.1Wert"},"color":"dark_purple","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.1Y","objective":"PZChunkS.1Wert"},"color":"dark_purple","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.1Z","objective":"PZChunkS.1Wert"},"color":"dark_purple","bold":true},{"text":"] == [","color":"gray","bold":true},{"score":{"name":"VarChunkS.1XSektion","objective":"PZChunkS.1Wert"},"color":"red","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.1YSektion","objective":"PZChunkS.1Wert"},"color":"dark_green","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.1ZSektion","objective":"PZChunkS.1Wert"},"color":"blue","bold":true},{"text":"]","color":"gray","bold":true}]
