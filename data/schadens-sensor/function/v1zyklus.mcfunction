
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigSchadS.1Sensor:true}] run tag @s add EtiSchadS.1Ausgewaehlt

execute as @a[tag=EtiSchadS.1Ausgewaehlt] run title @s actionbar ["",{text:"schaden == ",bold:true},{score:{name:"@s",objective:"PZSchadS.1Ver"},color:"green",bold:true},{text:" / ",bold:true},{score:{name:"@s",objective:"PZSchadS.1Erl"},color:"red",bold:true}]

title @a[tag=!EtiSchadS.1Ausgewaehlt,tag=EtiSchadS.1Auswahl] actionbar [""]

tag @a[tag=EtiSchadS.1Ausgewaehlt,tag=!EtiSchadS.1Auswahl] add EtiSchadS.1Auswahl
tag @a[tag=!EtiSchadS.1Ausgewaehlt,tag=EtiSchadS.1Auswahl] remove EtiSchadS.1Auswahl

tag @a[tag=EtiSchadS.1Ausgewaehlt] remove EtiSchadS.1Ausgewaehlt
