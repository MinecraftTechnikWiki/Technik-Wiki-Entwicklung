
execute if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] at @e[type=minecraft:item,tag=EtiHanSE.1BerndSeele] run fill ~ ~-1 ~ ~1 ~-1 ~ minecraft:soul_sand replace

execute if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] at @e[type=minecraft:item,tag=EtiHanSE.1BerndSeele] run fill ~ ~ ~ ~-1 ~ ~ minecraft:stone_slab[type=double] replace
execute if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] at @e[type=minecraft:item,tag=EtiHanSE.1BerndSeele] run setblock ~1 ~ ~ minecraft:potted_poppy replace
execute if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] run kill @e[type=minecraft:item,tag=EtiHanSE.1BerndSeele]

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=!EtiAufS.1Tausch] run tellraw @a[distance=..5,scores={PZHanSE.1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Wie schrecklich! Mein Kumpel Bernd wurde um die Ecke gebracht. Kannst du mir vielleicht","color":"yellow"},{"text":" [3 Bruchsteine, 2 Steinstufen] ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Gib Martin 3x Bruchstein, 2x Stufe"} } },{"text":"besorgen, damit Bernd wenigstens ein ordentliches Grab erhält?","color":"yellow"}]

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=!EtiAufS.1Tausch] unless entity @e[type=minecraft:zombie,tag=EtiHanSE.1Beerdiger] run tellraw @a[distance=..5,scores={PZHanSE.1Reden=1..},nbt={Inventory:[{id:"minecraft:cobblestone"}]}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Danke das die benötigten Materialien besorgt hast, dann erhält Bernd wenigstens ein ordentliches Grab","color":"yellow"}]

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=!EtiAufS.1Tausch] unless entity @e[type=minecraft:zombie,tag=EtiHanSE.1Beerdiger] if entity @a[distance=..5,scores={PZHanSE.1Reden=1..},nbt={Inventory:[{id:"minecraft:cobblestone"}]}] run data merge entity @s {Offers:{Recipes:[{buy:{id:"minecraft:cobblestone",Count:3b},buyB:{id:"minecraft:stone_slab",Count:2b},sell:{id:"minecraft:chest",Count:1b,tag:{Verliesbox:true,CanPlaceOn:["minecraft:stone_slab"],display:{Name:"{\"text\":\"Bernd's Truhe\"}",Lore:["Die Truhe ist gefüllt"]},BlockEntityTag:{LootTable:"chests:simple_dungeon"}}},maxUses:1,uses:0}]}}

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=!EtiAufS.1Tausch] unless entity @e[type=minecraft:zombie,tag=EtiHanSE.1Beerdiger] if entity @a[distance=..5,scores={PZHanSE.1Reden=1..},nbt={Inventory:[{id:"minecraft:cobblestone"}]}] run tag @s add EtiAufS.1Tausch

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=EtiAufS.1Tausch] if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] run data merge entity @s {Offers:{Recipes:[] } }

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=EtiAufS.1Tausch] run title @a[distance=..5,scores={PZHanSE.1Handel=1..}] title ["",{"text":"Das Abenteuer ist...","color":"yellow"}]

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=EtiAufS.1Tausch] run title @a[distance=..5,scores={PZHanSE.1Handel=1..}] subtitle ["",{"text":"...zu Ende","color":"yellow","bold":true}]

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=EtiAufS.1Tausch] run gamemode creative @a[distance=..5,scores={PZHanSE.1Handel=1..}]

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Martin,tag=EtiAufS.1Tausch] if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] run tellraw @a[scores={PZHanSE.1Handel=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Ich stehe dir nun als Handelspartner zur Verfügung","color":"yellow"}]

scoreboard players reset @a[scores={PZHanSE.1Handel=1..}] PZHanSE.1Handel
scoreboard players reset @a[scores={PZHanSE.1Reden=1..}] PZHanSE.1Reden
