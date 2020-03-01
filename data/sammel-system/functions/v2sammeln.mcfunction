# Wenn der Spieler beim einem Sammel-Ei ist, bei dem noch keine Partikelwolke existiert, die seine Nummer speichert, wenn er es gesammelt hat, so muss dieses Ei ein neues für ihn sein und er bekommt dazu ein Etikett. Falls Partikelwolken vorhanden waren, aber eine davon seine Nummer nicht besitzt, erhält er ebenfalls das Etikett und anschließend wird ihm das Etikett wieder entfernt falls eine dabei war die die gleiche Nummer hat. Wenn er das Ei nicht hatte, wird seine Ei-Anzahl um eins erhöht.
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi] unless entity @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2SpielerNummer] run tag @s add EtiSamS.2NeuesEi
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=!EtiSamS.2NeuesEi] unless score @s PZSamS.2Nr = @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2SpielerNummer,sort=nearest,limit=1] PZSamS.2Nr run tag @s add EtiSamS.2NeuesEi
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=!EtiSamS.2NeuesEi] if score @s PZSamS.2Nr = @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2SpielerNummer,sort=nearest,limit=1] PZSamS.2Nr run tag @s remove EtiSamS.2NeuesEi
scoreboard players add @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] PZSamS.2Anz 1

# Wenn das Ei neu war, erhält er eine Nachricht, dass er das Ei aufgesammelt hat, ansonsten wird ihm eine Fehlermeldung ausgegeben.
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run title @s actionbar ["",{"text":"Das ist dein ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"PZSamS.2Anz"},"color":"dark_purple","bold":true},{"text":"."},{"text":" Sammel-Ei!","bold":true,"color":"green"} ]
title @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=!EtiSamS.2NeuesEi] actionbar ["",{"text":"Du hast dieses Sammel-Ei bereits aufgehoben","bold":true,"color":"dark_red"}]

# Wenn das Ei neu war, wird für diesen Spieler eine Partikelwolke erzeugt und die Anzahl der Spieler die dieses Sammel-Ei gefunden haben, wird um eins erhöht.
execute if entity @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiSamS.2Alle"]}
execute if entity @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run scoreboard players add @s PZSamS.2Anz 1

# Die neue Partikelwolke erhält die Nummer des Spielers der das Sammel-Ei gefunden hat und der Spieler bekommt das Etikett für das neue Ei entfernt.
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run scoreboard players operation @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2Alle,tag=!EtiSamS.2SpielerNummer] PZSamS.2Nr = @s PZSamS.2Nr
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run tag @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2Alle,tag=!EtiSamS.2SpielerNummer] add EtiSamS.2SpielerNummer
tag @p[distance=..2,tag=EtiSamS.2NeuesEi] remove EtiSamS.2NeuesEi

# Damit die Sammeln-Funktion nicht ständig dem Spieler die Nachrichten für das Sammeln ausgibt, erhält der Spieler ein Etikett.
tag @p[distance=..2,tag=!EtiSamS.2BeimEi] add EtiSamS.2BeimEi
