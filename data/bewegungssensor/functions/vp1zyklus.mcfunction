
tag @a[distance=..15,nbt={SelectedItem:{tag:{EigBewS.p1Sensor:true} } }] add EtiBewS.p1Sensor

execute as @a[tag=EtiBewS.p1Sensor] at @s rotated ~ 0 run function bewegungssensor:vp1erfassen
title @a[distance=..25,tag=!EtiBewS.p1Sensor] actionbar [{"text":"","color":"red","bold":true}]

tag @a[tag=EtiBewS.p1Sensor] remove EtiBewS.p1Sensor
