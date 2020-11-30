#say breite
scoreboard players add VarRSchMS.1Breite PZRSchMS.1Brett 1
scoreboard players set VarRSchMS.1Hoehe PZRSchMS.1Brett 0

summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:true,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Feld"]}
execute if score VarRSchMS.1Breite PZRSchMS.1Brett <= VarRSchMS.1BreiteMax PZRSchMS.1Brett as @e[distance=..3,type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,sort=nearest,limit=1] run function raumschach-minispiel:v1erstellen_hoehe
execute if score VarRSchMS.1Breite PZRSchMS.1Brett <= VarRSchMS.1BreiteMax PZRSchMS.1Brett positioned ~5 ~ ~ run function raumschach-minispiel:v1erstellen_breite
