
scoreboard players set VarFarBMi.1Wartezeit PZFarBMi.1Wert -1

execute store result score VarFarBMi.1Rot PZFarBMi.1Wert if entity @a[team=TMFarBMi.1Rot]
execute store result score VarFarBMi.1Blau PZFarBMi.1Wert if entity @a[team=TMFarBMi.1Blau]

tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball]","color":"gold"},{"text":" Das Spiel beginnt jetzt.\n Es kämpfen ","color":"dark_green"},{"score":{"name":"VarFarBMi.1Rot","objective":"PZFarBMi.1Wert"},"color":"dark_red"},{"text":" Spieler","color":"dark_red"},{"text":" gegen ","color":"dark_green"},{"score":{"name":"VarFarBMi.1Blau","objective":"PZFarBMi.1Wert"},"color":"dark_blue"},{"text":" Spieler","color":"dark_blue"},{"text":".","color":"dark_green"}]

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Rot] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:pink_concrete replace minecraft:red_concrete
execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Blau] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:light_blue_concrete replace minecraft:blue_concrete

effect give @a[tag=EtiFarBMi.1Warten] minecraft:resistance 1024 255 true
effect give @a[tag=EtiFarBMi.1Warten] minecraft:saturation 1024 255 true
gamemode adventure @a[tag=EtiFarBMi.1Warten]
scoreboard players set @a[tag=EtiFarBMi.1Warten] PZFarBMi.1Leben 11
tag @a[tag=EtiFarBMi.1Warten] add EtiFarBMi.1Getroffen
tag @a[tag=EtiFarBMi.1Warten] remove EtiFarBMi.1Warten
