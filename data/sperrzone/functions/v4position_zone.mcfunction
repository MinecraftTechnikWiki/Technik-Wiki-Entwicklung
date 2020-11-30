

execute store result score VarSperrZ.4XUrsprung PZSperrZ.4Groes store result score VarSperrZ.4XDelta PZSperrZ.4Groes run data get entity @s Pos[0]
execute store result score VarSperrZ.4YUrsprung PZSperrZ.4Groes store result score VarSperrZ.4YDelta PZSperrZ.4Groes run data get entity @s Pos[1]
execute store result score VarSperrZ.4ZUrsprung PZSperrZ.4Groes store result score VarSperrZ.4ZDelta PZSperrZ.4Groes run data get entity @s Pos[2]

scoreboard players operation VarSperrZ.4XUrsprung PZSperrZ.4Groes -= @s PZSperrZ.4Groes
scoreboard players operation VarSperrZ.4YUrsprung PZSperrZ.4Groes -= @s PZSperrZ.4Groes
scoreboard players operation VarSperrZ.4ZUrsprung PZSperrZ.4Groes -= @s PZSperrZ.4Groes

scoreboard players operation VarSperrZ.4XDelta PZSperrZ.4Groes += @s PZSperrZ.4Groes
scoreboard players operation VarSperrZ.4YDelta PZSperrZ.4Groes += @s PZSperrZ.4Groes
scoreboard players operation VarSperrZ.4ZDelta PZSperrZ.4Groes += @s PZSperrZ.4Groes

execute at @a[distance=..100] run function sperrzone:v4position_spieler
