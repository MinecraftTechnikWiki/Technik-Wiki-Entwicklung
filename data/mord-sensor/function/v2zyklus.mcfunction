
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigMordS.2Sensor:true}] run tag @s add EtiMordS.2Ausgewaehlt

execute as @a[tag=EtiMordS.2Ausgewaehlt] run title @s actionbar ["",{text:"morde == ",bold:true},{score:{name:"@s",objective:"PZMordS.2Mord"},color:"dark_purple",bold:true}]

title @a[tag=!EtiMordS.2Ausgewaehlt,tag=EtiMordS.2Auswahl] actionbar [""]

execute as @a[tag=EtiMordS.2Ausgewaehlt,tag=!EtiMordS.2Auswahl] run tellraw @s ["Mord-Sensor.2:\n",{text:"diener == ",bold:true},{score:{name:"@s",objective:"PZMordS.2MordDie"},color:"green",bold:true},{text:" / ",bold:true},{score:{name:"@s",objective:"PZMordS.2TodDie"},color:"red",bold:true},"\n",{text:"piglin == ",bold:true},{score:{name:"@s",objective:"PZMordS.2MordPig"},color:"green",bold:true},{text:" / ",bold:true},{score:{name:"@s",objective:"PZMordS.2TodPig"},color:"red",bold:true}]

tag @a[tag=EtiMordS.2Ausgewaehlt,tag=!EtiMordS.2Auswahl] add EtiMordS.2Auswahl
tag @a[tag=!EtiMordS.2Ausgewaehlt,tag=EtiMordS.2Auswahl] remove EtiMordS.2Auswahl

tag @a[tag=EtiMordS.2Ausgewaehlt] remove EtiMordS.2Ausgewaehlt
