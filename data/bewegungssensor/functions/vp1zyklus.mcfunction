
tag @a[distance=..25,tag=EtiBewS.p1Aktion,nbt=!{SelectedItem:{id:"minecraft:magenta_glazed_terracotta"} }] remove EtiBewS.p1Aktion
tag @a[distance=..25,tag=!EtiBewS.p1Aktion,nbt={SelectedItemSlot:4,SelectedItem:{id:"minecraft:magenta_glazed_terracotta",tag:{EigBewS.p1Alle:true} } }] add EtiBewS.p1Aktion

execute as @a[distance=..25,tag=EtiBewS.p1Aktion] at @s run function bewegungssensor:vp1aktion
