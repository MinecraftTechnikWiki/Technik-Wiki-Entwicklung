
scoreboard players add VarRSchMS.1Breite PZRSchMS.1Brett 1
scoreboard players set VarRSchMS.1Hoehe PZRSchMS.1Brett 0

summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:true,Duration:-1,Age:-2147483648,WaitTime:-2147483648,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Feld"]}
execute if score VarRSchMS.1Breite PZRSchMS.1Brett <= VarRSchMS.1BreiteMax PZRSchMS.1Brett as @n[distance=..3,type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld] run function raumschach-minispiel:v1erstellen_hoehe
execute if score VarRSchMS.1Breite PZRSchMS.1Brett <= VarRSchMS.1BreiteMax PZRSchMS.1Brett positioned ~5 ~ ~ run function raumschach-minispiel:v1erstellen_breite
