
execute as @e[type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1Erstellen] at @s run function tower-defense-minispiel:v1turm





scoreboard players add @e[type=minecraft:item_display,tag=EtiTowDefMS.1Schuetze] PZTowDefMS.1Leben 1
execute as @e[tag=EtiTowDefMS.1Schuetze] at @s run function tower-defense-minispiel:v1leben

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Schuetze] at @s facing entity @e[distance=..10,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~ 

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=EtiTowDefMS.1Geschossen,scores={PZTowDefMS.1Leben=1}] at @s store success score @s PZTowDefMS.1Versuch run damage @e[distance=..2,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] 3 minecraft:arrow

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=EtiTowDefMS.1Geschossen,scores={PZTowDefMS.1Leben=2}] at @s store success score @s PZTowDefMS.1Versuch run damage @e[distance=..2,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] 7 minecraft:arrow

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=EtiTowDefMS.1Geschossen,scores={PZTowDefMS.1Leben=3}] at @s store success score @s PZTowDefMS.1Versuch run damage @e[distance=..2,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] 11 minecraft:arrow

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=EtiTowDefMS.1Geschossen,scores={PZTowDefMS.1Versuch=0}] at @s store success score @s PZTowDefMS.1Versuch unless entity @e[distance=..15,type=minecraft:item_display,tag=EtiTowDefMS.1Schuetze]

#execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=EtiTowDefMS.1Geschossen,scores={PZTowDefMS.1Versuch=0}] at @s store success score @s PZTowDefMS.1Versuch unless block ~ ~ ~ minecraft:air

kill @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=EtiTowDefMS.1Geschossen,scores={PZTowDefMS.1Versuch=1}]

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=EtiTowDefMS.1Geschossen] at @s run teleport @s ^ ^ ^0.75 ~ ~

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Schuetze,scores={PZTowDefMS.1Leben=20..}] at @s if entity @e[distance=..10,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:arrow",count:1},Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Geschoss"]}

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=!EtiTowDefMS.1Geschossen] at @s positioned ~ ~-4 ~ run scoreboard players operation @s PZTowDefMS.1Leben = @e[distance=..2,type=minecraft:marker,tag=EtiTowDefMS.1Schiessturm,sort=nearest,limit=1] PZTowDefMS.1Leben

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=!EtiTowDefMS.1Geschossen] at @s facing entity @e[distance=..10,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~ 

tag @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss,tag=!EtiTowDefMS.1Geschossen] add EtiTowDefMS.1Geschossen

scoreboard players set @e[type=minecraft:item_display,tag=EtiTowDefMS.1Schuetze,scores={PZTowDefMS.1Leben=20..}] PZTowDefMS.1Leben 0





scoreboard players add @e[type=minecraft:block_display,tag=EtiTowDefMS.1Gefrieren] PZTowDefMS.1Versuch 1

execute at @e[type=minecraft:block_display,tag=EtiTowDefMS.1Gefrieren,scores={PZTowDefMS.1Versuch=100..}] run tag @e[distance=..1,tag=EtiTowDefMS.1Gegner,tag=EtiTowDefMS.1Gefroren,sort=nearest,limit=1] remove EtiTowDefMS.1Gefroren
kill @e[type=minecraft:block_display,tag=EtiTowDefMS.1Gefrieren,scores={PZTowDefMS.1Versuch=100..}]

scoreboard players add @e[type=minecraft:item_display,tag=EtiTowDefMS.1Gefrieren] PZTowDefMS.1Leben 1

#execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Gefrieren,scores={PZTowDefMS.1Leben=600..}] at @s store success score @s PZTowDefMS.1Versuch if entity @e[distance=..10,tag=EtiTowDefMS.1Gegner]

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Gefrieren,scores={PZTowDefMS.1Leben=600..}] at @s store success score @s PZTowDefMS.1Versuch run scoreboard players set @e[distance=..2,type=minecraft:arrow] PZTowDefMS.1Versuch 1

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Gefrieren,scores={PZTowDefMS.1Leben=600..,PZTowDefMS.1Versuch=1}] at @s store success score @s PZTowDefMS.1Versuch run tag @e[distance=..10,tag=EtiTowDefMS.1Gegner] add EtiTowDefMS.1Gefroren

