# Wenn Spieler den Stock ausgewählt haben, erhalten sie ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigLagerM.1Lager:true} } }] add EtiLagerM.1Ausgewaehlt

# Wenn Spieler den Stock gerade erst ausgewählt haben, wird ihnen der Auslöser-Wert und die Position gesetzt.
execute at @a[tag=EtiLagerM.1Ausgewaehlt,tag=!EtiLagerM.1Auswahl] run summon minecraft:chest_minecart ~ ~1 ~ {NoGravity:true,Invulnerable:true,CustomName:'{"text":"Lager","color":"dark_purple","bold":true}',Tags:["EtiLagerM.1Alle","EtiLagerM.1Menu"]}
execute at @a[tag=EtiLagerM.1Ausgewaehlt,tag=!EtiLagerM.1Auswahl] run scoreboard players set @e[distance=..2,type=minecraft:chest_minecart,tag=EtiLagerM.1Menu,sort=nearest,limit=1] PZLagerM.1Ausl 0

execute at @a[tag=!EtiLagerM.1Ausgewaehlt,tag=EtiLagerM.1Auswahl] run data remove entity @e[distance=..2,type=minecraft:chest_minecart,tag=EtiLagerM.1Menu,sort=nearest,limit=1] Items
execute at @a[tag=!EtiLagerM.1Ausgewaehlt,tag=EtiLagerM.1Auswahl] run kill @e[distance=..2,type=minecraft:chest_minecart,tag=EtiLagerM.1Menu,sort=nearest,limit=1]

execute at @a[tag=EtiLagerM.1Ausgewaehlt] run teleport @e[distance=..2,type=minecraft:chest_minecart,tag=EtiLagerM.1Menu,sort=nearest,limit=1] ~ ~1 ~ ~ 0

execute as @e[type=minecraft:chest_minecart,tag=EtiLagerM.1Menu] at @s run function lagermaschine:v1menu

# Es wird ein Etikett gegeben oder genommen, je nach dem ob man gerade Stock ausgewählt hat, oder nicht.
tag @a[tag=EtiLagerM.1Ausgewaehlt,tag=!EtiLagerM.1Auswahl] add EtiLagerM.1Auswahl
tag @a[tag=!EtiLagerM.1Ausgewaehlt,tag=EtiLagerM.1Auswahl] remove EtiLagerM.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiLagerM.1Ausgewaehlt] remove EtiLagerM.1Ausgewaehlt
