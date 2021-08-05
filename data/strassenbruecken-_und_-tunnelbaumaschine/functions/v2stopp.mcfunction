
scoreboard objectives remove PZStrBTBM.2Schl
scoreboard objectives remove PZStrBTBM.2Ausl
scoreboard objectives remove PZStrBTBM.2Laen

tag @a[tag=EtiStrBTBM.2Auswahl] remove EtiStrBTBM.2Auswahl
tag @a[tag=EtiStrBTBM.2Shift] remove EtiStrBTBM.2Shift
tag @a[tag=EtiStrBTBM.2Zweierspur] remove EtiStrBTBM.2Zweierspur
tag @a[tag=EtiStrBTBM.2Strassenbahn] remove EtiStrBTBM.2Strassenbahn

clear @a minecraft:fishing_rod{EigStrBTBM.2Angel:true}
kill @e[type=minecraft:item,nbt={Item:{tag:{EigStrBTBM.2Angel:true} } }]

# Chunks werden entladen.
forceload remove ~ ~
