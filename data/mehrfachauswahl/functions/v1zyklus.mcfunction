# Wenn der Erstellen-Rüstungsständer platziert wurde, wird an dessen Stelle ein Rüstungsständer mit Dorfbewohner erzeugt. Der Rüstungsständer besitzt einen Anzeigenamen und der Dorfbewohner besitzt keine KI, ist leise, besitzt keine Gravitation, keine Rezepte und ist unsichtbar. Der Erstellen-Rüstungsständer wird danach gelöscht.
execute at @e[type=minecraft:armor_stand,tag=EtiMehrfA.1Erstellen] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":"Schaltfläche","bold":true}',Tags:["EtiMehrfA.1Alle","EtiMehrfA.1Auswahl"],ArmorItems:[{},{},{},{id:"minecraft:bell",Count:1b} ],Passengers:[{id:"minecraft:villager",NoAI:true,Silent:true,NoGravity:true,Offers:{Recipes:[]},Tags:["EtiMehrfA.1Alle","EtiMehrfA.1Klicken"],ActiveEffects:[{Id:14b,Amplifier:0b,Ambient:false,ShowParticles:false,Duration:2147483647} ] } ] }
kill @e[type=minecraft:armor_stand,tag=EtiMehrfA.1Erstellen]

# Die Rüstungsständer schaue immer zum Spieler, wenn dieser näher kommt.
execute as @e[type=minecraft:armor_stand,tag=EtiMehrfA.1Auswahl] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..5] eyes

# Wenn der Spieler auf einen Dorfbewohner einen Rechtsklick macht, so erhält er einen Wert, woran das erkannt wird und zwei Meter vor ihm wird nach dem Dorfbewohner Ausschau gehalten. Wenn das zutrifft, wird ein Glocken-Geräiusch abgespielt und der Rüstungsständer bekommt ein Etikett und der Spieler die Benachrichtigung.
execute as @a[scores={PZMehrfA.1Klick=1..}] at @s positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:villager,tag=EtiMehrfA.1Klicken] run playsound minecraft:block.bell.use block @s ~ ~ ~ 5 1 1
execute at @a[scores={PZMehrfA.1Klick=1..}] positioned ^ ^ ^2 run tag @e[distance=..2,type=minecraft:armor_stand,tag=EtiMehrfA.1Auswahl,sort=nearest,limit=1] add EtiMehrfA.1Angeklickt
execute as @a[scores={PZMehrfA.1Klick=1..}] at @s positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiMehrfA.1Angeklickt,sort=nearest,limit=1] run tellraw @s ["Mehrfachauswahl.1: ",{"text":"Der Schalter wurde aktiviert (Rechtsklick)","bold":true} ]

# Die angeklickten Schaltflächen erzeugen weiße Partikel und besitzen den Leuchten-Effekt.
execute at @e[type=minecraft:armor_stand,tag=EtiMehrfA.1Angeklickt] run particle minecraft:block minecraft:white_concrete ~ ~1.1 ~ 0 0 0 0.1 1 normal @a[distance=..25]
effect give @e[type=minecraft:armor_stand,tag=EtiMehrfA.1Angeklickt] minecraft:glowing 1 1 false

# Spieler die Dorfbewohner angeklickt haben, erhalten wieder den Wert null.
scoreboard players set @a[scores={PZMehrfA.1Klick=1..}] PZMehrfA.1Klick 0

# Dorfbewohner die mit einem Linksklick Schaden erhalten, werden dadurch erkannt, dass deren Gesundheit nicht mehr maximal ist. Spieler im Umkreis erhalten ein Geröusch sowie eine Benachrichtigung. Effekte werden ebenfalls entfernt sowie das Etikett. Der Dorfbewohner wird anschließend wieder auf maximale Gesundheit gesetzt.
execute as @e[type=minecraft:villager,tag=EtiMehrfA.1Klicken] store result score @s PZMehrfA.1Klick run data get entity @s Health 100
execute as @e[type=minecraft:villager,tag=EtiMehrfA.1Klicken,scores={PZMehrfA.1Klick=0..1999}] at @s at @a[distance=..3] positioned ^ ^ ^2 if entity @s[distance=..2] run tellraw @a[distance=..3] ["Mehrfachauswahl.1: ",{"text":"Der Schalter wurde deaktiviert (Linksklick)","bold":true}]
execute as @e[type=minecraft:villager,tag=EtiMehrfA.1Klicken,scores={PZMehrfA.1Klick=0..1999}] at @s at @a[distance=..3] positioned ^ ^ ^2 if entity @s[distance=..2] run playsound minecraft:block.anvil.place block @p ~ ~ ~ 10 1 1
execute at @e[type=minecraft:villager,tag=EtiMehrfA.1Klicken,scores={PZMehrfA.1Klick=0..1999}] at @a[distance=..3] positioned ^ ^ ^2 run effect clear @e[distance=..2,type=minecraft:armor_stand,tag=EtiMehrfA.1Angeklickt,sort=nearest,limit=1]
execute as @e[type=minecraft:villager,tag=EtiMehrfA.1Klicken,scores={PZMehrfA.1Klick=0..1999}] at @s at @a[distance=..3] positioned ^ ^ ^2 run tag @e[distance=..2,type=minecraft:armor_stand,tag=EtiMehrfA.1Angeklickt,sort=nearest,limit=1] remove EtiMehrfA.1Angeklickt
execute as @e[type=minecraft:villager,tag=EtiMehrfA.1Klicken,scores={PZMehrfA.1Klick=0..1999}] run data merge entity @s {Health:20.0f}
