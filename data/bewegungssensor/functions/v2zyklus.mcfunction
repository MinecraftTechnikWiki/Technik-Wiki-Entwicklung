# Die letzten Koordinaten und Rotationen werden in die Vergleichspunktestände gespeichert
execute as @a[distance=..25] run scoreboard players operation @s PZBewS.2XVergl = @s PZBewS.2X
execute as @a[distance=..25] run scoreboard players operation @s PZBewS.2YVergl = @s PZBewS.2Y
execute as @a[distance=..25] run scoreboard players operation @s PZBewS.2ZVergl = @s PZBewS.2Z
execute as @a[distance=..25] run scoreboard players operation @s PZBewS.2RicVergl = @s PZBewS.2Ric
execute as @a[distance=..25] run scoreboard players operation @s PZBewS.2NeiVergl = @s PZBewS.2Nei

# Anschließend werden die aktuellen Koordinaten und Rotationen der Spieler gespeichert
execute as @a[distance=..25] store result score @s PZBewS.2X run data get entity @s Pos[0] 1000
execute as @a[distance=..25] store result score @s PZBewS.2Y run data get entity @s Pos[1] 1000
execute as @a[distance=..25] store result score @s PZBewS.2Z run data get entity @s Pos[2] 1000
execute as @a[distance=..25] store result score @s PZBewS.2Ric run data get entity @s Rotation[0] 1000
execute as @a[distance=..25] store result score @s PZBewS.2Nei run data get entity @s Rotation[1] 1000

# Eine Nachricht wird ausgegeben, wenn die Bewegung des Spielers erfasst wurde
title @a[distance=..15,tag=EtiBewS.2BewegungErfasst] actionbar [""]

# Wenn sich die Koordinaten und Rotationen verändert haben, ist die letzte und die aktuelle Position, sowie die letzte und aktuelle Rotation ungleich und dann bekommt der Spieler ein Etikett, was jedoch zuvor entfernt wird, um jeden Tick erneut dies zu prüfen
tag @a[distance=..25,tag=EtiBewS.2BewegungErfasst] remove EtiBewS.2BewegungErfasst
execute as @a[distance=..25] unless score @s PZBewS.2XVergl = @s PZBewS.2X run tag @s[tag=!EtiBewS.2BewegungErfasst] add EtiBewS.2BewegungErfasst
execute as @a[distance=..25] unless score @s PZBewS.2YVergl = @s PZBewS.2Y run tag @s[tag=!EtiBewS.2BewegungErfasst] add EtiBewS.2BewegungErfasst
execute as @a[distance=..25] unless score @s PZBewS.2ZVergl = @s PZBewS.2Z run tag @s[tag=!EtiBewS.2BewegungErfasst] add EtiBewS.2BewegungErfasst
execute as @a[distance=..25] unless score @s PZBewS.2RicVergl = @s PZBewS.2Ric run tag @s[tag=!EtiBewS.2BewegungErfasst] add EtiBewS.2BewegungErfasst
execute as @a[distance=..25] unless score @s PZBewS.2NeiVergl = @s PZBewS.2Nei run tag @s[tag=!EtiBewS.2BewegungErfasst] add EtiBewS.2BewegungErfasst

# Wenn der Spieler sich bewegt hat, erhält eine Nachricht
title @a[distance=..15,tag=EtiBewS.2BewegungErfasst] actionbar ["",{"text":"Deine Bewegung wurde erfasst!","color":"dark_purple","bold":true} ]
