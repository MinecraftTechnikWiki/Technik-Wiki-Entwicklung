
data merge entity @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Sammel-System.2"]} } } },sort=nearest,limit=1] {CustomNameVisible:true,CustomName:"{\"text\":\"Sammel-Ei\",\"bold\":true}",Tags:["EtiSamS.2Alle","EtiSamS.2SammelEi"],Age:-32768s,PickupDelay:32767s}
tag @s[tag=!EtiSamS.2BeimEi] add EtiSamS.2BeimEi
execute as @e[distance=..2,type=minecraft:item,tag=EtiSamS.2SammelEi,tag=!EtiSamS.2EiNummer,sort=nearest,limit=1] store result score @s PZSamS.2Nr run scoreboard players add #VarSamS.2Max PZSamS.2Anz 1
tag @e[type=minecraft:item,tag=EtiSamS.2SammelEi,tag=!EtiSamS.2EiNummer] add EtiSamS.2EiNummer
tag @a[tag=EtiSamS.2MaxEierGefunden] remove EtiSamS.2MaxEierGefunden
