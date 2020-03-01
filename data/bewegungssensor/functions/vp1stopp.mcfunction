
execute at @e[type=minecraft:armor_stand,tag=EtiBewS.p1Plattform] run fill ~ ~ ~ ~10 ~10 ~10 minecraft:air
clear @a[distance=..50] minecraft:magenta_glazed_terracotta{EigBewS.p1Alle:true}
tag @a[tag=EtiBewS.p1Aktion] remove EtiBewS.p1Aktion
kill @e[type=minecraft:armor_stand,tag=EtiBewS.p1Alle]
