# Je nach Rotation und Neigung kann geschlussfolgert werden, auf welches Zeichen der Spieler getippt hat und genau dieses Zeichen wird in die Zeichen-Partikelwolke gespeichert.
execute if entity @p[distance=..1,y_rotation=-124..-120,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Q"}'}
execute if entity @p[distance=..1,y_rotation=-119..-114,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"W"}'}
execute if entity @p[distance=..1,y_rotation=-113..-108,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"E"}'}
execute if entity @p[distance=..1,y_rotation=-107..-101,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"R"}'}
execute if entity @p[distance=..1,y_rotation=-100..-94,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"T"}'}
execute if entity @p[distance=..1,y_rotation=-93..-87,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Z"}'}
execute if entity @p[distance=..1,y_rotation=-86..-80,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"U"}'}
execute if entity @p[distance=..1,y_rotation=-79..-73,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"I"}'}
execute if entity @p[distance=..1,y_rotation=-72..-67,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"O"}'}
execute if entity @p[distance=..1,y_rotation=-66..-61,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"P"}'}
execute if entity @p[distance=..1,y_rotation=-60..-55,x_rotation=-7..-2] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Ü"}'}
execute if entity @p[distance=..1,y_rotation=-124..-120,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"A"}'}
execute if entity @p[distance=..1,y_rotation=-119..-114,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"S"}'}
execute if entity @p[distance=..1,y_rotation=-113..-108,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"D"}'}
execute if entity @p[distance=..1,y_rotation=-107..-101,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"F"}'}
execute if entity @p[distance=..1,y_rotation=-100..-94,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"G"}'}
execute if entity @p[distance=..1,y_rotation=-93..-87,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"H"}'}
execute if entity @p[distance=..1,y_rotation=-86..-80,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"J"}'}
execute if entity @p[distance=..1,y_rotation=-79..-73,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"K"}'}
execute if entity @p[distance=..1,y_rotation=-72..-67,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"L"}'}
execute if entity @p[distance=..1,y_rotation=-66..-61,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Ö"}'}
execute if entity @p[distance=..1,y_rotation=-60..-55,x_rotation=-1..4] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Ä"}'}
execute if entity @p[distance=..1,y_rotation=-124..-120,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Y"}'}
execute if entity @p[distance=..1,y_rotation=-119..-114,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"X"}'}
execute if entity @p[distance=..1,y_rotation=-113..-108,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"C"}'}
execute if entity @p[distance=..1,y_rotation=-107..-101,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"V"}'}
execute if entity @p[distance=..1,y_rotation=-100..-94,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"B"}'}
execute if entity @p[distance=..1,y_rotation=-93..-87,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"N"}'}
execute if entity @p[distance=..1,y_rotation=-86..-80,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"M"}'}
execute if entity @p[distance=..1,y_rotation=-79..-73,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":","}'}
execute if entity @p[distance=..1,y_rotation=-72..-67,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"."}'}
execute if entity @p[distance=..1,y_rotation=-66..-61,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"-"}'}
execute if entity @p[distance=..1,y_rotation=-60..-55,x_rotation=5..10] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"_"}'}

# Die bishere Eingabe als Zeichenkette wie auch das neue eingetippte Zeichen werden zusammen in das Schild gespeichert.
execute at @s run data merge block ~ ~ ~ {Text1:'[{"entity":"@e[tag=EtiZeiEin.2Zeichenkette,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"entity":"@e[tag=EtiZeiEin.2Zeichen,sort=nearest,limit=1]","nbt":"CustomName","interpret":true}]'}

# Die zusammengefügte Zeichenkette wird dann wieder in die Zeichenketten-Partikelwolke gespeichert.
execute at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=EtiZeiEin.2Zeichenkette,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1
