# Die Position des Insassen wird ausgelesen und in Variablen gespeichert.
execute store result score VarSchwB.p1DX PZSchwB.p1Wert run data get entity @s Pos[0] 100
execute store result score VarSchwB.p1DZ PZSchwB.p1Wert run data get entity @s Pos[2] 100

# Von den Koordinaten des Insassen werden die Mittelpunkt-Koordinaten abgezogen um die Koordinaten auf den Nullpunkt zu bekommen.
scoreboard players operation VarSchwB.p1DX PZSchwB.p1Wert -= VarSchwB.p1X PZSchwB.p1Wert
scoreboard players operation VarSchwB.p1DZ PZSchwB.p1Wert -= VarSchwB.p1Z PZSchwB.p1Wert

# Je nach gewünschte Drehung, ob nach rechts, nach links oder umgedreht, wird eine der beiden oder beide Koordinaten mal minus eins gerechnet.
execute if score VarSchwB.p1Richtung PZSchwB.p1Wert matches 2..4 unless score VarSchwB.p1Richtung PZSchwB.p1Wert matches 3 run scoreboard players operation VarSchwB.p1DZ PZSchwB.p1Wert *= KonstSchwB.p1MINUSEINS PZSchwB.p1Wert
execute if score VarSchwB.p1Richtung PZSchwB.p1Wert matches 3..4 run scoreboard players operation VarSchwB.p1DX PZSchwB.p1Wert *= KonstSchwB.p1MINUSEINS PZSchwB.p1Wert
execute if score VarSchwB.p1Richtung PZSchwB.p1Wert matches 4 run scoreboard players operation VarSchwB.p1DZ PZSchwB.p1Wert >< VarSchwB.p1DX PZSchwB.p1Wert

# Ein Markierer wird an der Position des Insassen erzeugt. Dieser erhält auch die exakte Rotation.
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["EtiSchwB.p1Alle","EtiSchwB.p1Drehung"]}
execute at @s run teleport @e[type=minecraft:marker,tag=EtiSchwB.p1Drehung,sort=nearest,limit=1] ~ ~ ~ ~ ~

# Anschließend wird die neue Position berechnet und in den Markierer gespeichert.
execute store result entity @e[type=minecraft:marker,tag=EtiSchwB.p1Drehung,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players operation VarSchwB.p1DZ PZSchwB.p1Wert += VarSchwB.p1X PZSchwB.p1Wert
execute store result entity @e[type=minecraft:marker,tag=EtiSchwB.p1Drehung,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players operation VarSchwB.p1DX PZSchwB.p1Wert += VarSchwB.p1Z PZSchwB.p1Wert

# Der Insasse wird an die neue gedrehte Position teleportiert.
teleport @s @e[type=minecraft:marker,tag=EtiSchwB.p1Drehung,sort=nearest,limit=1]

# Danach wird der Markierer wieder gelöscht.
kill @e[type=minecraft:marker,tag=EtiSchwB.p1Drehung,sort=nearest,limit=1]
