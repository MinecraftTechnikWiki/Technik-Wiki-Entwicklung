# Die Position des Insassen wird ausgelesen und in Variablen gespeichert.
execute store result score VarSchwB.p2DX PZSchwB.p2Wert run data get entity @s Pos[0] 100
execute store result score VarSchwB.p2DZ PZSchwB.p2Wert run data get entity @s Pos[2] 100

# Von den Koordinaten des Insassen werden die Mittelpunkt-Koordinaten abgezogen um die Koordinaten auf den Nullpunkt zu bekommen.
scoreboard players operation VarSchwB.p2DX PZSchwB.p2Wert -= VarSchwB.p2X PZSchwB.p2Wert
scoreboard players operation VarSchwB.p2DZ PZSchwB.p2Wert -= VarSchwB.p2Z PZSchwB.p2Wert

# Je nach gewünschte Drehung, ob nach rechts, nach links oder umgedreht, wird eine der beiden oder beide Koordinaten mal minus eins gerechnet.
execute if score VarSchwB.p2Richtung PZSchwB.p2Wert matches 2..4 unless score VarSchwB.p2Richtung PZSchwB.p2Wert matches 3 run scoreboard players operation VarSchwB.p2DZ PZSchwB.p2Wert *= KonstSchwB.p2MINUSEINS PZSchwB.p2Wert
execute if score VarSchwB.p2Richtung PZSchwB.p2Wert matches 3..4 run scoreboard players operation VarSchwB.p2DX PZSchwB.p2Wert *= KonstSchwB.p2MINUSEINS PZSchwB.p2Wert
execute if score VarSchwB.p2Richtung PZSchwB.p2Wert matches 4 run scoreboard players operation VarSchwB.p2DZ PZSchwB.p2Wert >< VarSchwB.p2DX PZSchwB.p2Wert

# Ein Markierer wird an der Position des Insassen erzeugt. Dieser erhält auch die exakte Rotation.
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Drehung"]}
execute at @s run teleport @e[type=minecraft:marker,tag=EtiSchwB.p2Drehung,sort=nearest,limit=1] ~ ~ ~ ~ ~

# Anschließend wird die neue Position berechnet und in den Markierer gespeichert.
execute store result entity @e[type=minecraft:marker,tag=EtiSchwB.p2Drehung,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players operation VarSchwB.p2DZ PZSchwB.p2Wert += VarSchwB.p2X PZSchwB.p2Wert
execute store result entity @e[type=minecraft:marker,tag=EtiSchwB.p2Drehung,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players operation VarSchwB.p2DX PZSchwB.p2Wert += VarSchwB.p2Z PZSchwB.p2Wert

# Der Insasse wird an die neue gedrehte Position teleportiert.
teleport @s @e[type=minecraft:marker,tag=EtiSchwB.p2Drehung,sort=nearest,limit=1]

# Danach wird der Markierer wieder gelöscht.
kill @e[type=minecraft:marker,tag=EtiSchwB.p2Drehung,sort=nearest,limit=1]
