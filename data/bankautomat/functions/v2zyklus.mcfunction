
scoreboard objectives add PZBankA.2Nr dummy ["Bankautomat.2: ",{"text":"Kontonummer","bold":true}]
scoreboard objectives add PZBankA.2Vergl dummy ["Bankautomat.2: ",{"text":"Vergleichsnummer","bold":true}]
scoreboard objectives add PZBankA.2Wert dummy ["Bankautomat.2: ",{"text":"Kontostand","bold":true}]
summon minecraft:item ~ ~ ~-2 {Item:{id:"minecraft:barrier",Count:1b},Age:6000s,Tags:["EtiBankA.2Alle"],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:["EtiBankA.2Alle"] },{id:"minecraft:armor_stand",Invisible:true,Tags:["EtiBankA.2Alle"] },{id:"minecraft:armor_stand",Invisible:true,Tags:["EtiBankA.2Alle"] } ] }
execute at @e[type=minecraft:item,tag=EtiBankA.2Alle] run spreadplayers ~ ~ 5 10 false @e[type=minecraft:armor_stand,tag=EtiBankA.2Alle]
summon minecraft:armor_stand ~4 ~-6 ~ {Invisible:true,Tags:["EtiBankA.2Alle"] }
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.2Alle] run setblock ~ ~1 ~ minecraft:gold_block keep
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.2Alle] run summon minecraft:item_frame ~ ~1 ~1 {Item:{id:"minecraft:emerald",Count:1b,tag:{bankautomat:"v2gegenstand",display:{Lore:['"Bankschalter"'] } } },CustomName:"{\"text\":\"Bankschalter\"}",Tags:["EtiBankA.2Alle","EtiBankA.2Tausch"],Facing:0b}
give @a[distance=..25] minecraft:emerald{bankautomat:"v2gegenstand",display:{Lore:['"Smaragde für dein Konto"'] } } 64
summon minecraft:armor_stand ~3 ~-10 ~ {NoGravity:true,Tags:["EtiBankA.2Alle","EtiBankA.2Start"],Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lime_shulker_box",Count:1b} ] }

execute as @p[tag=!EtiBankA.2SpielerNummer] run scoreboard players add #VarBankA.2SpielerNummer PZBankA.2Nr 1
scoreboard players operation @p[tag=!EtiBankA.2SpielerNummer] PZBankA.2Nr = #VarBankA.2SpielerNummer PZBankA.2Nr
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.2Start] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiBankA.2Konto"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] }
scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=!EtiBankA.2Alle] PZBankA.2Nr = #VarBankA.2SpielerNummer PZBankA.2Nr
tag @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=!EtiBankA.2Alle] add EtiBankA.2Alle
execute as @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto] at @s run teleport ~ ~1 ~
tag @p[tag=!EtiBankA.2SpielerNummer] add EtiBankA.2SpielerNummer
tag @e[type=minecraft:item,nbt={Item:{tag:{bankautomat:"v2gegenstand"} } }] add EtiBankA.2Anzeige
kill @e[type=minecraft:item,tag=EtiBankA.2Anzeige]

execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBankA.2Klick,distance=..3] remove EtiBankA.2Klick
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBankA.2Tausch,tag=EtiBankA.2Alle,distance=..3,nbt={Item:{id:"minecraft:emerald",Count:1b},ItemRotation:0b}] add EtiBankA.2Klick
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBankA.2Linksklick,distance=..3] remove EtiBankA.2Linksklick
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBankA.2Tausch,tag=EtiBankA.2Alle,distance=..3,nbt={Item:{id:"minecraft:emerald",Count:1b} }] add EtiBankA.2Linksklick
execute at @a[distance=..150] run data merge entity @e[type=minecraft:item_frame,tag=EtiBankA.2Tausch,tag=!EtiBankA.2Linksklick,distance=..3,limit=1] {Item:{id:"minecraft:emerald",Count:1b,tag:{bankautomat:"v2gegenstand",display:{Lore:['"Bankschalter"'] } } } }
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBankA.2Rechtsklick,distance=..3] remove EtiBankA.2Rechtsklick
execute at @a[distance=..150] run tag @e[type=minecraft:item_frame,tag=EtiBankA.2Tausch,tag=EtiBankA.2Alle,distance=..3,nbt={ItemRotation:0b}] add EtiBankA.2Rechtsklick
execute at @a[distance=..150] run data merge entity @e[type=minecraft:item_frame,tag=EtiBankA.2Tausch,tag=!EtiBankA.2Rechtsklick,distance=..3,limit=1] {ItemRotation:0b}
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Klick,distance=..150] run tag @p[tag=EtiBankA.2Auswahl,distance=..3] remove EtiBankA.2Auswahl
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Klick,distance=..150] run tag @p[tag=!EtiBankA.2Auswahl,distance=..3] add EtiBankA.2Auswahl
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Rechtsklick,distance=..150] run tag @p[distance=..3,tag=!EtiBankA.2Smaragd,tag=EtiBankA.2Auswahl,nbt={Inventory:[{id:"minecraft:emerald"} ] }] add EtiBankA.2Smaragd
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Rechtsklick,distance=..150] run title @p[tag=!EtiBankA.2Smaragd,distance=..3] actionbar ["",{"text":"Du hast keine Smaragde um sie einzuzahlen","color":"red","bold":true} ]
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Rechtsklick,distance=..150] run title @p[tag=EtiBankA.2Smaragd,distance=..3] actionbar ["",{"text":"Du hast einen Smaragd eingezahlt","bold":true} ]
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Rechtsklick,distance=..150] run clear @p[tag=EtiBankA.2Smaragd,distance=..3] minecraft:emerald 1
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Klick,distance=..150] as @p[tag=EtiBankA.2Auswahl,distance=..3] as @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle] run scoreboard players operation @s PZBankA.2Vergl = @s PZBankA.2Nr
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Klick,distance=..150] as @p[tag=EtiBankA.2Auswahl,distance=..3] run scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle] PZBankA.2Vergl -= @s PZBankA.2Nr
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Rechtsklick,distance=..150] as @p[tag=EtiBankA.2Smaragd,distance=..3] run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0}] PZBankA.2Wert 1
tellraw @p[tag=EtiBankA.2Smaragd] ["BankA.2 ",{"text":"Das Bankkonto ","bold":true},{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0}]","objective":"PZBankA.2Nr"} },{"text":" wurde um einen Smaragd, auf ein Gesamtvermögen von ","bold":true},{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0}]","objective":"PZBankA.2Wert"} },{"text":" Smaragde, aufgestockt.","bold":true} ]
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Rechtsklick,distance=..150] run tag @a[tag=EtiBankA.2Smaragd,distance=..3] remove EtiBankA.2Smaragd
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0,PZBankA.2Wert=..0}] as @e[type=minecraft:item_frame,tag=!EtiBankA.2Linksklick,distance=..150] run title @p[tag=EtiBankA.2Auswahl,distance=..3] actionbar ["",{"text":"Du hast nicht genügend Smaragde auf deinem Konto","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0,PZBankA.2Wert=1..}] as @e[type=minecraft:item_frame,tag=!EtiBankA.2Linksklick,distance=..150] run title @p[tag=EtiBankA.2Auswahl,distance=..3] actionbar ["",{"text":"Dir wurde ein Smaragd ausbezahlt","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0,PZBankA.2Wert=1}] as @e[type=minecraft:item_frame,tag=!EtiBankA.2Linksklick,distance=..150] run give @p[tag=EtiBankA.2Auswahl,distance=..3] minecraft:emerald{bankautomat:"v2gegenstand",display:{Lore:['"Smaragde für dein Konto"'] } }
execute at @e[type=minecraft:item_frame,tag=!EtiBankA.2Linksklick,distance=..150] as @p[tag=EtiBankA.2Auswahl,distance=..3] run scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0,PZBankA.2Wert=1..}] PZBankA.2Wert 1
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0,PZBankA.2Wert=1}] at @e[type=minecraft:item_frame,tag=!EtiBankA.2Linksklick,distance=..150] run tellraw @p[tag=EtiBankA.2Auswahl,distance=..3] ["Bankautomat.2:",{"text":" Von dem Bankkonto ","bold":true},{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0}]","objective":"PZBankA.2Nr"} },{"text":" wurde ein Smaragd abgezogen, Gesamtvermögen: ","bold":true},{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiBankA.2Konto,tag=EtiBankA.2Alle,scores={PZBankA.2Vergl=0}]","objective":"PZBankA.2Wert"} } ]

scoreboard objectives remove PZBankA.2Nr
scoreboard objectives remove PZBankA.2Vergl
scoreboard objectives remove PZBankA.2Wert
execute at @e[type=minecraft:item_frame,tag=EtiBankA.2Alle] run setblock ~ ~ ~-1 minecraft:air
kill @e[tag=EtiBankA.2Alle]
tag @a[tag=EtiBankA.2SpielerNummer] remove EtiBankA.2SpielerNummer
tag @a[tag=EtiBankA.2Auswahl] remove EtiBankA.2Auswahl
clear @a[distance=..25] minecraft:emerald{display:{Name:'"Bankautomat.2:"'} }
