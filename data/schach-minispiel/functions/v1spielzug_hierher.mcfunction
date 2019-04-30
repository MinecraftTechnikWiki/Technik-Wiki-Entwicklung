
execute if score VarSchMS.1VierSchach PZSchMS.1Brett matches 0 if entity @e[distance=..2,tag=EtiSchMS.1Koenig] as @e[tag=EtiSchMS.1Figur] if score @s PZSchMS.1Farbe = @e[distance=..2,tag=EtiSchMS.1Koenig,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Farbe run kill @s

execute if score VarSchMS.1VierSchach PZSchMS.1Brett matches 1..2 if entity @e[distance=..2,tag=EtiSchMS.1Koenig] as @e[tag=EtiSchMS.1Figur,tag=EtiSchMS.1Anklickbar] if score @s PZSchMS.1Farbe = @e[distance=..2,tag=EtiSchMS.1Koenig,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Farbe store result entity @s ArmorItems[1].tag.display.color int 1 store result entity @s ArmorItems[2].tag.display.color int 1 store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get KonstSchMS.1HELLGRAU PZSchMS.1Farbe
execute if score VarSchMS.1VierSchach PZSchMS.1Brett matches 1..2 if entity @e[distance=..2,tag=EtiSchMS.1Koenig] as @e[tag=EtiSchMS.1Figur,tag=EtiSchMS.1Anklickbar] if score @s PZSchMS.1Farbe = @e[distance=..2,tag=EtiSchMS.1Koenig,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Farbe run tag @s remove EtiSchMS.1Anklickbar

execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiSchMS.1Figur] add EtiSchMS.1Besiegen
effect clear @e[tag=EtiSchMS.1Besiegen]
execute as @e[tag=EtiSchMS.1Besiegen] at @s run teleport ~ -255 ~
kill @e[tag=EtiSchMS.1Besiegen]

execute as @e[tag=EtiSchMS.1Koenig,scores={PZSchMS.1Spielz=0}] at @s if entity @e[distance=..2,tag=EtiSchMS.1Koenig,tag=EtiSchMS.1Bewegen] positioned ^6 ^ ^ if entity @e[distance=..2,type=minecraft:shulker,tag=EtiSchMS.1ZugHierher] positioned ^1.5 ^ ^ if entity @e[distance=..6,tag=EtiSchMS.1KoenigDoppelZug] as @e[distance=..6,tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden] run teleport @s ^-4.5 ^ ^
execute as @e[tag=EtiSchMS.1Koenig,scores={PZSchMS.1Spielz=0}] at @s if entity @e[distance=..2,tag=EtiSchMS.1Koenig,tag=EtiSchMS.1Bewegen] positioned ^-6 ^ ^ if entity @e[distance=..2,type=minecraft:shulker,tag=EtiSchMS.1ZugHierher] positioned ^-1.5 ^ ^ if entity @e[distance=..6,tag=EtiSchMS.1KoenigDoppelZug] as @e[distance=..6,tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden] run teleport @s ^4.5 ^ ^

execute as @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bewegen] at @s as @e[distance=..2,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1BauerDoppelZug] positioned ^ ^ ^6 if entity @e[distance=..2,tag=EtiSchMS.1ZugAuswahl] run scoreboard players add @s PZSchMS.1Spielz 1
execute as @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bewegen] at @s as @e[distance=..2,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1BauerDoppelZug] positioned ^ ^ ^6 if entity @e[distance=..2,tag=EtiSchMS.1ZugAuswahl] run tag @s remove EtiSchMS.1BauerDoppelZug

execute as @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bewegen] at @s positioned ^3 ^ ^3 if entity @e[distance=..2,type=minecraft:shulker,tag=EtiSchMS.1ZugHierher] positioned ^ ^ ^-3 as @e[distance=..2,tag=EtiSchMS.1Bauer,tag=!EtiSchMS.1BauerDoppelZug,scores={PZSchMS.1Spielz=2}] run kill @e[distance=..2,tag=EtiSchMS.1Bauer]
execute as @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bewegen] at @s positioned ^-3 ^ ^3 if entity @e[distance=..2,type=minecraft:shulker,tag=EtiSchMS.1ZugHierher] positioned ^ ^ ^-3 as @e[distance=..2,tag=EtiSchMS.1Bauer,tag=!EtiSchMS.1BauerDoppelZug,scores={PZSchMS.1Spielz=2}] run kill @e[distance=..2,tag=EtiSchMS.1Bauer]

execute as @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bewegen] at @e[type=minecraft:armor_stand,tag=EtiSchMS.1ZugAuswahl] if entity @e[distance=..2,type=minecraft:shulker,tag=EtiSchMS.1ZugHierher] run teleport @s ~ ~ ~

scoreboard players add @e[type=minecraft:zombie,tag=EtiSchMS.1Leuchten] PZSchMS.1Spielz 1
tag @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Leuchten] remove EtiSchMS.1Leuchten
tag @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Bewegen] remove EtiSchMS.1Bewegen

effect clear @e[tag=EtiSchMS.1ZugAuswahl]
execute as @e[tag=EtiSchMS.1ZugAuswahl] at @s run teleport @s ~ -255 ~
kill @e[tag=EtiSchMS.1ZugAuswahl]