#execute at @e[type=minecraft:item_display,tag=EtiTowDefMS.1Gefrieren,scores={PZTowDefMS.1Leben=600..,PZTowDefMS.1Versuch=1}] run tellraw @a[distance=..100,tag=EtiTowDefMS.1Spielen] "Eisturm wurde aktiviert"

execute at @e[type=minecraft:item_display,tag=EtiTowDefMS.1Gefrieren,scores={PZTowDefMS.1Leben=600..,PZTowDefMS.1Versuch=1}] at @e[distance=..10,tag=EtiTowDefMS.1Gegner,tag=EtiTowDefMS.1Gefroren] run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:ice"},Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Gefrieren"]}

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Gefrieren,scores={PZTowDefMS.1Leben=600..,PZTowDefMS.1Versuch=1}] store result score @s PZTowDefMS.1Versuch run scoreboard players set @s PZTowDefMS.1Leben 0



execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Explosion] at @s store success score @s PZTowDefMS.1Versuch run scoreboard players set @e[distance=..2,type=minecraft:arrow] PZTowDefMS.1Versuch 1

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Explosion,scores={PZTowDefMS.1Versuch=1}] at @s positioned ~ ~-4 ~ if entity @e[distance=..2,type=minecraft:marker,tag=EtiTowDefMS.1TNTTurm,scores={PZTowDefMS.1Leben=1},sort=nearest,limit=1] as @e[distance=..10,tag=EtiTowDefMS.1Gegner] run damage @s 20 minecraft:explosion

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Explosion,scores={PZTowDefMS.1Versuch=1}] at @s positioned ~ ~-4 ~ if entity @e[distance=..2,type=minecraft:marker,tag=EtiTowDefMS.1TNTTurm,scores={PZTowDefMS.1Leben=2},sort=nearest,limit=1] as @e[distance=..10,tag=EtiTowDefMS.1Gegner] run damage @s 35 minecraft:explosion

execute as @e[type=minecraft:item_display,tag=EtiTowDefMS.1Explosion,scores={PZTowDefMS.1Versuch=1}] at @s positioned ~ ~-4 ~ if entity @e[distance=..2,type=minecraft:marker,tag=EtiTowDefMS.1TNTTurm,scores={PZTowDefMS.1Leben=2},sort=nearest,limit=1] as @e[distance=..10,tag=EtiTowDefMS.1Gegner] run damage @s 45 minecraft:explosion

execute at @e[type=minecraft:item_display,tag=EtiTowDefMS.1Explosion,scores={PZTowDefMS.1Versuch=1}] as @e[distance=..2,type=minecraft:text_display,tag=EtiTowDefMS.1Aufladen,limit=1] store success score @s PZTowDefMS.1Versuch positioned ~ ~-6 ~ as @e[distance=..1,type=minecraft:marker,tag=EtiTowDefMS.1TNTTurm,limit=1] at @s store success score @s PZTowDefMS.1Versuch run fill ~-1 ~ ~-1 ~1 ~6 ~1 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1TNTTurm,scores={PZTowDefMS.1Versuch=1}] at @e[distance=..10,tag=EtiTowDefMS.1Gegner] run particle minecraft:explosion ~ ~ ~ 2 2 2 0.1 10 force @a[distance=..50,tag=EtiTowDefMS.1Spielen]

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1TNTTurm,scores={PZTowDefMS.1Versuch=1}] positioned ~-2 ~-1 ~-2 run kill @e[dx=4,dy=8,dz=4,scores={PZTowDefMS.1Versuch=1}]

#kill @e[type=minecraft:text_display,tag=EtiTowDefMS.1Aufladen]
#kill @e[type=minecraft:arrow,scores={PZTowDefMS.1Versuch=1}]
#kill @e[type=minecraft:marker,scores={PZTowDefMS.1Versuch=1}]
#kill @e[type=minecraft:item_display,scores={PZTowDefMS.1Versuch=1}]

