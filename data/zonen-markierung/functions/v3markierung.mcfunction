
teleport @s[tag=EtiZonMa.3Kugel] ~ ~ ~ ~5 0
teleport @s[tag=EtiZonMa.3Quader] ~ ~ ~ ~30 0

execute at @s positioned ^ ^ ^6 if entity @e[distance=..5.5,type=minecraft:armor_stand,tag=EtiZonMa.3Zone] run tag @s add EtiZonMa.3KeinePartikel
execute at @s[tag=EtiZonMa.3Quader,tag=!EtiZonMa.3KeinePartikel] positioned ^ ^ ^7 if entity @e[distance=..6.5,type=minecraft:armor_stand,tag=EtiZonMa.3Zone] run tag @s add EtiZonMa.3KeinePartikel
execute at @s[tag=EtiZonMa.3KeinePartikel] positioned ^ ^ ^7 unless score @s PZZonMa.3Nummer = @e[distance=..6.5,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,sort=nearest,limit=1] PZZonMa.3Nummer if score @s PZZonMa.3Betritt < @e[distance=..6.5,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,sort=nearest,limit=1] PZZonMa.3Betritt run tag @s remove EtiZonMa.3KeinePartikel

execute at @s[tag=EtiZonMa.3Kugel,tag=!EtiZonMa.3KeinePartikel] run particle minecraft:totem_of_undying ^ ^ ^5.5 0 0 0 0.1 5 force @a[distance=..25]

execute at @s[tag=EtiZonMa.3Quader,tag=!EtiZonMa.3KeinePartikel,y_rotation=-105..105] unless entity @s[y_rotation=-75..75] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 0 0 1 0.1 10 force @a[distance=..25]
execute at @s[tag=EtiZonMa.3Quader,tag=!EtiZonMa.3KeinePartikel,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] unless entity @s[y_rotation=75..105] unless entity @s[y_rotation=-105..-75] run particle minecraft:totem_of_undying ^ ^0.5 ^6.5 0 0 1 0.1 10 force @a[distance=..25]

execute at @s[tag=EtiZonMa.3Quader,tag=!EtiZonMa.3KeinePartikel,y_rotation=165..15] unless entity @s[y_rotation=-165..-15] run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 1 0 0 0.1 10 force @a[distance=..25]
execute at @s[tag=EtiZonMa.3Quader,tag=!EtiZonMa.3KeinePartikel,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] unless entity @s[y_rotation=165..-165] unless entity @s[y_rotation=-15..15] run particle minecraft:totem_of_undying ^ ^0.5 ^6.5 1 0 0 0.1 10 force @a[distance=..25]

#execute at @s[tag=EtiZonMa.3Kugel,tag=!EtiZonMa.3KeinePartikel] positioned ^ ^ ^5.5 run summon minecraft:falling_block ~ 255 ~ {Time:1,BlockState:{Name:"minecraft:stone_slab"} }

tag @s[tag=EtiZonMa.3KeinePartikel] remove EtiZonMa.3KeinePartikel
