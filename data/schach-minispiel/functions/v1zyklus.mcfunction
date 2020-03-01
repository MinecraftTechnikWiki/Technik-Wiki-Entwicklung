
execute as @e[type=minecraft:armor_stand,tag=EtiSchMS.1SchachbrettErstellen] at @s run function schach-minispiel:v1erstellen

execute as @a[scores={PZSchMS.1Brett=1..}] run function schach-minispiel:v1ausloeser
execute if score VarSchMS.1VierSchach PZSchMS.1Brett matches 0.. as @a[distance=..250] unless entity @s[scores={PZSchMS.1Brett=0}] run tellraw @s ["Schach-Minispiel.1:",{"text":"\nSchach-Variante == ","bold":true},{"score":{"name":"VarSchMS.1VierSchach","objective":"PZSchMS.1Brett"},"color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Variante\n0 = normales Schach\n1 = Viererschach\n2 = Festungsschach"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchMS.1Brett set 1"} },{"text":"\nHorde == ","bold":true},{"score":{"name":"VarSchMS.1Horde","objective":"PZSchMS.1Brett"},"color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Horde\n0 = Keine Horde\n1 = Horde"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchMS.1Brett set 2"} }]
execute as @a unless entity @s[scores={PZSchMS.1Brett=0}] run scoreboard players enable @s PZSchMS.1Brett
scoreboard players set @a[scores={PZSchMS.1Brett=1..}] PZSchMS.1Brett 0

effect give @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Leuchten] minecraft:glowing 1 1 true

tag @e[type=minecraft:zombie,tag=EtiSchMS.1Anklickbar,tag=!EtiSchMS.1Angeklickt,nbt=!{Health:20.0f}] add EtiSchMS.1Angeklickt
execute as @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Angeklickt] at @s run function schach-minispiel:v1spielzug_angeklickt

execute as @e[tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..}] at @s if block ^ ^-1 ^-21 #schach-minispiel:v1schachbloecke align xyz positioned ~0.5 ~ ~0.5 run function schach-minispiel:v1figur_dame

tag @e[type=minecraft:shulker,tag=EtiSchMS.1ZugAuswahl,tag=!EtiSchMS.1ZugHierher,nbt=!{Health:30.0f}] add EtiSchMS.1ZugHierher
execute at @e[type=minecraft:shulker,tag=EtiSchMS.1ZugHierher] run function schach-minispiel:v1spielzug_hierher

execute as @e[tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden] at @s if block ~ ~ ~ minecraft:air run teleport @s ~ ~-1.35 ~
