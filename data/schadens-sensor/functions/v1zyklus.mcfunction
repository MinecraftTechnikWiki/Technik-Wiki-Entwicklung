
tag @a[nbt={SelectedItem:{tag:{EigSchadS.1Sensor:true} } }] add EtiSchadS.1Ausgewaehlt

execute as @a[tag=EtiSchadS.1Ausgewaehlt] run title @s actionbar ["",{"text":"schaden == ","bold":true},{"score":{"name":"@s","objective":"PZSchadS.1Ver"},"color":"dark_purple","bold":true},";",{"score":{"name":"@s","objective":"PZSchadS.1Erl"},"color":"dark_purple","bold":true}]

title @a[tag=!EtiSchadS.1Ausgewaehlt,tag=EtiSchadS.1Auswahl] actionbar [""]

tag @a[tag=EtiSchadS.1Ausgewaehlt,tag=!EtiSchadS.1Auswahl] add EtiSchadS.1Auswahl
tag @a[tag=!EtiSchadS.1Ausgewaehlt,tag=EtiSchadS.1Auswahl] remove EtiSchadS.1Auswahl

tag @a[tag=EtiSchadS.1Ausgewaehlt] remove EtiSchadS.1Ausgewaehlt
