
scoreboard objectives remove PZAuto.1Geschw
scoreboard objectives remove PZAuto.1Vergl

clear @a #automobil:v1glasscheiben
clear @a minecraft:armor_stand{automobil:"v1gegenstand"}


tag @e[type=minecraft:item,nbt={Item:{tag:{automobil:"v1gegenstand"} } }] add EtiAuto.1Alle
kill @e[tag=EtiAuto.1Alle]

tag @a[tag=EtiAuto.1Eingestiegen] remove EtiAuto.1Eingestiegen
tag @a[tag=EtiAuto.1SitztImAuto] remove EtiAuto.1SitztImAuto