#execute positioned ~ ~-8 ~ if entity @e[distance=..2,type=minecraft:marker,tag=EtiTowDefMS.1Turm,sort=nearest,limit=1]

execute if score VarTowDefMS.1Punkte1 PZTowDefMS.1Wert matches 50.. as @e[distance=..100,type=minecraft:snowball,tag=EtiTowDefMS.1Ball,scores={PZTowDefMS.1Wert=1}] at @s store success score @s PZTowDefMS.1Versuch positioned ~ ~-4 ~ run tag @e[distance=..2,type=minecraft:marker,tag=EtiTowDefMS.1Turm,sort=nearest,limit=1] add EtiTowDefMS.1Aufwerten
execute if score VarTowDefMS.1Punkte1 PZTowDefMS.1Wert matches 50.. as @e[distance=..100,type=minecraft:snowball,tag=EtiTowDefMS.1Ball,scores={PZTowDefMS.1Wert=2}] at @s store success score @s PZTowDefMS.1Versuch positioned ~ ~-4 ~ run tag @e[distance=..2,type=minecraft:marker,tag=EtiTowDefMS.1Turm,sort=nearest,limit=1] add EtiTowDefMS.1Aufwerten

scoreboard players add @e[distance=..100,type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1Aufwerten,scores={PZTowDefMS.1Leben=..2}] PZTowDefMS.1Leben 1

execute at @e[distance=..100,type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1Schiessturm,tag=EtiTowDefMS.1Aufwerten,scores={PZTowDefMS.1Leben=2}] run place template tower-defense-minispiel:v1schiessturm_2 ~-1 ~ ~-1 none
execute at @e[distance=..100,type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1Schiessturm,tag=EtiTowDefMS.1Aufwerten,scores={PZTowDefMS.1Leben=3}] run place template tower-defense-minispiel:v1schiessturm_3 ~-1 ~ ~-1 none

execute at @e[distance=..100,type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1Eisturm,tag=EtiTowDefMS.1Aufwerten,scores={PZTowDefMS.1Leben=2}] run place template tower-defense-minispiel:v1eisturm_2 ~-1 ~ ~-1 none
execute at @e[distance=..100,type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1Eisturm,tag=EtiTowDefMS.1Aufwerten,scores={PZTowDefMS.1Leben=3}] run place template tower-defense-minispiel:v1eisturm_3 ~-1 ~ ~-1 none

execute at @e[distance=..100,type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1TNTTurm,tag=EtiTowDefMS.1Aufwerten,scores={PZTowDefMS.1Leben=2}] run place template tower-defense-minispiel:v1tntturm_2 ~-1 ~ ~-1 none
execute at @e[distance=..100,type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1TNTTurm,tag=EtiTowDefMS.1Aufwerten,scores={PZTowDefMS.1Leben=3}] run place template tower-defense-minispiel:v1tntturm_3 ~-1 ~ ~-1 none

tag @e[distance=..100,type=minecraft:marker,tag=EtiTowDefMS.1Turm,tag=EtiTowDefMS.1Aufwerten] remove EtiTowDefMS.1Aufwerten

execute if score VarTowDefMS.1Punkte1 PZTowDefMS.1Wert matches 50.. if entity @e[distance=..100,type=minecraft:snowball,tag=EtiTowDefMS.1Ball,scores={PZTowDefMS.1Versuch=1,PZTowDefMS.1Wert=1}] run scoreboard players remove VarTowDefMS.1Punkte1 PZTowDefMS.1Wert 50

execute if score VarTowDefMS.1Punkte2 PZTowDefMS.1Wert matches 50.. if entity @e[distance=..100,type=minecraft:snowball,tag=EtiTowDefMS.1Ball,scores={PZTowDefMS.1Versuch=1,PZTowDefMS.1Wert=2}] run scoreboard players remove VarTowDefMS.1Punkte2 PZTowDefMS.1Wert 50



