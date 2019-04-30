
scoreboard objectives remove PZSamS.2Wurf
scoreboard objectives remove PZSamS.2Nr
scoreboard objectives remove PZSamS.2Anz

tag @a[tag=EtiSamS.2Nummer] remove EtiSamS.2Nummer
tag @a[tag=EtiSamS.2SammelEiZuNah] remove EtiSamS.2SammelEiZuNah
tag @a[tag=EtiSamS.2MaxEierGefunden] remove EtiSamS.2MaxEierGefunden
tag @a[tag=EtiSamS.2BeimEi] remove EtiSamS.2BeimEi
tag @a[tag=EtiSamS.2NeuesEi] remove EtiSamS.2NeuesEi

kill @e[tag=EtiSamS.2Alle]
clear @a[distance=..25] minecraft:creeper_spawn_egg{display:{Lore:["Sammel-System.2"]} }
