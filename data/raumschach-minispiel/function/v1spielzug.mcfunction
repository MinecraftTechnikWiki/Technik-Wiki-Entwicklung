
tag @s add EtiRSchMS.1ZugHierher

#execute unless score VarRSchMS.1Variante PZRSchMS.1Brett matches 1.. positioned ~ ~-2 ~ if entity @e[distance=..2,tag=EtiRSchMS.1Koenig] as @e[type=minecraft:horse,tag=EtiRSchMS.1Figur] if score @s PZRSchMS.1Farbe = @n[distance=..2,tag=EtiRSchMS.1Koenig,tag=EtiRSchMS.1Anklickbar] PZRSchMS.1Farbe run teleport @s ~ -255 ~
#execute unless score VarRSchMS.1Variante PZRSchMS.1Brett matches 1.. positioned ~ ~-2 ~ if entity @e[distance=..2,tag=EtiRSchMS.1Koenig] as @e[tag=EtiRSchMS.1Figur] if score @s PZRSchMS.1Farbe = @n[distance=..2,tag=EtiRSchMS.1Koenig,tag=EtiRSchMS.1Anklickbar] PZRSchMS.1Farbe run kill @s

#execute if score VarRSchMS.1Variante PZRSchMS.1Brett matches 1..2 positioned ~ ~-2 ~ if entity @e[distance=..2,tag=EtiRSchMS.1Koenig] run tag @s add EtiRSchMS.1FigurenGrau
#execute if entity @s[tag=EtiRSchMS.1FigurenGrau] as @e[tag=EtiRSchMS.1Figur] positioned ~ ~-2 ~ if score @s PZRSchMS.1Farbe = @n[distance=..2,tag=EtiRSchMS.1Koenig,tag=EtiRSchMS.1Anklickbar] PZRSchMS.1Farbe store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run scoreboard players get KonstRSchMS.1HELLGRAU PZRSchMS.1Farbe
#execute if entity @s[tag=EtiRSchMS.1FigurenGrau] as @e[tag=EtiRSchMS.1Figur,tag=EtiRSchMS.1Farbe] positioned ~ ~-2 ~ if score @s PZRSchMS.1Farbe = @n[distance=..2,tag=EtiRSchMS.1Koenig,tag=EtiRSchMS.1Anklickbar] PZRSchMS.1Farbe run data merge entity @s {Color:8b}
#execute if entity @s[tag=EtiRSchMS.1FigurenGrau] as @e[tag=EtiRSchMS.1Figur,tag=EtiRSchMS.1Anklickbar] positioned ~ ~-2 ~ if score @s PZRSchMS.1Farbe = @n[distance=..2,tag=EtiRSchMS.1Koenig,tag=EtiRSchMS.1Anklickbar] PZRSchMS.1Farbe run tag @s remove EtiRSchMS.1Anklickbar

execute positioned ~-0.5 ~ ~-0.5 as @e[dx=1,dy=-5,dz=1,tag=EtiRSchMS.1Figur] unless score @s PZRSchMS.1Farbe = @n[tag=EtiRSchMS.1Figur,tag=EtiRSchMS.1Leuchten] PZRSchMS.1Farbe run tag @s add EtiRSchMS.1Besiegen
effect clear @e[type=minecraft:horse,tag=EtiRSchMS.1Besiegen]
execute as @e[tag=EtiRSchMS.1Besiegen] at @s run teleport ~ -255 ~
kill @e[tag=EtiRSchMS.1Besiegen]

execute as @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Bewegen] at @s as @e[distance=..2,tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1BauerDoppelZug] positioned ^ ^ ^10 if entity @e[distance=..2,tag=EtiRSchMS.1ZugAuswahl] run scoreboard players add @s PZRSchMS.1Spielz 1
execute as @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Bewegen] at @s as @e[distance=..2,tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1BauerDoppelZug] positioned ^ ^ ^10 if entity @e[distance=..2,tag=EtiRSchMS.1ZugAuswahl] run tag @s remove EtiRSchMS.1BauerDoppelZug

execute as @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Bewegen] at @s positioned ^5 ^2 ^5 if entity @e[distance=..2,type=minecraft:shulker,tag=EtiRSchMS.1ZugHierher] positioned ^ ^-2 ^-5 as @e[distance=..2,tag=EtiRSchMS.1Bauer,tag=!EtiRSchMS.1BauerDoppelZug,scores={PZRSchMS.1Spielz=2}] unless score @s PZRSchMS.1Farbe = @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Bewegen] PZRSchMS.1Farbe run kill @e[distance=..2,tag=EtiRSchMS.1Bauer]
execute as @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Bewegen] at @s positioned ^-5 ^2 ^5 if entity @e[distance=..2,type=minecraft:shulker,tag=EtiRSchMS.1ZugHierher] positioned ^ ^-2 ^-5 as @e[distance=..2,tag=EtiRSchMS.1Bauer,tag=!EtiRSchMS.1BauerDoppelZug,scores={PZRSchMS.1Spielz=2}] unless score @s PZRSchMS.1Farbe = @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Bewegen] PZRSchMS.1Farbe run kill @e[distance=..2,tag=EtiRSchMS.1Bauer]

execute as @e[tag=EtiRSchMS.1Alle,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Bewegen] at @e[type=minecraft:armor_stand,tag=EtiRSchMS.1ZugAuswahl] positioned ~ ~2 ~ if entity @e[distance=..2,type=minecraft:shulker,tag=EtiRSchMS.1ZugHierher] run teleport @s ~ ~-4 ~
execute as @n[tag=EtiRSchMS.1Turm,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Bewegen] at @s if block ~ ~ ~ minecraft:air run teleport @s ~ ~-1.35 ~

scoreboard players add @e[type=minecraft:zombie,tag=EtiRSchMS.1Leuchten] PZRSchMS.1Spielz 1
effect clear @e[tag=EtiRSchMS.1Alle,tag=EtiRSchMS.1Leuchten] minecraft:glowing
tag @e[tag=EtiRSchMS.1Alle,tag=EtiRSchMS.1Leuchten] remove EtiRSchMS.1Leuchten
tag @e[tag=EtiRSchMS.1Alle,tag=EtiRSchMS.1Bewegen] remove EtiRSchMS.1Bewegen

effect clear @e[tag=EtiRSchMS.1ZugAuswahl]
execute as @e[tag=EtiRSchMS.1ZugAuswahl] at @s run teleport @s ~ -255 ~
kill @e[tag=EtiRSchMS.1ZugAuswahl]
