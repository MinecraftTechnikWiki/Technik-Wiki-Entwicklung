# Das Punktestand-Ziel wird erstellt
scoreboard objectives add PZVergl.2Bool trigger ["Vergleicher.2: ",{"text":"Boolescher Wert der Variablen","bold":true}]

# Sechs Rüstungsständer mit Wahrheitswerten im Namen für gleich, ungleich, größergleich, kleinergleich, größer und kleiner werden erstellt
summon minecraft:armor_stand ~ ~1 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiVergl.2Alle","EtiVergl.2GLEICH"]}
summon minecraft:armor_stand ~ ~2 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiVergl.2Alle","EtiVergl.2UNGLEICH"]}
summon minecraft:armor_stand ~ ~3 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiVergl.2Alle","EtiVergl.2GROESSERGLEICH"]}
summon minecraft:armor_stand ~ ~4 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiVergl.2Alle","EtiVergl.2KLEINERGLEICH"]}
summon minecraft:armor_stand ~ ~5 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiVergl.2Alle","EtiVergl.2GROESSER"]}
summon minecraft:armor_stand ~ ~6 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiVergl.2Alle","EtiVergl.2KLEINER"]}

# Die Variablen 1 und 2 werden mit den Werten null erstellt
scoreboard players set VarVergl.2Variable1 PZVergl.2Bool 0
scoreboard players set VarVergl.2Variable2 PZVergl.2Bool 0

# Die Rüstungsständer erhalten die Werte null und eins, für ihr jeweiliges Ergebnis
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiVergl.2GLEICH,sort=nearest,limit=1] PZVergl.2Bool 1
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiVergl.2UNGLEICH,sort=nearest,limit=1] PZVergl.2Bool 0
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiVergl.2GROESSERGLEICH,sort=nearest,limit=1] PZVergl.2Bool 1
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiVergl.2KLEINERGLEICH,sort=nearest,limit=1] PZVergl.2Bool 1
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiVergl.2GROESSER,sort=nearest,limit=1] PZVergl.2Bool 0
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiVergl.2KLEINER,sort=nearest,limit=1] PZVergl.2Bool 0
