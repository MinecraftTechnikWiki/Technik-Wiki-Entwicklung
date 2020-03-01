
execute if entity @a[distance=..5,scores={PZAufS.p1Handel=1..}] at @e[type=minecraft:item,tag=EtiAufS.p1BerndSeele] run fill ~ ~-1 ~ ~1 ~-1 ~ minecraft:soul_sand replace

execute if entity @a[distance=..5,scores={PZAufS.p1Handel=1..}] at @e[type=minecraft:item,tag=EtiAufS.p1BerndSeele] run fill ~ ~ ~ ~-1 ~ ~ minecraft:smooth_stone_slab[type=double] replace
execute if entity @a[distance=..5,scores={PZAufS.p1Handel=1..}] at @e[type=minecraft:item,tag=EtiAufS.p1BerndSeele] run setblock ~1 ~ ~ minecraft:potted_poppy replace
execute if entity @a[distance=..5,scores={PZAufS.p1Handel=1..}] run kill @e[type=minecraft:item,tag=EtiAufS.p1BerndSeele]

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=!EtiAufS.1Tausch] run tellraw @a[distance=..5,scores={PZAufS.p1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Wie schrecklich! Mein Kumpel Bernd wurde um die Ecke gebracht. Kannst du mir vielleicht ","color":"yellow"},{"text":"[Bruchsteine und Steinstufen]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Gib Martin 3x Bruchstein, 2x Stufe"} } },{"text":" besorgen, damit Bernd wenigstens ein ordentliches Grab erhält?","color":"yellow"}]

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=!EtiAufS.1Tausch] unless entity @e[type=minecraft:zombie,tag=EtiAufS.p1Beerdiger] run tellraw @a[distance=..5,scores={PZAufS.p1Reden=1..},nbt={Inventory:[{id:"minecraft:cobblestone"}]}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Danke das die benötigten Materialien besorgt hast, dann erhält Bernd wenigstens ein ordentliches Grab","color":"yellow"}]

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=!EtiAufS.1Tausch] unless entity @e[type=minecraft:zombie,tag=EtiAufS.p1Beerdiger] if entity @a[distance=..5,scores={PZAufS.p1Reden=1..},nbt={Inventory:[{id:"minecraft:cobblestone"} ] } ] run data merge entity @s {NoAI:true,Offers:{Recipes:[{buy:{id:"minecraft:cobblestone",Count:3b},buyB:{id:"minecraft:smooth_stone_slab",Count:2b},sell:{id:"minecraft:chest",Count:1b,tag:{auftrag-system:"vp1gegenstand",CanPlaceOn:["minecraft:smooth_stone_slab"],display:{Name:'{"text":"Bernd\'s Truhe"}',Lore:['"Die Truhe ist gefüllt"']},BlockEntityTag:{LootTable:"minecraft:chests/simple_dungeon"} } },maxUses:1,uses:0} ] } }

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=!EtiAufS.1Tausch] unless entity @e[type=minecraft:zombie,tag=EtiAufS.p1Beerdiger] if entity @a[distance=..5,scores={PZAufS.p1Reden=1..},nbt={Inventory:[{id:"minecraft:cobblestone"} ] } ] run tag @s add EtiAufS.1Tausch

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=EtiAufS.1Tausch] if entity @a[distance=..5,scores={PZAufS.p1Handel=1..}] run data merge entity @s {NoAI:false,Offers:{Recipes:[] } }

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=EtiAufS.1Tausch] run title @a[distance=..5,scores={PZAufS.p1Handel=1..}] title ["",{"text":"Das Abenteuer ist...","color":"yellow"}]

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=EtiAufS.1Tausch] run title @a[distance=..5,scores={PZAufS.p1Handel=1..}] subtitle ["",{"text":"...zu Ende","color":"yellow","bold":true}]

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=EtiAufS.1Tausch] run gamemode creative @a[distance=..5,scores={PZAufS.p1Handel=1..}]

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Martin,tag=EtiAufS.1Tausch] if entity @a[distance=..5,scores={PZAufS.p1Handel=1..}] run tellraw @a[scores={PZAufS.p1Handel=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Ich stehe dir tief in deiner Schuld. Danke für deine Hilfe!","color":"yellow"}]

scoreboard players reset @a[scores={PZAufS.p1Handel=1..}] PZAufS.p1Handel
scoreboard players reset @a[scores={PZAufS.p1Reden=1..}] PZAufS.p1Reden
