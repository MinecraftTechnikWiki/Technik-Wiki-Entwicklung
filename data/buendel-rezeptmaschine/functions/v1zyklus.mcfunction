
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigBuRezM.1Buendel:true}] run tag @s add EtiBuRezM.1Ausgewaehlt

#execute as @a[tag=EtiBuRezM.1Ausgewaehlt,scores={PZBuRezM.1Buend=1..}] run say hi
execute as @a[tag=EtiBuRezM.1Ausgewaehlt,nbt=!{SelectedItem:{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{EigBuRezM.1Rezept:true} } } ] } } }] run function buendel-rezeptmaschine:v1buendel

tag @a[tag=EtiBuRezM.1Ausgewaehlt,tag=!EtiBuRezM.1Auswahl] add EtiBuRezM.1Auswahl
tag @a[tag=!EtiBuRezM.1Ausgewaehlt,tag=EtiBuRezM.1Auswahl] remove EtiBuRezM.1Auswahl

tag @a[tag=EtiBuRezM.1Ausgewaehlt] remove EtiBuRezM.1Ausgewaehlt

scoreboard players set @a[scores={PZBuRezM.1Buend=1..}] PZBuRezM.1Buend 0
