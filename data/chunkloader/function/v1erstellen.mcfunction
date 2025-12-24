
summon minecraft:item_frame ~ ~ ~ {Tags:["EtiChuLoa.1Alle","EtiChuLoa.1Chunk"],Fixed:true,Invisible:true,Facing:true}
particle minecraft:smoke ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0.02 150
playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 1 0.5
kill @s

tellraw @a[distance=..15,gamemode=creative] ["",{text:"Chunk loader successfully created"}]
