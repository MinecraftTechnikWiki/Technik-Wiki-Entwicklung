# Das geworfene Spawn-Ei vor dem Spieler wird in den Objektdaten so geändert, dass es den Namen anzeigt und nicht verschwindet.
data merge entity @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{sammel-system:"v2gegenstand"} } },sort=nearest,limit=1] {CustomNameVisible:true,CustomName:'{"text":"Sammel-Ei","bold":true}',Tags:["EtiSamS.2Alle","EtiSamS.2SammelEi"],Age:-32768s,PickupDelay:32767s}

# Damit der Spieler nicht das Ei direkt als eingesammelt markiert bekommt, erhält er das Etikett.
tag @s[tag=!EtiSamS.2BeimEi] add EtiSamS.2BeimEi

# Das Sammel-Ei bekommt anschließend eine Nummer, damit man es von den anderen unterscheiden kann.
execute as @e[distance=..2,type=minecraft:item,tag=EtiSamS.2SammelEi,tag=!EtiSamS.2EiNummer,sort=nearest,limit=1] store result score @s PZSamS.2Nr run scoreboard players add #VarSamS.2Max PZSamS.2Anz 1
tag @e[type=minecraft:item,tag=EtiSamS.2SammelEi,tag=!EtiSamS.2EiNummer] add EtiSamS.2EiNummer

# Falls bereits Spieler alle bisherigen Eier gefunden haben, wird ihnen das Etikett wieder entfernt, da jetzt ein weiteres Ei zu finden ist.
tag @a[tag=EtiSamS.2MaxEierGefunden] remove EtiSamS.2MaxEierGefunden
