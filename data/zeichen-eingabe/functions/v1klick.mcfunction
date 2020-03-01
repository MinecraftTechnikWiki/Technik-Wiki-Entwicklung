# Wenn der Spieler den Wert eins besitzt, hat er auf Eingabe löschen detippt, wodurch die Partikelwolken einen leeren Namen bekommen
execute if entity @p[scores={PZZeiEin.1Taste=1}] as @e[type=minecraft:area_effect_cloud,tag=EtiZeiEin.1Alle,sort=nearest,limit=2] run data merge entity @s {CustomName:'{"text":""}'}

# Je nach Zeichen das der Spieler angeklickt hat, erhält er einen bestimmten Wert. Dieser bestimmt, welches Zeichen die Zeichen-Partikelwolke bekommt.
execute if entity @p[scores={PZZeiEin.1Taste=44}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":","}'}
execute if entity @p[scores={PZZeiEin.1Taste=45}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"-"}'}
execute if entity @p[scores={PZZeiEin.1Taste=46}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"."}'}
execute if entity @p[scores={PZZeiEin.1Taste=65}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"A"}'}
execute if entity @p[scores={PZZeiEin.1Taste=66}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"B"}'}
execute if entity @p[scores={PZZeiEin.1Taste=67}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"C"}'}
execute if entity @p[scores={PZZeiEin.1Taste=68}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"D"}'}
execute if entity @p[scores={PZZeiEin.1Taste=69}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"E"}'}
execute if entity @p[scores={PZZeiEin.1Taste=70}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"F"}'}
execute if entity @p[scores={PZZeiEin.1Taste=71}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"G"}'}
execute if entity @p[scores={PZZeiEin.1Taste=72}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"H"}'}
execute if entity @p[scores={PZZeiEin.1Taste=73}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"I"}'}
execute if entity @p[scores={PZZeiEin.1Taste=74}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"J"}'}
execute if entity @p[scores={PZZeiEin.1Taste=75}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"K"}'}
execute if entity @p[scores={PZZeiEin.1Taste=76}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"L"}'}
execute if entity @p[scores={PZZeiEin.1Taste=77}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"M"}'}
execute if entity @p[scores={PZZeiEin.1Taste=78}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"N"}'}
execute if entity @p[scores={PZZeiEin.1Taste=79}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"O"}'}
execute if entity @p[scores={PZZeiEin.1Taste=80}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"P"}'}
execute if entity @p[scores={PZZeiEin.1Taste=81}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Q"}'}
execute if entity @p[scores={PZZeiEin.1Taste=82}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"R"}'}
execute if entity @p[scores={PZZeiEin.1Taste=83}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"S"}'}
execute if entity @p[scores={PZZeiEin.1Taste=84}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"T"}'}
execute if entity @p[scores={PZZeiEin.1Taste=85}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"U"}'}
execute if entity @p[scores={PZZeiEin.1Taste=86}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"V"}'}
execute if entity @p[scores={PZZeiEin.1Taste=87}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"W"}'}
execute if entity @p[scores={PZZeiEin.1Taste=88}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"X"}'}
execute if entity @p[scores={PZZeiEin.1Taste=89}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Y"}'}
execute if entity @p[scores={PZZeiEin.1Taste=90}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Z"}'}
execute if entity @p[scores={PZZeiEin.1Taste=95}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"_"}'}
execute if entity @p[scores={PZZeiEin.1Taste=196}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Ä"}'}
execute if entity @p[scores={PZZeiEin.1Taste=214}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Ö"}'}
execute if entity @p[scores={PZZeiEin.1Taste=220}] run data merge entity @s {CustomName:'{"bold":true,"color":"dark_purple","text":"Ü"}'}

# Die beiden Namen der Partikelwolken werden im Schild zusammengefügt.
execute at @s run data merge block ~ ~ ~ {Text1:'[{"entity":"@e[tag=EtiZeiEin.1Zeichenkette,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"entity":"@e[tag=EtiZeiEin.1Zeichen,sort=nearest,limit=1]","nbt":"CustomName","interpret":true}]'}

# Die Zeichenketten-Partikelwolke erhält anschließend die komplette Zeichenkette des Schildes als Namen.
execute at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=EtiZeiEin.1Zeichenkette,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1
