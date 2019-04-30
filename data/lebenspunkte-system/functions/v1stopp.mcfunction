# Die Punktestand-Ziele werden entfernt
scoreboard objectives remove PZLebP.1Leben
scoreboard objectives remove PZLebP.1Vergl

# Die Spawn-Eier werden entfernt
clear @a[distance=..25] minecraft:chicken_spawn_egg{EntityTag:{Tags:["EtiLebP.1Herzen"] } }
clear @a[distance=..25] minecraft:cow_spawn_egg{EntityTag:{Tags:["EtiLebP.1Herzen"] } }
clear @a[distance=..25] minecraft:pig_spawn_egg{EntityTag:{Tags:["EtiLebP.1Herzen"] } }
clear @a[distance=..25] minecraft:sheep_spawn_egg{EntityTag:{Tags:["EtiLebP.1Herzen"] } }

# Alle Tiere die gespawnt wurden, werden entfernt
kill @e[tag=EtiLebP.1Herzen]