execute as @e[distance=..100,type=minecraft:snowball,tag=!EtiTowDefMS.1Ball] store result score @s PZTowDefMS.1Wert run data get entity @s Item.components.minecraft:custom_data."EigTowDefMS.1Mannschaft"
tag @e[distance=..100,type=minecraft:snowball,tag=!EtiTowDefMS.1Ball,scores={PZTowDefMS.1Wert=1..}] add EtiTowDefMS.1Ball

execute as @e[distance=..100,type=minecraft:snowball,tag=EtiTowDefMS.1Ball,scores={PZTowDefMS.1Wert=1..}] at @s as @e[distance=..3,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Versuch=1..},sort=nearest,limit=1] if score @s PZTowDefMS.1Wert = @e[distance=..0.5,type=minecraft:snowball,tag=EtiTowDefMS.1Ball,limit=1] PZTowDefMS.1Wert store success score @e[distance=..0.5,type=minecraft:snowball,tag=EtiTowDefMS.1Ball,limit=1] PZTowDefMS.1Versuch run tag @s add EtiTowDefMS.1Heilen

execute if score VarTowDefMS.1Punkte1 PZTowDefMS.1Wert matches 5.. run scoreboard players add @e[distance=..100,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,tag=EtiTowDefMS.1Heilen,scores={PZTowDefMS.1Wert=1,PZTowDefMS.1Versuch=1..},sort=nearest,limit=1] PZTowDefMS.1Versuch 1
execute if score VarTowDefMS.1Punkte2 PZTowDefMS.1Wert matches 5.. run scoreboard players add @e[distance=..100,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,tag=EtiTowDefMS.1Heilen,scores={PZTowDefMS.1Wert=2,PZTowDefMS.1Versuch=1..},sort=nearest,limit=1] PZTowDefMS.1Versuch 1

execute if score VarTowDefMS.1Punkte1 PZTowDefMS.1Wert matches 5.. if entity @e[distance=..100,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,tag=EtiTowDefMS.1Heilen,scores={PZTowDefMS.1Wert=1},sort=nearest,limit=1] run scoreboard players remove VarTowDefMS.1Punkte1 PZTowDefMS.1Wert 5
execute if score VarTowDefMS.1Punkte2 PZTowDefMS.1Wert matches 5.. if entity @e[distance=..100,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,tag=EtiTowDefMS.1Heilen,scores={PZTowDefMS.1Wert=2},sort=nearest,limit=1] run scoreboard players remove VarTowDefMS.1Punkte2 PZTowDefMS.1Wert 5

scoreboard players set @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,tag=EtiTowDefMS.1Heilen,scores={PZTowDefMS.1Versuch=101..},sort=nearest,limit=2] PZTowDefMS.1Versuch 100

tag @e[distance=..100,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,tag=EtiTowDefMS.1Heilen,scores={PZTowDefMS.1Versuch=1..},sort=nearest,limit=2] remove EtiTowDefMS.1Heilen

kill @e[distance=..100,type=minecraft:snowball,tag=EtiTowDefMS.1Ball,scores={PZTowDefMS.1Versuch=1}]


#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=0}] at @s run teleport @s ~ ~ ~ 0 0
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=0}] run data merge entity @s {Motion:[0.0d,-1.0d,0.2d]}

#execute as @e[tag=EtiTowDefMS.1Gegner,y_rotation=-45.0..45.0] run data merge entity @s {Rotation:[0.0f,0.0f],Motion:[0.0d,-1.0d,0.2d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,y_rotation=45.0..135.0] run data merge entity @s {Rotation:[90.0f,0.0f],Motion:[-0.2d,-1.0d,0.0d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,y_rotation=135.0..-135.0] run data merge entity @s {Rotation:[180.0f,0.0f],Motion:[0.0d,-1.0d,-0.2d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,y_rotation=-135.0..-45.0] run data merge entity @s {Rotation:[270.0f,0.0f],Motion:[0.2d,-1.0d,0.0d]}



#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=0}] at @s run teleport @s ~ ~ ~ 0 0
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=1}] at @s run teleport @s ~ ~ ~ 90 0
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=2}] at @s run teleport @s ~ ~ ~ 180 0
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=3}] at @s run teleport @s ~ ~ ~ 270 0

