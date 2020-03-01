# Eine Partikelwolke wird an einer Luftstelle platziert, um später die gleiche Stelle wieder ausfindig machen zu könmnen. Zäune werden platziert und die Funktion wird selbst aufgerufen, solange noch nicht der Andockplatz erreicht wurde.
execute if block ~ ~ ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:true,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiLuftS.3Alle","EtiLuftS.3Kette"]}
fill ~ ~ ~ ~ ~1 ~ minecraft:oak_fence replace minecraft:air
execute unless entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz] positioned ^ ^ ^0.5 run function luftschiff:v3andocken_kette
