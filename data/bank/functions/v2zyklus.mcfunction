
scoreboard objectives add PZBank.2Nr dummy ["Bank.2",{"text":"Kontonummer"}]
scoreboard objectives add PZBank.2Vergl dummy ["Bank.2",{"text":"Vergleichsnummer"}]
scoreboard objectives add PZBank.2Wert dummy  ["Bank.2",{"text":"Kontostand"}]
summon minecraft:item ~ ~ ~-2 {Item:{id:"minecraft:barrier",Count:1b},Age:6000s,Tags:["EtiBank.2Alle"],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:["EtiBank.2Alle"] },{id:"minecraft:armor_stand",Invisible:true,Tags:["EtiBank.2Alle"] },{id:"minecraft:armor_stand",Invisible:true,Tags:["EtiBank.2Alle"] } ] }
execute at @e[type=minecraft:item,tag=EtiBank.2Alle] run spreadplayers ~ ~ 5 10 false @e[type=minecraft:armor_stand,tag=EtiBank.2Alle]
summon minecraft:armor_stand ~4 ~-6 ~ {Invisible:true,Tags:["EtiBank.2Alle"] }
execute at @e[type=minecraft:armor_stand,tag=EtiBank.2Alle] run setblock ~ ~1 ~ minecraft:gold_block keep
execute at @e[type=minecraft:armor_stand,tag=EtiBank.2Alle] run summon minecraft:item_frame ~ ~1 ~1 {Item:{id:"minecraft:emerald",Count:1b,tag:{display:{Lore:["Bank.2","Bankschalter"] } } },CustomName:"{\"text\":\"Bankschalter\"}",Tags:["EtiBank.2Alle","EtiBank.2Tausch"],Facing:0b}
give @a[distance=..25] minecraft:emerald{display:{Lore:["Bank.2","Smaragde für dein Konto"] } } 64
summon minecraft:armor_stand ~3 ~-10 ~ {NoGravity:true,Tags:["EtiBank.2Alle","EtiBank.2Start"],Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lime_shulker_box",Count:1b} ] }

execute as @p[tag=!EtiBank.2SpielerNummer] run scoreboard players add #VarBank.2SpielerNummer PZBank.2Nr 1
scoreboard players operation @p[tag=!EtiBank.2SpielerNummer] PZBank.2Nr = #VarBank.2SpielerNummer PZBank.2Nr
execute at @e[type=minecraft:armor_stand,tag=EtiBank.2Start] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiBank.2Konto"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] }
scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=!EtiBank.2Alle] PZBank.2Nr = #VarBank.2SpielerNummer PZBank.2Nr
tag @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=!EtiBank.2Alle] add EtiBank.2Alle
execute as @e[type=minecraft:armor_stand,tag=EtiBank.2Konto] at @s run teleport ~ ~1 ~
tag @p[tag=!EtiBank.2SpielerNummer] add EtiBank.2SpielerNummer
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Bank.2"] } } } }] add EtiBank.2Anzeige
kill @e[type=minecraft:item,tag=EtiBank.2Anzeige]

execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBank.2Klick,distance=..3] remove EtiBank.2Klick
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBank.2Tausch,tag=EtiBank.2Alle,distance=..3,nbt={Item:{id:"minecraft:emerald",Count:1b},ItemRotation:0b}] add EtiBank.2Klick
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBank.2Linksklick,distance=..3] remove EtiBank.2Linksklick
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBank.2Tausch,tag=EtiBank.2Alle,distance=..3,nbt={Item:{id:"minecraft:emerald",Count:1b} }] add EtiBank.2Linksklick
execute at @a[distance=..150] run data merge entity @e[type=minecraft:item_frame,tag=EtiBank.2Tausch,tag=!EtiBank.2Linksklick,distance=..3,limit=1] {Item:{id:"minecraft:emerald",Count:1b,tag:{display:{Lore:["Bank.2","Bankschalter"] } } } }
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBank.2Rechtsklick,distance=..3] remove EtiBank.2Rechtsklick
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBank.2Tausch,tag=EtiBank.2Alle,distance=..3,nbt={ItemRotation:0b}] add EtiBank.2Rechtsklick
execute at @a[distance=..150] run data merge entity @e[type=minecraft:item_frame,tag=EtiBank.2Tausch,tag=!EtiBank.2Rechtsklick,distance=..3,limit=1] {ItemRotation:0b}
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Klick,distance=..150] run tag @p[tag=EtiBank.2Auswahl,distance=..3] remove EtiBank.2Auswahl
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Klick,distance=..150] run tag @p[tag=!EtiBank.2Auswahl,distance=..3] add EtiBank.2Auswahl
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Rechtsklick,distance=..150] run tag @p[distance=..3,tag=!EtiBank.2Smaragd,tag=EtiBank.2Auswahl,nbt={Inventory:[{id:"minecraft:emerald"} ] }] add EtiBank.2Smaragd
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Rechtsklick,distance=..150] run title @p[tag=!EtiBank.2Smaragd,distance=..3] actionbar ["",{"text":"Du hast keine Smaragde um sie einzuzahlen","color":"red","bold":true} ]
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Rechtsklick,distance=..150] run title @p[tag=EtiBank.2Smaragd,distance=..3] actionbar ["",{"text":"Du hast einen Smaragd eingezahlt","bold":true} ]
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Rechtsklick,distance=..150] run clear @p[tag=EtiBank.2Smaragd,distance=..3] minecraft:emerald 1
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Klick,distance=..150] as @p[tag=EtiBank.2Auswahl,distance=..3] as @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle] run scoreboard players operation @s PZBank.2Vergl = @s PZBank.2Nr
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Klick,distance=..150] as @p[tag=EtiBank.2Auswahl,distance=..3] run scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle] PZBank.2Vergl -= @s PZBank.2Nr
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Rechtsklick,distance=..150] as @p[tag=EtiBank.2Smaragd,distance=..3] run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0}] PZBank.2Wert 1
tellraw @p[tag=EtiBank.2Smaragd] ["Bank.2 ",{"text":"Das Bankkonto ","bold":true},{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0}]","objective":"PZBank.2Nr"} },{"text":" wurde um einen Smaragd, auf ein Gesamtvermögen von ","bold":true},{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0}]","objective":"PZBank.2Wert"} },{"text":" Smaragde, aufgestockt.","bold":true} ]
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Rechtsklick,distance=..150] run tag @a[tag=EtiBank.2Smaragd,distance=..3] remove EtiBank.2Smaragd
execute at @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0,PZBank.2Wert=..0}] as @e[type=minecraft:item_frame,tag=!EtiBank.2Linksklick,distance=..150] run title @p[tag=EtiBank.2Auswahl,distance=..3] actionbar ["",{"text":"Du hast nicht genügend Smaragde auf deinem Konto","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0,PZBank.2Wert=1..}] as @e[type=minecraft:item_frame,tag=!EtiBank.2Linksklick,distance=..150] run title @p[tag=EtiBank.2Auswahl,distance=..3] actionbar ["",{"text":"Dir wurde ein Smaragd ausbezahlt","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0,PZBank.2Wert=1}] as @e[type=minecraft:item_frame,tag=!EtiBank.2Linksklick,distance=..150] run give @p[tag=EtiBank.2Auswahl,distance=..3] minecraft:emerald{display:{Lore:["Bank.2","Smaragde für dein Konto"] } }
execute at @e[type=minecraft:item_frame,tag=!EtiBank.2Linksklick,distance=..150] as @p[tag=EtiBank.2Auswahl,distance=..3] run scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0,PZBank.2Wert=1..}] PZBank.2Wert 1
execute at @e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0,PZBank.2Wert=1}] at @e[type=minecraft:item_frame,tag=!EtiBank.2Linksklick,distance=..150] run tellraw @p[tag=EtiBank.2Auswahl,distance=..3] ["Bank.2",{"text":" Von dem Bankkonto ","bold":true},{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0}]","objective":"PZBank.2Nr"} },{"text":" wurde ein Smaragd abgezogen, Gesamtvermögen: ","bold":true},{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiBank.2Konto,tag=EtiBank.2Alle,scores={PZBank.2Vergl=0}]","objective":"PZBank.2Wert"} } ]

scoreboard objectives remove PZBank.2Nr
scoreboard objectives remove PZBank.2Vergl
scoreboard objectives remove PZBank.2Wert
execute at @e[type=minecraft:item_frame,tag=EtiBank.2Alle] run setblock ~ ~ ~-1 minecraft:air
kill @e[tag=EtiBank.2Alle]
tag @a[tag=EtiBank.2SpielerNummer] remove EtiBank.2SpielerNummer
tag @a[tag=EtiBank.2Auswahl] remove EtiBank.2Auswahl
clear @a[distance=..25] minecraft:emerald{display:{Name:"Bank.2"} }
