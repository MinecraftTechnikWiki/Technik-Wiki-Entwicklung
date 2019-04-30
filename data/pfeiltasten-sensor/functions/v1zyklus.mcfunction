
tag @a[distance=..25,tag=EtiPfeilTS.1Aktion,nbt=!{SelectedItem:{id:"minecraft:magenta_glazed_terracotta"} }] remove EtiPfeilTS.1Aktion
tag @a[distance=..25,tag=!EtiPfeilTS.1Aktion,nbt={SelectedItemSlot:4,SelectedItem:{id:"minecraft:magenta_glazed_terracotta",tag:{display:{Name:"{\"text\":\"Pfeiltasten\"}"} } } }] add EtiPfeilTS.1Aktion

execute as @a[distance=..25,tag=EtiPfeilTS.1Aktion] at @s run function pfeiltasten-sensor:v1aktion
