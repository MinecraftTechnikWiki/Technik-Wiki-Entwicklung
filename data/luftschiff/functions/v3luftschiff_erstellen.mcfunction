
setblock ~ ~24 ~ minecraft:oak_planks replace

data merge entity @e[distance=..3,type=item,nbt={Item:{tag:{Luftschiff.3:true}}},sort=nearest,limit=1] {PickupDelay:0s}
teleport @e[distance=..3,type=item,nbt={Item:{tag:{Luftschiff.3:true}}},sort=nearest,limit=1] ~ ~25 ~
teleport @s ~ ~25 ~

summon minecraft:armor_stand ~ ~25 ~ {Small:true,NoGravity:true,Invisible:true,Tags:["EtiLuftS.3Alle","EtiLuftS.3Luftschiff"]}

tag @e[distance=..1,tag=EtiLuftS.3Andockplatz,tag=!EtiLuftS.3PilotVorhanden] add EtiLuftS.3PilotVorhanden
