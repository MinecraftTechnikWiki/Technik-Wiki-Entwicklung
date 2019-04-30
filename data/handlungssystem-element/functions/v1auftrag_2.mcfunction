
execute if entity @s[tag=!EtiHanSE.1Tausch] run tellraw @a[scores={PZHanSE.1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Vielen Dank das du mich gerettet hast! Möchtest du mir bitte meinen ","color":"yellow"},{"text":" [1 Apfel] ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Gib Klaus 1x Apfel"} } },{"text":" wieder geben?","color":"yellow"}]

execute if entity @a[distance=..5,nbt={Inventory:[{id:"minecraft:apple",tag:{Apfelfrucht:true} } ] } ] run data merge entity @s[tag=!EtiHanSE.1TauschAngebot] {Offers:{Recipes:[{buy:{id:"minecraft:apple",Count:1b,tag:{Apfelfrucht:true} },sell:{id:"minecraft:chest",Count:1b,tag:{Grabbox:true,CanPlaceOn:["minecraft:stone"],display:{Name:"{\"text\":\"Klaus's Truhe\"}",Lore:["Handlungssystem-Element.1","Die Truhe ist gefüllt"]},BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:cobblestone",Count:3b},{Slot:1b,id:"minecraft:stone_slab",Count:2b}]} } },maxUses:1,uses:0} ] } }
tag @s[tag=!EtiHanSE.1TauschAngebot] add EtiHanSE.1TauschAngebot

execute if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] run data merge entity @s[distance=..10,tag=EtiHanSE.1TauschAngebot] {Offers:{Recipes:[]}}
execute if entity @s[tag=EtiHanSE.1TauschAngebot,tag=!EtiHanSE.1Tausch] run tellraw @a[distance=..5,scores={PZHanSE.1Handel=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Ich stehe dir nun als Handelspartner zur Verfügung","color":"yellow"}]
execute if entity @s[tag=EtiHanSE.1TauschAngebot,tag=!EtiHanSE.1Tausch] run tag @a[distance=..5,scores={PZHanSE.1Handel=1..}] add EtiHanSE.1HandelGrabbox
execute if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] run tag @s[tag=!EtiHanSE.1Tausch] add EtiHanSE.1Tausch

execute if entity @s[tag=EtiHanSE.1Tausch] run tag @a[distance=..5,tag=EtiHanSE.1HandelGrabbox,nbt={Inventory:[{id:"minecraft:chest",tag:{Grabbox:true}}]}] add EtiHanSE.1Grabbox
execute if entity @s[tag=EtiHanSE.1Tausch] run tag @a[distance=..5,tag=EtiHanSE.1HandelGrabbox,tag=EtiHanSE.1Grabbox] remove EtiHanSE.1HandelGrabbox

scoreboard players reset @a[distance=..5,scores={PZHanSE.1Handel=1..}] PZHanSE.1Handel
scoreboard players reset @a[distance=..5,scores={PZHanSE.1Reden=1..}] PZHanSE.1Reden
