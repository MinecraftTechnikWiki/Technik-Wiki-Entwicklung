# Die Punktestand-Ziele werden entfernt
scoreboard objectives remove PZLebP.1Leben
scoreboard objectives remove PZLebP.1Vergl
scoreboard objectives remove PZLebP.1MaxLeb

# Die Spawn-Eier werden aus den Inventaren der Spieler entfernt
clear @a minecraft:chicken_spawn_egg{lebenspunkte-system:"v1gegenstand"}
clear @a minecraft:cow_spawn_egg{lebenspunkte-system:"v1gegenstand"}
clear @a minecraft:pig_spawn_egg{lebenspunkte-system:"v1gegenstand"}
clear @a minecraft:sheep_spawn_egg{lebenspunkte-system:"v1gegenstand"}
clear @a minecraft:rabbit_spawn_egg{lebenspunkte-system:"v1gegenstand"}
clear @a minecraft:horse_spawn_egg{lebenspunkte-system:"v1gegenstand"}

# Das Schild und alle Tiere die gespawnt wurden, werden entfernt
execute at @e[tag=EtiLebP.1Herz] run setblock ~ ~ ~ minecraft:air replace
tag @e[type=minecraft:item,nbt={Item:{tag:{lebenspunkte-system:"v1gegenstand"} } }] add EtiLebP.1Alle
kill @e[tag=EtiLebP.1Alle]
