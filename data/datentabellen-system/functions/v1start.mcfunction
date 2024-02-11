
give @a[distance=..15] minecraft:armor_stand{EigDaTaS.1Alle:true,display:{Name:'{"text":"Datentabelle","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Datentabelle zu platzieren"']},EntityTag:{Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Datentabelle","color":"green","bold":true}',Tags:["EtiDaTaS.1Alle","EtiDaTaS.1Tabelle","EtiDaTaS.1Erstellen"]} }






execute as @e[type=minecraft:armor_stand,tag=EtiDaTaS.1Erstellen] at @s run function datentabellen-system:v1erstellen








teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

summon minecraft:text_display ^1 ^ ^ {text:'[{"text":"Name","color":"dark_gray","bold":true}]',Tags:["EtiDaTaS.1Alle","EtiDaTaS.1Ueberschrift","EtiDaTaS.1Spalte1"]}
summon minecraft:text_display ^-1 ^ ^ {text:'[{"text":"Wert","color":"dark_gray","bold":true}]',Tags:["EtiDaTaS.1Alle","EtiDaTaS.1Ueberschrift","EtiDaTaS.1Spalte2"]}

execute as @e[type=minecraft:text_display,tag=EtiDaTaS.1Ueberschrift] positioned as @s run teleport @s ~ ~ ~ ~ ~







