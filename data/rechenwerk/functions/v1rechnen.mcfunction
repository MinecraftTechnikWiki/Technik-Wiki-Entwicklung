
execute if entity @s[scores={PZRechW.1Wert=1}] run data modify storage rechenwerk:v1daten "EigRechW.1Variable1" prepend value 0

execute if entity @s[scores={PZRechW.1Wert=-1}] run data remove storage rechenwerk:v1daten "EigRechW.1Variable1"[0]

execute if entity @s[scores={PZRechW.1Wert=-2..2}] unless entity @s[scores={PZRechW.1Wert=-1..1}] store result score VarRechW.1Variable1 PZRechW.1Wert run data get storage rechenwerk:v1daten "EigRechW.1Variable1"[0]
execute if entity @s[scores={PZRechW.1Wert=2}] store result storage rechenwerk:v1daten "EigRechW.1Variable1"[0] int 1 run scoreboard players add VarRechW.1Variable1 PZRechW.1Wert 1
execute if entity @s[scores={PZRechW.1Wert=-2}] store result storage rechenwerk:v1daten "EigRechW.1Variable1"[0] int 1 run scoreboard players remove VarRechW.1Variable1 PZRechW.1Wert 1

execute if entity @s[scores={PZRechW.1Wert=3}] run data modify storage rechenwerk:v1daten "EigRechW.1Variable1" prepend from storage rechenwerk:v1daten "EigRechW.1Variable1"[-1]
execute if entity @s[scores={PZRechW.1Wert=3}] run data remove storage rechenwerk:v1daten "EigRechW.1Variable1"[-1]

execute if entity @s[scores={PZRechW.1Wert=4}] run data modify storage rechenwerk:v1daten "EigRechW.1Variable2" prepend value 0

execute if entity @s[scores={PZRechW.1Wert=-4}] run data remove storage rechenwerk:v1daten "EigRechW.1Variable2"[0]

execute if entity @s[scores={PZRechW.1Wert=-5..5}] unless entity @s[scores={PZRechW.1Wert=-4..4}] store result score VarRechW.1Variable1 PZRechW.1Wert run data get storage rechenwerk:v1daten "EigRechW.1Variable2"[0]
execute if entity @s[scores={PZRechW.1Wert=5}] store result storage rechenwerk:v1daten "EigRechW.1Variable2"[0] int 1 run scoreboard players add VarRechW.1Variable1 PZRechW.1Wert 1
execute if entity @s[scores={PZRechW.1Wert=-5}] store result storage rechenwerk:v1daten "EigRechW.1Variable2"[0] int 1 run scoreboard players remove VarRechW.1Variable1 PZRechW.1Wert 1

execute if entity @s[scores={PZRechW.1Wert=6}] run data modify storage rechenwerk:v1daten "EigRechW.1Variable2" prepend from storage rechenwerk:v1daten "EigRechW.1Variable2"[-1]
execute if entity @s[scores={PZRechW.1Wert=6}] run data remove storage rechenwerk:v1daten "EigRechW.1Variable2"[-1]

execute if entity @s[scores={PZRechW.1Wert=10}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"+","color":"blue","bold":true}'}
execute if entity @s[scores={PZRechW.1Wert=11}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"-","color":"blue","bold":true}'}
execute if entity @s[scores={PZRechW.1Wert=12}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"*","color":"blue","bold":true}'}
execute if entity @s[scores={PZRechW.1Wert=13}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"/","color":"blue","bold":true}'}
execute if entity @s[scores={PZRechW.1Wert=14}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"%","color":"blue","bold":true}'}

execute store result score VarRechW.1Variable1 PZRechW.1Wert run data get storage rechenwerk:v1daten "EigRechW.1Variable1"[0]
execute store result score VarRechW.1Variable2 PZRechW.1Wert run data get storage rechenwerk:v1daten "EigRechW.1Variable2"[0]

execute if entity @s[scores={PZRechW.1Wert=10..14}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Wert = VarRechW.1Variable1 PZRechW.1Wert
execute if entity @s[scores={PZRechW.1Wert=10}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Wert += VarRechW.1Variable2 PZRechW.1Wert
execute if entity @s[scores={PZRechW.1Wert=11}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Wert -= VarRechW.1Variable2 PZRechW.1Wert
execute if entity @s[scores={PZRechW.1Wert=12}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Wert *= VarRechW.1Variable2 PZRechW.1Wert
execute if entity @s[scores={PZRechW.1Wert=13}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Wert /= VarRechW.1Variable2 PZRechW.1Wert
execute if entity @s[scores={PZRechW.1Wert=14}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Wert %= VarRechW.1Variable2 PZRechW.1Wert
