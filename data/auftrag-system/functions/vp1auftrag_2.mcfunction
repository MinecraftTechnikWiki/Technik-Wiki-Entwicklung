
execute if entity @s[tag=!EtiAufS.p1Tausch] run tellraw @a[scores={PZAufS.p1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Vielen Dank das du mich gerettet hast! Möchtest du mir bitte meinen ","color":"yellow"},{"text":"[Apfel]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Gib Klaus 1x Apfel"} } },{"text":" wieder geben?","color":"yellow"}]

execute if entity @a[distance=..5,nbt={Inventory:[{id:"minecraft:apple",tag:{apfelfrucht:true} } ] } ] run data merge entity @s[tag=!EtiAufS.p1TauschAngebot,nbt={VillagerData:{profession:"minecraft:toolsmith"} }] {Offers:{Recipes:[{buy:{id:"minecraft:apple",Count:1b,tag:{apfelfrucht:true} },sell:{id:"minecraft:chest",Count:1b,tag:{auftrag-system:"vp1gegenstand",grabbox:true,CanPlaceOn:["minecraft:stone"],display:{Name:'{"text":"Klaus\'s Truhe"}',Lore:['"Die Truhe ist gefüllt"']},BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:cobblestone",Count:3b},{Slot:1b,id:"minecraft:smooth_stone_slab",Count:2b}]} } },maxUses:1,uses:0} ] } }
execute if entity @a[distance=..5,nbt={Inventory:[{id:"minecraft:apple",tag:{apfelfrucht:true} } ] } ] run tag @s[tag=!EtiAufS.p1TauschAngebot,nbt={VillagerData:{profession:"minecraft:toolsmith"} }] add EtiAufS.p1TauschAngebot

execute if entity @a[distance=..5,scores={PZAufS.p1Handel=1..}] run data merge entity @s[distance=..10,tag=EtiAufS.p1TauschAngebot] {Offers:{Recipes:[]}}
execute if entity @s[tag=EtiAufS.p1TauschAngebot,tag=!EtiAufS.p1Tausch] run tellraw @a[distance=..5,scores={PZAufS.p1Handel=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Vielen Dank! Wie schön wieder hier in meiner Lieblingshöhle zu sein, um gute Werkzeuge schmieden zu können.","color":"yellow"}]
execute if entity @s[tag=EtiAufS.p1TauschAngebot,tag=!EtiAufS.p1Tausch] run tag @a[distance=..5,scores={PZAufS.p1Handel=1..}] add EtiAufS.p1HandelGrabbox
execute if entity @a[distance=..5,scores={PZAufS.p1Handel=1..}] run tag @s[tag=!EtiAufS.p1Tausch] add EtiAufS.p1Tausch

execute if entity @s[tag=EtiAufS.p1Tausch] run tag @a[distance=..5,tag=EtiAufS.p1HandelGrabbox,nbt={Inventory:[{id:"minecraft:chest",tag:{grabbox:true} } ] } ] add EtiAufS.p1Grabbox
execute if entity @s[tag=EtiAufS.p1Tausch] run tag @a[distance=..5,tag=EtiAufS.p1HandelGrabbox,tag=EtiAufS.p1Grabbox] remove EtiAufS.p1HandelGrabbox

scoreboard players reset @a[distance=..5,scores={PZAufS.p1Handel=1..}] PZAufS.p1Handel
scoreboard players reset @a[distance=..5,scores={PZAufS.p1Reden=1..}] PZAufS.p1Reden
