# An der Position des Erstellen-Rüstungsständers, wird ein Rüstungsständer mit Truhenkopf und auf ihm ein Dorfbewohner sitzend erzeugt. Der Erstellen-Rüstungsständer wird danach entfernt.
execute at @e[type=minecraft:armor_stand,tag=EtiEinfA.1Erstellen] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Schaltfläche","bold":true}',Tags:["EtiEinfA.1Alle","EtiEinfA.1Auswahl"],ArmorItems:[{},{},{},{id:"minecraft:bell",Count:1b} ],Passengers:[{id:"minecraft:villager",NoAI:true,Silent:true,NoGravity:true,Offers:{Recipes:[]},Tags:["EtiEinfA.1Alle","EtiEinfA.1Klicken"],ActiveEffects:[{Id:14b,Amplifier:0b,Ambient:false,ShowParticles:false,Duration:2147483647} ] } ] }
kill @e[type=minecraft:armor_stand,tag=EtiEinfA.1Erstellen]

# Die Auswahl-Rüstungsständer schauen zum Spieler, wenn dieser in einem Umkreis von fünf Blöcken bei ihnen steht.
execute as @e[type=minecraft:armor_stand,tag=EtiEinfA.1Auswahl] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..5] eyes

# Wenn der Spieler auf eine Auswahlschaltfläche klickt, werden von allen angeklickten Rüstungsständern die Effekte und die Etiketten entfernt. Anschließend bekommt der angeklickte Rüstungsständer genau dieses Etikett und der Spieler erhält eine Nachricht darüber.
execute at @a[scores={PZEinfA.1Klick=1..}] positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:villager,tag=EtiEinfA.1Klicken] run effect clear @e[type=minecraft:armor_stand,tag=EtiEinfA.1Angeklickt]
execute as @a[scores={PZEinfA.1Klick=1..}] at @s positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:villager,tag=EtiEinfA.1Klicken] run playsound minecraft:block.bell.use block @s ~ ~ ~ 5 1
execute at @a[scores={PZEinfA.1Klick=1..}] positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:villager,tag=EtiEinfA.1Klicken] run tag @e[type=minecraft:armor_stand,tag=EtiEinfA.1Angeklickt] remove EtiEinfA.1Angeklickt
execute at @a[scores={PZEinfA.1Klick=1..}] positioned ^ ^ ^2 run tag @e[distance=..2,type=minecraft:armor_stand,tag=EtiEinfA.1Auswahl,sort=nearest,limit=1] add EtiEinfA.1Angeklickt
execute as @a[scores={PZEinfA.1Klick=1..}] at @s positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiEinfA.1Angeklickt,sort=nearest,limit=1] run tellraw @s ["Einfachauswahl.1: ",{"text":"Der Schalter wurde aktiviert (Rechtsklick)","bold":true} ]

# Der angeklickte Rüstungsständer besitzt ein Etikett an dem er erkannt wird und er erzeugt weiße Partikeln und den Leuchten-Effekt.
execute at @e[type=minecraft:armor_stand,tag=EtiEinfA.1Angeklickt] run particle minecraft:block minecraft:white_concrete ~ ~1.1 ~ 0 0 0 0.1 1 normal @a[distance=..25]
effect give @e[type=minecraft:armor_stand,tag=EtiEinfA.1Angeklickt] minecraft:glowing 1 1 false

# Spieler die einen Dorfbewohner angeklickt haben werden wieder auf den Wert null gesetzt.
scoreboard players set @a[scores={PZEinfA.1Klick=1..}] PZEinfA.1Klick 0