#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=0}] run data merge entity @s {Motion:[0.0d,-1.0d,0.2d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=1}] run data merge entity @s {Motion:[-0.2d,-1.0d,0.0d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=2}] run data merge entity @s {Motion:[0.0d,-1.0d,-0.2d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=3}] run data merge entity @s {Motion:[0.2d,-1.0d,0.0d]}

execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren,scores={PZTowDefMS.1Richtung=0}] run data merge entity @s {Rotation:[0.0f,0.0f],Motion:[0.0d,-1.0d,0.2d]}
execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren,scores={PZTowDefMS.1Richtung=1}] run data merge entity @s {Rotation:[90.0f,0.0f],Motion:[-0.2d,-1.0d,0.0d]}
execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren,scores={PZTowDefMS.1Richtung=2}] run data merge entity @s {Rotation:[180.0f,0.0f],Motion:[0.0d,-1.0d,-0.2d]}
execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren,scores={PZTowDefMS.1Richtung=3}] run data merge entity @s {Rotation:[270.0f,0.0f],Motion:[0.2d,-1.0d,0.0d]}

#scoreboard players set @s[tag=EtiTowDefMS.1Gegner] PZTowDefMS.1Richtung 0


execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren] at @s run function tower-defense-minispiel:v1laufen


#execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren] at @s if block ^ ^-1 ^3 minecraft:smooth_quartz if block ^-4 ^-1 ^ #minecraft:mineable/shovel run scoreboard players add @s PZTowDefMS.1Richtung 1
#execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren] at @s if block ^ ^-1 ^3 minecraft:smooth_quartz if block ^-4 ^-2 ^ #minecraft:mineable/shovel run scoreboard players add @s PZTowDefMS.1Richtung 1

#execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren] at @s if block ^ ^-1 ^3 minecraft:smooth_quartz_slab if block ^-4 ^-1 ^ #minecraft:mineable/shovel run scoreboard players add @s PZTowDefMS.1Richtung 1
#execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren] at @s if block ^ ^-1 ^3 minecraft:smooth_quartz_slab if block ^-4 ^-2 ^ #minecraft:mineable/shovel run scoreboard players add @s PZTowDefMS.1Richtung 1


#execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren] at @s if block ^ ^-1 ^3 minecraft:smooth_quartz if block ^4 ^-1 ^ #minecraft:mineable/shovel run scoreboard players remove @s PZTowDefMS.1Richtung 1
#execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren] at @s if block ^ ^-1 ^3 minecraft:smooth_quartz if block ^4 ^-2 ^ #minecraft:mineable/shovel run scoreboard players remove @s PZTowDefMS.1Richtung 1


#scoreboard players set @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=4..}] PZTowDefMS.1Richtung 0
#scoreboard players set @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=..-1}] PZTowDefMS.1Richtung 3

#execute as @e[tag=EtiTowDefMS.1Gegner] at @s if block ^-3 ^-1 ^-2 minecraft:birch_planks run teleport @s ~ ~ ~ ~90 ~
#execute as @e[tag=EtiTowDefMS.1Gegner] at @s if block ^ ^-1 ^2 minecraft:birch_planks run teleport @s ~ ~ ~ ~-90 ~


#execute as @e[tag=EtiTowDefMS.1Gegner] at @s if entity @e[distance=..0.5,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Versuch=1..},sort=nearest,limit=1]

execute as @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren] at @s store success score @s PZTowDefMS.1Versuch run scoreboard players remove @e[distance=..1.75,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Versuch=1..},sort=nearest,limit=1] PZTowDefMS.1Versuch 1
kill @e[tag=EtiTowDefMS.1Gegner,tag=!EtiTowDefMS.1Gefroren,scores={PZTowDefMS.1Versuch=1}]

