# Die letzten Koordinaten und Rotationen werden in die Vergleichspunktestände gespeichert
scoreboard players operation VarBewS.2Position PZBewS.2X = @s PZBewS.2X
scoreboard players operation VarBewS.2Position PZBewS.2Y = @s PZBewS.2Y
scoreboard players operation VarBewS.2Position PZBewS.2Z = @s PZBewS.2Z
scoreboard players operation VarBewS.2Position PZBewS.2Ric = @s PZBewS.2Ric
scoreboard players operation VarBewS.2Position PZBewS.2Nei = @s PZBewS.2Nei

# Anschließend werden die aktuellen Koordinaten und Rotationen der Spieler gespeichert
execute store result score @s PZBewS.2X run data get entity @s Pos[0] 1000
execute store result score @s PZBewS.2Y run data get entity @s Pos[1] 1000
execute store result score @s PZBewS.2Z run data get entity @s Pos[2] 1000
execute store result score @s PZBewS.2Ric run data get entity @s Rotation[0] 1000
execute store result score @s PZBewS.2Nei run data get entity @s Rotation[1] 1000

# Wenn sich die Koordinaten und Rotationen verändert haben, ist die letzte und die aktuelle Position, sowie die letzte und aktuelle Rotation ungleich und dann bekommt der Spieler ein Etikett, was jedoch zuvor entfernt wird, um jeden Tick erneut dies zu prüfen
execute unless score VarBewS.2Position PZBewS.2X = @s PZBewS.2X run tag @s[tag=!EtiBewS.2PositionErfasst] add EtiBewS.2PositionErfasst
execute unless score VarBewS.2Position PZBewS.2Y = @s PZBewS.2Y run tag @s[tag=!EtiBewS.2PositionErfasst] add EtiBewS.2PositionErfasst
execute unless score VarBewS.2Position PZBewS.2Z = @s PZBewS.2Z run tag @s[tag=!EtiBewS.2PositionErfasst] add EtiBewS.2PositionErfasst
execute unless score VarBewS.2Position PZBewS.2Ric = @s PZBewS.2Ric run tag @s[tag=!EtiBewS.2RotationErfasst] add EtiBewS.2RotationErfasst
execute unless score VarBewS.2Position PZBewS.2Nei = @s PZBewS.2Nei run tag @s[tag=!EtiBewS.2RotationErfasst] add EtiBewS.2RotationErfasst

execute unless entity @s[tag=!EtiBewS.2PositionErfasst,tag=!EtiBewS.2RotationErfasst] run tag @s add EtiBewS.2BewegungErfasst

# Wenn der Spieler sich bewegt hat, erhält eine Nachricht
title @s[tag=EtiBewS.2PositionErfasst] actionbar ["",{"text":"Position wurde geändert","color":"dark_purple","bold":true} ]
title @s[tag=EtiBewS.2RotationErfasst] actionbar ["",{"text":"Rotation wurde geändert","color":"dark_purple","bold":true} ]

# Eine Nachricht wird ausgegeben, wenn die Bewegung des Spielers erfasst wurde
title @s[tag=!EtiBewS.2BewegungErfasst] actionbar [""]

tag @s[tag=EtiBewS.2BewegungErfasst] remove EtiBewS.2PositionErfasst
tag @s[tag=EtiBewS.2BewegungErfasst] remove EtiBewS.2RotationErfasst
tag @s[tag=EtiBewS.2BewegungErfasst] remove EtiBewS.2BewegungErfasst
