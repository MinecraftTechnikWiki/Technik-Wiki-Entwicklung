
scoreboard objectives remove PZLuftS.3Steuer
scoreboard objectives remove PZLuftS.3Leine

team remove TMLuftS.3Pilot

execute at @e[tag=EtiLuftS.3Andockplatz] run fill ~-3 ~-2 ~-3 ~3 ~ ~3 minecraft:air replace
execute at @e[tag=EtiLuftS.3Luftschiff] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace #luftschiff:v3bloecke_die_beim_ersetzen_droppen
execute at @e[tag=EtiLuftS.3Luftschiff] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace
execute at @e[type=minecraft:area_effect_cloud,tag=EtiLuftS.3Kette] run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:oak_fence

clear @a minecraft:wooden_sword{Luftschiff.3:true}
clear @a minecraft:armor_stand{Luftschiff.3:true}
clear @a minecraft:coal{Luftschiff.3:true}
clear @a minecraft:lead{Luftschiff.3:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{Luftschiff.3:true} } }]
kill @e[tag=EtiLuftS.3Alle]
