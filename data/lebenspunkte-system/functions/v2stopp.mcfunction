# Die Punktestand-Ziele werden entfernt
scoreboard objectives remove PZLebP.2Leben
scoreboard objectives remove PZLebP.2Vergl
scoreboard objectives remove PZLebP.2MaxLeb

# Die Spawn-Eier werden entfernt
clear @a[distance=..25] minecraft:cod_spawn_egg{EntityTag:{Tags:["EtiLebP.2Herzen"] } }
clear @a[distance=..25] minecraft:salmon_spawn_egg{EntityTag:{Tags:["EtiLebP.2Herzen"] } }
clear @a[distance=..25] minecraft:pufferfish_spawn_egg{EntityTag:{Tags:["EtiLebP.2Herzen"] } }
clear @a[distance=..25] minecraft:dolphin_spawn_egg{EntityTag:{Tags:["EtiLebP.2Herzen"] } }
clear @a[distance=..25] minecraft:turtle_spawn_egg{EntityTag:{Tags:["EtiLebP.2Herzen"] } }

# Alle Tiere die gespawnt wurden, werden entfernt
kill @e[tag=EtiLebP.2Herzen]
