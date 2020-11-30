
execute store result score VarSperrZ.4SpielerX PZSperrZ.4Groes run data get entity @p Pos[0]
execute store result score VarSperrZ.4SpielerY PZSperrZ.4Groes run data get entity @p Pos[1]
execute store result score VarSperrZ.4SpielerZ PZSperrZ.4Groes run data get entity @p Pos[2]

execute if score VarSperrZ.4SpielerX PZSperrZ.4Groes >= VarSperrZ.4XUrsprung PZSperrZ.4Groes if score VarSperrZ.4SpielerX PZSperrZ.4Groes <= VarSperrZ.4XDelta PZSperrZ.4Groes run scoreboard players add @p PZSperrZ.4Ausl 1
execute if score VarSperrZ.4SpielerY PZSperrZ.4Groes >= VarSperrZ.4YUrsprung PZSperrZ.4Groes if score VarSperrZ.4SpielerY PZSperrZ.4Groes <= VarSperrZ.4YDelta PZSperrZ.4Groes run scoreboard players add @p PZSperrZ.4Ausl 1
execute if score VarSperrZ.4SpielerZ PZSperrZ.4Groes >= VarSperrZ.4ZUrsprung PZSperrZ.4Groes if score VarSperrZ.4SpielerZ PZSperrZ.4Groes <= VarSperrZ.4ZDelta PZSperrZ.4Groes run scoreboard players add @p PZSperrZ.4Ausl 1

tag @p[distance=..0.1,scores={PZSperrZ.4Ausl=3}] add EtiSperrZ.4InZone
scoreboard players set @p[distance=..0.1,scores={PZSperrZ.4Ausl=1..}] PZSperrZ.4Ausl 0
execute facing entity @s eyes as @p[tag=EtiSperrZ.4InZone] positioned as @s run teleport @s ^ ^ ^-0.3

tellraw @p[tag=EtiSperrZ.4InZone] "in Zone"

tag @p[tag=EtiSperrZ.4InZone] remove EtiSperrZ.4InZone
