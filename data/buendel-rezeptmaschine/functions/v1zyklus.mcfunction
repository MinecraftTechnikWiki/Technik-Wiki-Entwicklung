
tag @a[nbt={SelectedItem:{tag:{EigBuRezM.1Buendel:true} } }] add EtiBuRezM.1Ausgewaehlt

#execute as @a[tag=EtiBuRezM.1Ausgewaehlt,scores={PZBuRezM.1Buend=1..}] run say hi
execute as @a[tag=EtiBuRezM.1Ausgewaehlt,nbt=!{SelectedItem:{tag:{Items:[{tag:{EigBuRezM.1Rezept:true} } ] } } }] run function buendel-rezeptmaschine:v1buendel

tag @a[tag=EtiBuRezM.1Ausgewaehlt,tag=!EtiBuRezM.1Auswahl] add EtiBuRezM.1Auswahl
tag @a[tag=!EtiBuRezM.1Ausgewaehlt,tag=EtiBuRezM.1Auswahl] remove EtiBuRezM.1Auswahl

tag @a[tag=EtiBuRezM.1Ausgewaehlt] remove EtiBuRezM.1Ausgewaehlt

scoreboard players set @a[scores={PZBuRezM.1Buend=1..}] PZBuRezM.1Buend 0
