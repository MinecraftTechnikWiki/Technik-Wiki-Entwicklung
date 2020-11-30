
execute as @a[tag=!EtiBankA.2SpielerNummer] run function bankautomat:v2spieler_nummer

execute as @e[type=minecraft:armor_stand,tag=EtiBankA.2Bankautomat] at @s run function bankautomat:v2automat

execute as @e[type=minecraft:armor_stand,tag=EtiBankA.2Werkbank] at @s run function bankautomat:v2werkbank
