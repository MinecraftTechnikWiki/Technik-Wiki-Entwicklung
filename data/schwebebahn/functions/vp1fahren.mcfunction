# Die beiden Variablen werden auf null gesetzt um später auf andere Werte gesetzt zu werden, sofern das möglich ist.
scoreboard players set VarSchwB.p1Ebene PZSchwB.p1Wert 0
scoreboard players set VarSchwB.p1Fahren PZSchwB.p1Wert 0

# Zuerst wird geprüft ob voraus eine Spur eine Ebene höher als die aktuelle Fahrbahn ist.
execute positioned ^ ^ ^21 if block ~ ~ ~ minecraft:stone_brick_stairs[half=bottom] if block ^1 ^ ^ minecraft:quartz_stairs[half=top] if block ^-1 ^ ^ minecraft:quartz_stairs[half=top] run scoreboard players set VarSchwB.p1Ebene PZSchwB.p1Wert 3

# Wenn das nicht der Fall ist, wird geprüft ob sich die Bahn noch auf einer ebenen Spur befindet.
scoreboard players set VarSchwB.p1Unbelegt PZSchwB.p1Wert 0
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 0 store result score VarSchwB.p1Unbelegt PZSchwB.p1Wert positioned ^ ^-1 ^21 run fill ^ ^ ^ ^ ^ ^-40 minecraft:structure_void replace minecraft:stone_brick_stairs[half=bottom]
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 0 if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 1.. if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] positioned ^ ^-1 ^21 run fill ^ ^ ^ ^ ^ ^-40 minecraft:stone_brick_stairs[half=bottom,facing=west] replace minecraft:structure_void
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 0 if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 1.. if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] positioned ^ ^-1 ^21 run fill ^ ^ ^ ^ ^ ^-40 minecraft:stone_brick_stairs[half=bottom,facing=north] replace minecraft:structure_void
execute if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 1.. run scoreboard players set VarSchwB.p1Ebene PZSchwB.p1Wert 2

# Wenn auch dass nicht mehr der Fall ist, wird geprüft ob die Spur eine Ebene unter der aktuellen Spur ist.
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 0 positioned ^ ^-2 ^-19 if block ~ ~ ~ minecraft:stone_brick_stairs[half=bottom] if block ^1 ^ ^ minecraft:quartz_stairs[half=top] if block ^-1 ^ ^ minecraft:quartz_stairs[half=top] run scoreboard players set VarSchwB.p1Ebene PZSchwB.p1Wert 1

# Wenn alle drei Prüfungen fehl schlugen befindet sich garkeine Spur voraus und der Spieler erhält eine Fehlermeldung.
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 0 at @s positioned ^ ^1 ^17 run tellraw @p[distance=..5,scores={PZSchwB.p1Ausgewaehlt=1..}] ["Schwebebahn.erweitert.1:\n",{"text":"Keine Fahrbahn voraus!","color":"red","bold":true}]

# Wenn die Bahn ein Halten-Etikett besitzt, wird die Ebenen-Variable auf null gesetzt sodass scheinbar doch keine Spur voraus sei und der Spieler erhält eine Nachricht.
execute if entity @s[tag=EtiSchwB.p1Halten] run scoreboard players set VarSchwB.p1Ebene PZSchwB.p1Wert 0
execute at @s[tag=EtiSchwB.p1Halten] positioned ^ ^1 ^17 run tellraw @p[distance=..5,scores={PZSchwB.p1Ausgewaehlt=1..}] ["Schwebebahn.erweitert.1:\n",{"text":"Station oder Fahrbahn-Kreuzung erreicht!","color":"green","bold":true}]

# Das Etikett fürs Halten wird sofern vorhanden wieder entfernt und nur dann gegeben, wenn einen Block voraus eine rote Netherziegelstufe auf Spur-Ebene oder eine Ebene darunter sich befindet.
tag @s[tag=EtiSchwB.p1Halten] remove EtiSchwB.p1Halten
execute if block ^ ^-1 ^1 minecraft:red_nether_brick_slab run tag @s add EtiSchwB.p1Halten
execute if block ^ ^-2 ^1 minecraft:red_nether_brick_slab run tag @s add EtiSchwB.p1Halten

# Falls sich eine Spur voraus befindet, wird geprüft ob direkt vor der Bahn alles frei ist.
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 1..3 positioned ^ ^1 ^21 if block ~ ~ ~ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air run scoreboard players set VarSchwB.p1Fahren PZSchwB.p1Wert 1

# Anschließend wird geprüft ob der untere Bereich vor der Bahn frei ist.
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 1..2 if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 1 positioned ^ ^ ^21 if block ~ ~ ~ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air run scoreboard players set VarSchwB.p1Fahren PZSchwB.p1Wert 2

# Ebenso wird geprüft ob der obere Bereich vor der Bahn frei ist.
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 2..3 if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 1..2 positioned ^ ^4 ^21 if block ~ ~ ~ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air run scoreboard players add VarSchwB.p1Fahren PZSchwB.p1Wert 2

