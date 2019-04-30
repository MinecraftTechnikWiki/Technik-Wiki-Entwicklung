
kill @e[distance=0.9..,tag=EtiUhrA.1Alle]
summon minecraft:armor_stand ~4 ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Ziffer","EtiUhrA.1SekundenZehner"]}
summon minecraft:armor_stand ~7 ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Punkte"]}
summon minecraft:armor_stand ~10 ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Ziffer","EtiUhrA.1Minuten"]}
summon minecraft:armor_stand ~14 ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Ziffer","EtiUhrA.1MinutenZehner"]}
summon minecraft:armor_stand ~17 ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Punkte"]}
summon minecraft:armor_stand ~20 ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Ziffer","EtiUhrA.1Stunden"]}
summon minecraft:armor_stand ~24 ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Ziffer","EtiUhrA.1StundenZehner"]}

execute as @e[type=minecraft:armor_stand,tag=EtiUhrA.1Alle] at @s run teleport @s ~ ~4 ~

scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Ziffer] PZUhrA.1Zeichen 0
tag @s remove EtiUhrA.1Erstellen
