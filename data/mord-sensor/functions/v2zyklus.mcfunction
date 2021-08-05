
tag @a[nbt={SelectedItem:{tag:{EigMordS.2Sensor:true} } }] add EtiMordS.2Ausgewaehlt

execute as @a[tag=EtiMordS.2Ausgewaehlt] run title @s actionbar ["",{"text":"morde == ","bold":true},{"score":{"name":"@s","objective":"PZMordS.2Mord"},"color":"dark_purple","bold":true}]

title @a[tag=!EtiMordS.2Ausgewaehlt,tag=EtiMordS.2Auswahl] actionbar [""]

execute as @a[tag=EtiMordS.2Ausgewaehlt,tag=!EtiMordS.2Auswahl] run tellraw @s ["Mord-Sensor.2: ",{"text":"\ndiener == ","bold":true},{"score":{"name":"@s","objective":"PZMordS.2MordDie"},"color":"dark_purple","bold":true},{"text":"\ntode durch diener == ","bold":true},{"score":{"name":"@s","objective":"PZMordS.2TodDie"},"color":"dark_purple","bold":true},{"text":"\npiglin == ","bold":true},{"score":{"name":"@s","objective":"PZMordS.2MordPig"},"color":"dark_purple","bold":true},{"text":"\ntode durch piglin == ","bold":true},{"score":{"name":"@s","objective":"PZMordS.2TodPig"},"color":"dark_purple","bold":true}]

tag @a[tag=EtiMordS.2Ausgewaehlt,tag=!EtiMordS.2Auswahl] add EtiMordS.2Auswahl
tag @a[tag=!EtiMordS.2Ausgewaehlt,tag=EtiMordS.2Auswahl] remove EtiMordS.2Auswahl

tag @a[tag=EtiMordS.2Ausgewaehlt] remove EtiMordS.2Ausgewaehlt