# Je nach dem was frei ist, wird dann geprüft ob die Bahn nach unten fahren kann. Ist der Bereich unter der Bahn frei wird die Variable entsprechend gesetzt.
scoreboard players set VarSchwB.p1Unbelegt PZSchwB.p1Wert 0
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 1 if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 2 store result score VarSchwB.p1Unbelegt PZSchwB.p1Wert positioned ^2 ^-1 ^21 run fill ^ ^ ^ ^-4 ^ ^-40 minecraft:structure_void replace minecraft:air
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 1 if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 2 positioned ^2 ^-1 ^21 run fill ^ ^ ^ ^-4 ^ ^-40 minecraft:air replace minecraft:structure_void
execute if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 205 run scoreboard players set VarSchwB.p1Fahren PZSchwB.p1Wert 5

# Falls Bereiche frei sind, die fürs nach oben Fahren deuten, wird geprüft ob die Bahn nach oben fahren könnte und dann entsprechend eine Variable mit Wert gesetzt.
scoreboard players set VarSchwB.p1Unbelegt PZSchwB.p1Wert 0
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 3 if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 3 store result score VarSchwB.p1Unbelegt PZSchwB.p1Wert positioned ^2 ^6 ^21 run fill ^ ^ ^ ^-4 ^ ^-40 minecraft:structure_void replace minecraft:air
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 3 if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 3 positioned ^2 ^6 ^21 run fill ^ ^ ^ ^-4 ^ ^-40 minecraft:air replace minecraft:structure_void
execute if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 205 run scoreboard players set VarSchwB.p1Fahren PZSchwB.p1Wert 6

# Wenn eine Spur voraus war, aber der Bereich nicht frei ist, wird eine Fehlermeldung ausgegeben und der Tempomat deaktiviert.
execute if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 0..3 run data modify entity @s[nbt={data:{EigSchwB.p1Tempomat:'{"bold":true,"color":"green","text":"wahr"}'} }] data."EigSchwB.p1Tempomat" set value '{"bold":true,"color":"red","text":"falsch"}'
execute if score VarSchwB.p1Ebene PZSchwB.p1Wert matches 1.. if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 0..3 at @s positioned ^ ^1 ^17 run tellraw @p[distance=..5,scores={PZSchwB.p1Ausgewaehlt=1..}] ["Schwebebahn.erweitert.1:\n",{"text":"Fahrbahn ist blockiert!","color":"red","bold":true}]

# Wenn das Fahren möglich ist, wird die Bewegen-Variable auf eins gesetzt.
execute if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 4..6 run scoreboard players set VarSchwB.p1Bewegen PZSchwB.p1Wert 1

# Ebenso werden alle Insassen, je nach Blickrichtung der Bahn, mit einem Etikett ausgestattet.
execute if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 4..6 at @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] positioned ~-20 ~-1 ~-1 run tag @e[dx=39,dy=3,dz=3,tag=!EtiSchwB.p1Sitzen,tag=!EtiSchwB.p1Unbeachten] add EtiSchwB.p1Bewegen
execute if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 4..6 at @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] positioned ~-1 ~-1 ~-20 run tag @e[dx=3,dy=3,dz=39,tag=!EtiSchwB.p1Sitzen,tag=!EtiSchwB.p1Unbeachten] add EtiSchwB.p1Bewegen

# Wenn das Fahren möglich ist, werden alle Insassen nach vorne bewegt und abhängig davon ob die Bahn nach unten oder oben fahren soll auch dies berücksichtigt.
execute if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 4..6 at @s as @e[distance=..20,tag=EtiSchwB.p1Bewegen] positioned as @s run teleport @s ^ ^ ^1
execute if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 5 as @e[distance=..20,tag=EtiSchwB.p1Bewegen] at @s run teleport @s ~ ~-1 ~
execute if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 6 as @e[distance=..20,tag=EtiSchwB.p1Bewegen] at @s run teleport @s ~ ~1 ~

# Danach wird das Etikett wieder entfernt.
tag @e[distance=..20,tag=EtiSchwB.p1Bewegen] remove EtiSchwB.p1Bewegen

# Jedesmal wenn diese Funktion sich selbst aufruft, wird die Tempo-Variable um eins reduziert. Falls jedoch das Fahren nicht möglich ist, wird sie direkt auf null gesetzt.
scoreboard players remove VarSchwB.p1Tempo PZSchwB.p1Wert 1
execute if score VarSchwB.p1Tempo PZSchwB.p1Wert matches 1.. if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 0..3 run scoreboard players set VarSchwB.p1Tempo PZSchwB.p1Wert 0

# Wenn die Fahrbahn frei ist, wird von der aktualisierten Position der Schwebebahn die Bahn-Funktion aufgerufen. Sofern die Temp-Variable bereits bei null angekommen ist, ansonsten wird diese Funktion erneut aufgerufen.
execute if score VarSchwB.p1Tempo PZSchwB.p1Wert matches 0 if score VarSchwB.p1Bewegen PZSchwB.p1Wert matches 1 at @s run function schwebebahn:vp1bahn
execute if score VarSchwB.p1Tempo PZSchwB.p1Wert matches 1.. if score VarSchwB.p1Fahren PZSchwB.p1Wert matches 4..6 at @s run function schwebebahn:vp1fahren
