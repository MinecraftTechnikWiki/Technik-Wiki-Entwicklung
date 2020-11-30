
tag @a[distance=..25,nbt={Inventory:[{Slot:-106b,tag:{EigLagerM.1Lager:true} } ] }] add EtiLagerM.1Lager

scoreboard players add @a[tag=EtiLagerM.1Lager] PZLagerM.1Stapel 0

execute as @a[distance=..25,tag=EtiLagerM.1Lager] unless entity @s[scores={PZLagerM.1Ausl=0}] run function lagermaschine:v1ausloeser

scoreboard players set @a[tag=!EtiLagerM.1Lager] PZLagerM.1Ausl -99

tag @a[tag=EtiLagerM.1Lager] remove EtiLagerM.1Lager
