
execute if entity @s[scores={PZRechW.1Ausl=1}] run data modify storage rechenwerk:v1daten "EigRechW.1Variable1" prepend value 0

execute if entity @s[scores={PZRechW.1Ausl=-1}] run data remove storage rechenwerk:v1daten "EigRechW.1Variable1"[0]

execute if entity @s[scores={PZRechW.1Ausl=-2..2}] unless entity @s[scores={PZRechW.1Ausl=-1..1}] store result score VarRechW.1Variable1 PZRechW.1Ausl run data get storage rechenwerk:v1daten "EigRechW.1Variable1"[0]
execute if entity @s[scores={PZRechW.1Ausl=2}] store result storage rechenwerk:v1daten "EigRechW.1Variable1"[0] int 1 run scoreboard players add VarRechW.1Variable1 PZRechW.1Ausl 1
execute if entity @s[scores={PZRechW.1Ausl=-2}] store result storage rechenwerk:v1daten "EigRechW.1Variable1"[0] int 1 run scoreboard players remove VarRechW.1Variable1 PZRechW.1Ausl 1

execute if entity @s[scores={PZRechW.1Ausl=3}] run data modify storage rechenwerk:v1daten "EigRechW.1Variable1" prepend from storage rechenwerk:v1daten "EigRechW.1Variable1"[-1]
execute if entity @s[scores={PZRechW.1Ausl=3}] run data remove storage rechenwerk:v1daten "EigRechW.1Variable1"[-1]

execute if entity @s[scores={PZRechW.1Ausl=4}] run data modify storage rechenwerk:v1daten "EigRechW.1Variable2" prepend value 0

execute if entity @s[scores={PZRechW.1Ausl=-4}] run data remove storage rechenwerk:v1daten "EigRechW.1Variable2"[0]

execute if entity @s[scores={PZRechW.1Ausl=-5..5}] unless entity @s[scores={PZRechW.1Ausl=-4..4}] store result score VarRechW.1Variable1 PZRechW.1Ausl run data get storage rechenwerk:v1daten "EigRechW.1Variable2"[0]
execute if entity @s[scores={PZRechW.1Ausl=5}] store result storage rechenwerk:v1daten "EigRechW.1Variable2"[0] int 1 run scoreboard players add VarRechW.1Variable1 PZRechW.1Ausl 1
execute if entity @s[scores={PZRechW.1Ausl=-5}] store result storage rechenwerk:v1daten "EigRechW.1Variable2"[0] int 1 run scoreboard players remove VarRechW.1Variable1 PZRechW.1Ausl 1

execute if entity @s[scores={PZRechW.1Ausl=6}] run data modify storage rechenwerk:v1daten "EigRechW.1Variable2" prepend from storage rechenwerk:v1daten "EigRechW.1Variable2"[-1]
execute if entity @s[scores={PZRechW.1Ausl=6}] run data remove storage rechenwerk:v1daten "EigRechW.1Variable2"[-1]

execute if entity @s[scores={PZRechW.1Ausl=10}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"+","color":"blue","bold":true}'}
execute if entity @s[scores={PZRechW.1Ausl=11}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"-","color":"blue","bold":true}'}
execute if entity @s[scores={PZRechW.1Ausl=12}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"*","color":"blue","bold":true}'}
execute if entity @s[scores={PZRechW.1Ausl=13}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"/","color":"blue","bold":true}'}
execute if entity @s[scores={PZRechW.1Ausl=14}] run data merge storage rechenwerk:v1daten {EigRechW.1Operator:'{"text":"%","color":"blue","bold":true}'}

execute store result score VarRechW.1Variable1 PZRechW.1Ausl run data get storage rechenwerk:v1daten "EigRechW.1Variable1"[0]
execute store result score VarRechW.1Variable2 PZRechW.1Ausl run data get storage rechenwerk:v1daten "EigRechW.1Variable2"[0]

execute if entity @s[scores={PZRechW.1Ausl=10..14}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Ausl = VarRechW.1Variable1 PZRechW.1Ausl
execute if entity @s[scores={PZRechW.1Ausl=10}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Ausl += VarRechW.1Variable2 PZRechW.1Ausl
execute if entity @s[scores={PZRechW.1Ausl=11}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Ausl -= VarRechW.1Variable2 PZRechW.1Ausl
execute if entity @s[scores={PZRechW.1Ausl=12}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Ausl *= VarRechW.1Variable2 PZRechW.1Ausl
execute if entity @s[scores={PZRechW.1Ausl=13}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Ausl /= VarRechW.1Variable2 PZRechW.1Ausl
execute if entity @s[scores={PZRechW.1Ausl=14}] run scoreboard players operation VarRechW.1Ergebnis PZRechW.1Ausl %= VarRechW.1Variable2 PZRechW.1Ausl
