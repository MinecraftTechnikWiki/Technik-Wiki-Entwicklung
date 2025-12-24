# Plattfrom wird erzeugt.
execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Bauwerk,tag=!EtiParc.1Plattform] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:quartz_block replace
tag @e[type=minecraft:armor_stand,tag=EtiParc.1Bauwerk,tag=!EtiParc.1Plattform] add EtiParc.1Plattform

# Wenn der Spieler die Plattform betritt, wird der Parcours erstellt und der Spieler zum Startpunkt teleportiert.
execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] positioned ~ ~20 ~ at @e[type=minecraft:marker,tag=EtiParc.1Block,sort=nearest,limit=3] run setblock ~ ~ ~ minecraft:air replace

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] positioned ~ ~20 ~ run kill @e[type=minecraft:marker,tag=EtiParc.1Block,sort=nearest,limit=3]

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] run summon minecraft:marker ~ ~20 ~ {Tags:["EtiParc.1Alle","EtiParc.1Block"]}

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] run scoreboard players add @e[type=minecraft:marker,tag=EtiParc.1Block] PZParc.1Wert 1

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] run summon minecraft:marker ~-2 ~20 ~ {Tags:["EtiParc.1Alle","EtiParc.1Block"]}

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] run scoreboard players add @e[type=minecraft:marker,tag=EtiParc.1Block] PZParc.1Wert 1

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] run summon minecraft:marker ~-4 ~20 ~ {Tags:["EtiParc.1Alle","EtiParc.1Block"]}

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] run scoreboard players add @e[type=minecraft:marker,tag=EtiParc.1Block] PZParc.1Wert 1

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] if entity @p[distance=..3] at @e[type=minecraft:marker,tag=EtiParc.1Block,limit=3] run setblock ~ ~ ~ minecraft:quartz_block replace

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] run tag @p[distance=..3] add EtiParc.1Spieler

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Plattform] run teleport @p[distance=..3] ~ ~21 ~


# Betritt der Spieler einen neuen Block wird ihm der neue Punktestand angezeigt und ein Etikett wird vergeben, um kenntlich zu machen, dass ein neuer Block erzeugt werden soll. 
execute at @e[type=minecraft:marker,tag=EtiParc.1Block,scores={PZParc.1Wert=2}] positioned ~ ~1 ~ run scoreboard players add @p[distance=..0.75] PZParc.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiParc.1Block,scores={PZParc.1Wert=2}] positioned ~ ~1 ~ as @p[distance=..0.75] run title @s actionbar ["",{text:"Punkte",color:"gray"}," ",{score:{name:"@s",objective:"PZParc.1Wert"},color:"dark_purple",bold:true}]

execute at @e[type=minecraft:marker,tag=EtiParc.1Block,scores={PZParc.1Wert=2}] positioned ~ ~1 ~ if entity @p[distance=..0.75] run tag @e[distance=..15,type=minecraft:marker,tag=EtiParc.1Block,scores={PZParc.1Wert=1}] add EtiParc.1NeuerBlock

# Es werden neue Blöcke in Form von neuen Markern erzeugt.
execute at @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock] if block ~2 ~ ~ minecraft:air run summon minecraft:marker ~2 ~ ~ {Tags:["EtiParc.1Alle","EtiParc.1Block"]}
execute at @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock] if block ~-2 ~ ~ minecraft:air run summon minecraft:marker ~-2 ~ ~ {Tags:["EtiParc.1Alle","EtiParc.1Block"]}
execute at @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock] if block ~ ~ ~2 minecraft:air run summon minecraft:marker ~ ~ ~2 {Tags:["EtiParc.1Alle","EtiParc.1Block"]}
execute at @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock] if block ~ ~ ~-2 minecraft:air run summon minecraft:marker ~ ~ ~-2 {Tags:["EtiParc.1Alle","EtiParc.1Block"]}

execute at @n[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock] run scoreboard players add @e[distance=..15,type=minecraft:marker,tag=EtiParc.1Block] PZParc.1Wert 1





execute at @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock] run tag @n[distance=..15,type=minecraft:marker,tag=EtiParc.1Block,scores={PZParc.1Wert=1},sort=random] add EtiParc.1NeuerBlock

execute at @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock,scores={PZParc.1Wert=2}] run kill @e[distance=..15,type=minecraft:marker,tag=EtiParc.1Block,tag=!EtiParc.1NeuerBlock,scores={PZParc.1Wert=1}]

execute at @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock,scores={PZParc.1Wert=2}] at @e[distance=..15,type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock,scores={PZParc.1Wert=1}] run setblock ~ ~ ~ minecraft:white_stained_glass replace



execute if entity @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock,scores={PZParc.1Wert=2}] at @e[type=minecraft:marker,tag=EtiParc.1Block,scores={PZParc.1Wert=4..}] run setblock ~ ~ ~ minecraft:air replace

execute if entity @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock,scores={PZParc.1Wert=2}] run kill @e[type=minecraft:marker,tag=EtiParc.1Block,scores={PZParc.1Wert=4..}]


tag @e[type=minecraft:marker,tag=EtiParc.1Block,tag=EtiParc.1NeuerBlock] remove EtiParc.1NeuerBlock



execute as @a[tag=EtiParc.1Spieler] at @s unless entity @e[distance=..15,type=minecraft:marker,tag=EtiParc.1Block] run title @s actionbar ["",{text:"Du hast verloren",color:"yellow"}]

execute as @a[tag=EtiParc.1Spieler] at @s unless entity @e[distance=..15,type=minecraft:marker,tag=EtiParc.1Block] at @n[type=minecraft:armor_stand,tag=EtiParc.1Plattform] run teleport @s ~5 ~ ~

execute as @a[tag=EtiParc.1Spieler] at @s unless entity @e[distance=..15,type=minecraft:marker,tag=EtiParc.1Block] run scoreboard players set @s PZParc.1Wert 0

execute as @a[tag=EtiParc.1Spieler] at @s if entity @e[distance=..7,type=minecraft:armor_stand,tag=EtiParc.1Plattform] run tag @s remove EtiParc.1Spieler
