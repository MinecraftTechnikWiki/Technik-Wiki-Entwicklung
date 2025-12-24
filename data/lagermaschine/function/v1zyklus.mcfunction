# Wenn Spieler den Stock ausgewählt haben, erhalten sie ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigLagerM.1Lager:true}] run tag @s add EtiLagerM.1Ausgewaehlt

# Wenn Spieler den Stock gerade erst ausgewählt haben, wird ihnen der Auslöser-Wert und die Position gesetzt.
execute at @a[tag=EtiLagerM.1Ausgewaehlt,tag=!EtiLagerM.1Auswahl] run summon minecraft:chest_minecart ~ ~1 ~ {NoGravity:true,Invulnerable:true,CustomName:{text:"Lager",color:"dark_purple",bold:true},Tags:["EtiLagerM.1Alle","EtiLagerM.1Menu"]}
execute at @a[tag=EtiLagerM.1Ausgewaehlt,tag=!EtiLagerM.1Auswahl] run scoreboard players set @n[distance=..2,type=minecraft:chest_minecart,tag=EtiLagerM.1Menu] PZLagerM.1Ausl 0

execute at @a[tag=!EtiLagerM.1Ausgewaehlt,tag=EtiLagerM.1Auswahl] run data remove entity @n[distance=..2,type=minecraft:chest_minecart,tag=EtiLagerM.1Menu] Items
execute at @a[tag=!EtiLagerM.1Ausgewaehlt,tag=EtiLagerM.1Auswahl] run kill @n[distance=..2,type=minecraft:chest_minecart,tag=EtiLagerM.1Menu]

execute at @a[tag=EtiLagerM.1Ausgewaehlt] run teleport @n[distance=..2,type=minecraft:chest_minecart,tag=EtiLagerM.1Menu] ~ ~1 ~ ~ 0

execute as @e[type=minecraft:chest_minecart,tag=EtiLagerM.1Menu] at @s run function lagermaschine:v1menu

# Es wird ein Etikett gegeben oder genommen, je nach dem ob man gerade Stock ausgewählt hat, oder nicht.
tag @a[tag=EtiLagerM.1Ausgewaehlt,tag=!EtiLagerM.1Auswahl] add EtiLagerM.1Auswahl
tag @a[tag=!EtiLagerM.1Ausgewaehlt,tag=EtiLagerM.1Auswahl] remove EtiLagerM.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiLagerM.1Ausgewaehlt] remove EtiLagerM.1Ausgewaehlt
