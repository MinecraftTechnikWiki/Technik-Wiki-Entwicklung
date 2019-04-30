
tag @a[distance=..5,tag=!EtiHanSE.1Rosenstrauch,nbt={Inventory:[{id:"minecraft:rose_bush"} ] } ] add EtiHanSE.1Rosenstrauch

execute if entity @s[tag=!EtiHanSE.1Tausch] run tellraw @a[distance=..3,tag=!EtiHanSE.1Rosenstrauch,tag=EtiHanSE.1HolRalfRosenstrauch,scores={PZHanSE.1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Nanu, was ist los? Willst du mir nicht die Rosensträucher bringen?","color":"yellow"} ]


execute if entity @s[tag=!EtiHanSE.1Tausch] run tellraw @a[distance=..3,tag=!EtiHanSE.1Rosenstrauch,tag=!EtiHanSE.1HolRalfRosenstrauch,scores={PZHanSE.1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Siehst du dort hinten den wunderschönen Rosenstrauch? Holst du mir","color":"yellow"},{"text":" [15 Rosensträucher] ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Hole Ralf 15x Rosenstrauch"} } },{"text":"für meinen Garten.","color":"yellow"} ]
execute if entity @s[tag=!EtiHanSE.1Tausch] run give @a[distance=..3,tag=!EtiHanSE.1Rosenstrauch,tag=!EtiHanSE.1HolRalfRosenstrauch,scores={PZHanSE.1Reden=1..}] minecraft:shears{CanDestroy:["minecraft:rose_bush"],display:{Lore:["Handlungssystem-Element.1","Pflücke mit der Schere","alle 15 Rosensträucher"]}}
execute if entity @s[tag=!EtiHanSE.1Tausch] run tag @a[distance=..3,tag=!EtiHanSE.1Rosenstrauch,tag=!EtiHanSE.1HolRalfRosenstrauch,scores={PZHanSE.1Reden=1..}] add EtiHanSE.1HolRalfRosenstrauch

execute if entity @s[tag=!EtiHanSE.1AuftragAbgeschlossen] run tellraw @a[distance=..3,tag=EtiHanSE.1Rosenstrauch,scores={PZHanSE.1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Prima! Nun gebe ich dir Im Handelsmenü als Gegenleistung eine Waffenbox.","color":"yellow"} ]
execute if entity @s[tag=!EtiHanSE.1AuftragAbgeschlossen] if entity @a[distance=..3,tag=EtiHanSE.1Rosenstrauch,scores={PZHanSE.1Reden=1..}] run data merge entity @s {Offers:{Recipes:[{buy:{id:"minecraft:rose_bush",Count:15b},buyB:{id:"minecraft:shears",Count:1b,tag:{Damage:15}},sell:{id:"minecraft:chest",Count:1b,tag:{Waffenbox:true,CanPlaceOn:["minecraft:grass_block"],display:{Name:"{\"text\":\"Waffenbox\"}",Lore:["Die Truhe ist gefüllt"]},BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:chainmail_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s} ] } },{Slot:1b,id:"minecraft:chainmail_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s} ] } },{Slot:2b,id:"minecraft:chainmail_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s} ] } },{Slot:3b,id:"minecraft:chainmail_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s} ] } },{Slot:4b,id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s} ] } },{Slot:5b,id:"minecraft:horse_spawn_egg",Count:1b,tag:{CanPlaceOn:["minecraft:grass_block"],EntityTag:{Tame:true,Age:0,Tags:["EtiHanSE.1Alle"]} } },{Slot:6b,id:"minecraft:saddle",Count:1b},{Slot:7b,id:"minecraft:iron_horse_armor",Count:1b} ] } } },maxUses:1,uses:0} ] } }
execute if entity @s[tag=!EtiHanSE.1AuftragAbgeschlossen] if entity @a[distance=..3,tag=EtiHanSE.1Rosenstrauch,scores={PZHanSE.1Reden=1..}] run tag @s add EtiHanSE.1AuftragAbgeschlossen


execute if entity @s[tag=!EtiHanSE.1Tausch] run tellraw @a[distance=..5,scores={PZHanSE.1Handel=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Hier hast du die Waffenbox.","color":"gray"} ]
execute if entity @s[tag=!EtiHanSE.1Tausch] run tag @a[distance=..5,scores={PZHanSE.1Handel=1..}] add EtiHanSE.1HandelWaffenbox
execute if entity @s[tag=!EtiHanSE.1Tausch] run tag @a[distance=..5,scores={PZHanSE.1Handel=1..}] remove EtiHanSE.1HolRalfRosenstrauch
execute if entity @s[tag=!EtiHanSE.1Tausch] if entity @a[distance=..5,scores={PZHanSE.1Handel=1..}] run tag @s add EtiHanSE.1Tausch

execute if entity @s[tag=EtiHanSE.1Tausch] run tag @a[distance=..5,tag=EtiHanSE.1HandelWaffenbox,nbt={Inventory:[{id:"minecraft:chest",tag:{Waffenbox:true}}]}] add EtiHanSE.1Waffenbox
execute if entity @s[tag=EtiHanSE.1Tausch] run tag @a[distance=..5,tag=EtiHanSE.1HandelWaffenbox,tag=EtiHanSE.1Waffenbox] remove EtiHanSE.1HandelWaffenbox

execute at @a run data merge entity @s[distance=..5,tag=EtiHanSE.1Tausch] {Offers:{Recipes:[] } }

execute if entity @s[tag=EtiHanSE.1Tausch,tag=EtiHanSE.1AuftragAbgeschlossen] run tellraw @a[distance=..3,scores={PZHanSE.1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Wenn man manchmal die Leute beobachtet, sieht man, dass viele sehr hilfsbereit sind. Findest du nicht auch?","color":"yellow"} ]

tag @a[tag=EtiHanSE.1Rosenstrauch,nbt=!{Inventory:[{id:"minecraft:rose_bush"} ] } ] remove EtiHanSE.1Rosenstrauch

scoreboard players reset @a[distance=..5,scores={PZHanSE.1Reden=1..}] PZHanSE.1Reden
scoreboard players reset @a[distance=..5,scores={PZHanSE.1Handel=1..}] PZHanSE.1Handel
