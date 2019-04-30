# Der Brückenbauer schaut zum Spieler
teleport @s ~ ~ ~ facing entity @p feet

# Falls die Raster-Eigenschaft aktiviert ist, wird der Brückenbauer in eine der vier Himmelsrichtungen schauen
execute if entity @s[tag=!EtiBruB.1KeinRaster,y_rotation=135..-135] rotated 180 0 run teleport @s ~ ~ ~ 180 ~
execute if entity @s[tag=!EtiBruB.1KeinRaster,y_rotation=-135..-45] rotated -90 0 run teleport @s ~ ~ ~ -90 ~
execute if entity @s[tag=!EtiBruB.1KeinRaster,y_rotation=-45..45] rotated 0 0 run teleport @s ~ ~ ~ 0 ~
execute if entity @s[tag=!EtiBruB.1KeinRaster,y_rotation=45..135] rotated 90 0 run teleport @s ~ ~ ~ 90 ~

# Die Rüstungsständer mit entsprechenden Block im Kopfslot werden von dem Blickwinkel des Brückenbauers entsprechend ausgerichtet
teleport @e[type=minecraft:armor_stand,tag=EtiBruB.1Gleis1,sort=nearest,limit=1] ^ ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiBruB.1Gleisbett1,sort=nearest,limit=1] ^ ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiBruB.1Rechts1,sort=nearest,limit=1] ^1 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiBruB.1Links1,sort=nearest,limit=1] ^-1 ^ ^1 facing entity @p feet

# Falls der Brückenbauer für zwei Gleise aktiviert wurde, werden auch die weiteren Rüstungsständer anhand des Blickwinkels entsprechend positioniert
execute if entity @s[tag=EtiBruB.1ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiBruB.1Gleis2,sort=nearest,limit=1] ^-2 ^0.5 ^1 facing entity @p feet
execute if entity @s[tag=EtiBruB.1ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiBruB.1Gleisbett2,sort=nearest,limit=1] ^-2 ^ ^1 facing entity @p feet
execute if entity @s[tag=EtiBruB.1ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiBruB.1Rechts2,sort=nearest,limit=1] ^-3 ^ ^1 facing entity @p feet

# Wenn der Spieler eine Schiene vor den Brückenbauer wirft, wird diese gelöscht und der Brückenbauer wird für zwei Gleise aktiviert
execute if entity @p[distance=1.5..10] run tag @e[distance=..2,type=minecraft:item,tag=!EtiBruB.1ZweiSpuren,nbt={Item:{id:"minecraft:rail",Count:1b} } ] add EtiBruB.1ZweiSpuren
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1ZweiSpuren] run tag @s add EtiBruB.1Erstellen
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1ZweiSpuren] run tag @s add EtiBruB.1ZweiSpuren
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1ZweiSpuren] run tellraw @a[distance=..10] ["Brückenbauer.1: ",{"text":"Der Brückenbauer platziert nun zwei Gleisspuren","bold":true}]
kill @e[distance=..2,type=minecraft:item,tag=EtiBruB.1ZweiSpuren]

# Wenn der Spieler Stein vor den Brückenbauer wirft, so baut der Brückenbauer im weiteren Verlauf die Segmente nach unten
execute if entity @p[distance=1.5..10] run tag @e[distance=..2,type=minecraft:item,tag=!EtiBruB.1NachUnten,nbt={Item:{id:"minecraft:stone",Count:1b} } ] add EtiBruB.1NachUnten
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachUnten] run scoreboard players remove @s[scores={PZBruB.1Richt=-1..}] PZBruB.1Richt 1
execute if entity @s[scores={PZBruB.1Richt=-2}] if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachUnten] run tellraw @a[distance=..10] ["Brückenbauer.1: ",{"text":"Der Brückenbauer bewegt sich nun je nach Gelände nach ","bold":true},{"text":"oben, vorwärts oder nach unten","color":"yellow","bold":true}]
execute if entity @s[scores={PZBruB.1Richt=-1}] if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachUnten] run tellraw @a[distance=..10] ["Brückenbauer.1: ",{"text":"Der Brückenbauer bewegt sich nun nach ","bold":true},{"text":"unten","color":"gold","bold":true}]
execute if entity @s[scores={PZBruB.1Richt=0}] if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachUnten] run tellraw @a[distance=..10] ["Brückenbauer.1: ",{"text":"Der Brückenbauer bewegt sich nun ","bold":true},{"text":"vorwärts","color":"green","bold":true}]
kill @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachUnten]

# Wirft der Spieler Andesit vor den Brückenbauer, so baut er weitere Segmente nach oben
execute if entity @p[distance=1.5..10] run tag @e[distance=..2,type=minecraft:item,tag=!EtiBruB.1NachOben,nbt={Item:{id:"minecraft:andesite",Count:1b} } ] add EtiBruB.1NachOben
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachOben] run scoreboard players add @s[scores={PZBruB.1Richt=..0}] PZBruB.1Richt 1
execute if entity @s[scores={PZBruB.1Richt=1}] if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachOben] run tellraw @a[distance=..10] ["Brückenbauer.1: ",{"text":"Der Brückenbauer bewegt sich nun nach ","bold":true},{"text":"oben","color":"blue","bold":true}]
execute if entity @s[scores={PZBruB.1Richt=0}] if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachOben] run tellraw @a[distance=..10] ["Brückenbauer.1: ",{"text":"Der Brückenbauer bewegt sich nun ","bold":true},{"text":"vorwärts","color":"green","bold":true}]
execute if entity @s[scores={PZBruB.1Richt=-1}] if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachOben] run tellraw @a[distance=..10] ["Brückenbauer.1: ",{"text":"Der Brückenbauer bewegt sich nun nach ","bold":true},{"text":"unten","color":"gold","bold":true}]
kill @e[distance=..2,type=minecraft:item,tag=EtiBruB.1NachOben]

# Das Raster wird der Brückenbauer los, wenn man einen Rüstungsständer vor ihn wirft
execute if entity @p[distance=1.5..10] run tag @e[distance=..2,type=minecraft:item,tag=!EtiBruB.1KeinRaster,nbt={Item:{id:"minecraft:armor_stand",Count:1b} } ] add EtiBruB.1KeinRaster
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1KeinRaster] run tag @s add EtiBruB.1KeinRaster
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiBruB.1KeinRaster] run tellraw @a[distance=..10] ["Brückenbauer.1: ",{"text":"Der Brückenbauer ist nicht mehr am Raster gebunden und kann nun auch diagonale Gleisspuren verlegen","bold":true}]
kill @e[distance=..2,type=minecraft:item,tag=EtiBruB.1KeinRaster]
