# Die drei Punktestand-Ziele werden entfernt
scoreboard objectives remove PZSamS.2Wurf
scoreboard objectives remove PZSamS.2Nr
scoreboard objectives remove PZSamS.2Anz

# Alle Etiketten die im Laufe der Sammel-Aktion verteilt wurden, werden entfernt
tag @a[tag=EtiSamS.2Nummer] remove EtiSamS.2Nummer
tag @a[tag=EtiSamS.2SammelEiZuNah] remove EtiSamS.2SammelEiZuNah
tag @a[tag=EtiSamS.2MaxEierGefunden] remove EtiSamS.2MaxEierGefunden
tag @a[tag=EtiSamS.2BeimEi] remove EtiSamS.2BeimEi
tag @a[tag=EtiSamS.2NeuesEi] remove EtiSamS.2NeuesEi

# Alle Spawn-Eier werden aus dem Inventar gelöscht.
clear @a minecraft:creeper_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:zombie_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:skeleton_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:witch_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:sheep_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:mooshroom_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:rabbit_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:silverfish_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:guardian_spawn_egg{sammel-system:"v2gegenstand"}
clear @a minecraft:creeper_spawn_egg{sammel-system:"v2gegenstand"}

# Alle Sammel-Aier auf dem Boden werden entfernt.
kill @e[tag=EtiSamS.2Alle]