#execute as @e[tag=EtiTowDefMS.1Gegner] at @s unless block ~ ~ ~ minecraft:air run scoreboard players remove @e[distance=..5,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Versuch=1..},sort=nearest,limit=1] PZTowDefMS.1Versuch 1
#execute as @e[tag=EtiTowDefMS.1Gegner] at @s unless block ~ ~ ~ minecraft:air run kill @s

#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=0}] run data merge entity @s {Rotation:[0.0f,0.0f],Motion:[0.0d,-1.0d,0.2d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=1}] run data merge entity @s {Rotation:[270.0f,0.0f],Motion:[0.2d,-1.0d,0.0d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=2}] run data merge entity @s {Rotation:[180.0f,0.0f],Motion:[0.0d,-1.0d,-0.2d]}
#execute as @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Richtung=3}] run data merge entity @s {Rotation:[90.0f,0.0f],Motion:[-0.2d,-1.0d,0.0d]}

#scoreboard players set @e[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=135.0..-135.0,sort=nearest,limit=1] PZTowDefMS.1Richtung 0
#scoreboard players set @e[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=-135.0..-45.0,sort=nearest,limit=1] PZTowDefMS.1Richtung 1
#scoreboard players set @e[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=-45.0..45.0,sort=nearest,limit=1] PZTowDefMS.1Richtung 2
#scoreboard players set @e[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=45.0..135.0,sort=nearest,limit=1] PZTowDefMS.1Richtung 3


#execute as @e[tag=EtiTowDefMS.1Gegner] at @s if block ~ ~-0.1 ~ minecraft:air run teleport @s ~ ~-0.1 ~


#execute as @e[tag=EtiTowDefMS.1Gegner] at @s run teleport @s ^ ^ ^0.15

#execute as @e[tag=EtiTowDefMS.1Gegner] at @s if block ~ ~-0.1 ~ minecraft:air run teleport @s ~ ~-0.1 ~

#execute as @e[tag=EtiTowDefMS.1Gegner] at @s if block ^-3 ^-1 ^-2 minecraft:birch_planks run teleport @s ~ ~ ~ ~90 ~
#execute as @e[tag=EtiTowDefMS.1Gegner] at @s if block ^ ^-1 ^2 minecraft:birch_planks run teleport @s ~ ~ ~ ~-90 ~

#execute as @e[tag=EtiTowDefMS.1Gegner] at @s unless block ~ ~ ~ minecraft:air run scoreboard players remove @e[distance=..5,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Versuch=1..},sort=nearest,limit=1] PZTowDefMS.1Versuch 1
#execute as @e[tag=EtiTowDefMS.1Gegner] at @s unless block ~ ~ ~ minecraft:air run kill @s

execute if score VarTowDefMS.1NeueGegner PZTowDefMS.1Wert matches ..0 run return 0

scoreboard players add VarTowDefMS.1NaechsterGegner PZTowDefMS.1Wert 1
execute if score VarTowDefMS.1NaechsterGegner PZTowDefMS.1Wert matches ..9 run return 0
scoreboard players set VarTowDefMS.1NaechsterGegner PZTowDefMS.1Wert 0

execute store result score VarTowDefMS.1Zufallswert PZTowDefMS.1Wert run random value 0..20 tower-defense-minispiel:v1zufall
execute store result storage tower-defense-minispiel:v1daten "EigTowDefMS.1Argumente".Index int 1 run scoreboard players operation VarTowDefMS.1Zufallswert PZTowDefMS.1Wert %= VarTowDefMS.1Welle PZTowDefMS.1Wert

scoreboard players set VarTowDefMS.1Aufruf PZTowDefMS.1Wert 1
function tower-defense-minispiel:v1gegner with storage tower-defense-minispiel:v1daten "EigTowDefMS.1Argumente"

scoreboard players set VarTowDefMS.1Aufruf PZTowDefMS.1Wert 2
execute as @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=nearest,limit=2] at @s run function tower-defense-minispiel:v1gegner with storage tower-defense-minispiel:v1daten "EigTowDefMS.1Argumente"

scoreboard players remove VarTowDefMS.1NeueGegner PZTowDefMS.1Wert 1
