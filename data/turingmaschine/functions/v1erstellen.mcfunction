
kill @e[distance=0.9..,tag=EtiTuriM.1Alle]

summon minecraft:armor_stand ~ ~3 ~ {Small:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:'{"text":"Programm","color":"red","bold":true}',Tags:["EtiTuriM.1Alle","EtiTuriM.1Zeichen"]}

summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"#","color":"gold","bold":true}',Tags:["EtiTuriM.1Alle","EtiTuriM.1Zeichen"]}

summon minecraft:armor_stand ^ ^ ^1 {Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"#","color":"gold","bold":true}',Tags:["EtiTuriM.1Alle","EtiTuriM.1Zeichen","EtiTuriM.1Bewegen"]}

summon minecraft:armor_stand ^ ^2 ^1 {Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Bearbeiter","color":"gold","bold":true}',Tags:["EtiTuriM.1Alle","EtiTuriM.1LeseSchreibKopf"],ArmorItems:[{},{},{},{id:"minecraft:observer",count:1}]}

tag @s remove EtiTuriM.1Erstellen

#data merge entity @s {Tags:["EtiTuriM.1Alle","EtiTuriM.1Turingmaschine","EtiTuriM.1NeuesZeichen"]}
