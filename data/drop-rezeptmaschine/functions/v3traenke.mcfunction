
execute if entity @s[scores={PZDrRezM.3Drop=1}] store success score VarDrRezM.3Brauen PZDrRezM.3Drop as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Trank] run data modify entity @s Item.tag{Potion:"minecraft:night_vision"} set value {Potion:"minecraft:water",CustomPotionColor:255255255,CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:800}],display:{Name:'{"text":"Trank der Blindheit","italic":false}'} }

execute if entity @s[scores={PZDrRezM.3Drop=1}] if score VarDrRezM.3Brauen PZDrRezM.3Drop matches 0 store success score VarDrRezM.3Brauen PZDrRezM.3Drop as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Trank] run data modify entity @s Item.tag{Potion:"minecraft:strength"}.Potion set value "minecraft:weakness"

execute if entity @s[scores={PZDrRezM.3Drop=1}] if score VarDrRezM.3Brauen PZDrRezM.3Drop matches 0 store success score VarDrRezM.3Brauen PZDrRezM.3Drop as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Trank] run data modify entity @s Item.tag{Potion:"minecraft:luck"} set value {Potion:"minecraft:water",CustomPotionColor:999999999,CustomPotionEffects:[{Id:27b,Amplifier:0b,Duration:800}],display:{Name:'{"text":"Trank des Pechs","italic":false}'} }

execute if entity @s[scores={PZDrRezM.3Drop=1}] if score VarDrRezM.3Brauen PZDrRezM.3Drop matches 0 store success score VarDrRezM.3Brauen PZDrRezM.3Drop as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Trank] run data modify entity @s Item.tag{Potion:"minecraft:regeneration"}.Potion set value "minecraft:poison"
execute if entity @s[scores={PZDrRezM.3Drop=1}] if score VarDrRezM.3Brauen PZDrRezM.3Drop matches 0 store success score VarDrRezM.3Brauen PZDrRezM.3Drop as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Trank] run data modify entity @s Item.tag{Potion:"minecraft:swiftness"}.Potion set value "minecraft:slowness"

execute if entity @s[scores={PZDrRezM.3Drop=2}] store success score VarDrRezM.3Brauen PZDrRezM.3Drop as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Trank] run data modify entity @s Item{id:"minecraft:potion"}.id set value "minecraft:splash_potion"

execute if entity @s[scores={PZDrRezM.3Drop=3}] store success score VarDrRezM.3Brauen PZDrRezM.3Drop as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Trank] run data modify entity @s Item{id:"minecraft:splash_potion"}.id set value "minecraft:lingering_potion"

execute if score VarDrRezM.3Brauen PZDrRezM.3Drop matches 1 run playsound minecraft:block.brewing_stand.brew master @a[distance=..15] ~ ~ ~ 1 1 0.1

#execute if entity @s[scores={PZDrRezM.3Fort=-1}] run summon minecraft:item ~ ~ ~ {PickupDelay:32767s,Item:{id:"minecraft:cooked_cod",Count:1b},Tags:["EtiDrRezM.3Alle","EtiDrRezM.3Material"],Motion:[0.0d,0.3d,0.0d]}

#execute if entity @s[scores={PZDrRezM.3Drop=2,PZDrRezM.3Fort=-1}] run data merge entity @e[type=minecraft:item,tag=EtiDrRezM.3Material,sort=nearest,limit=1] {Item:{id:"minecraft:cooked_porkchop"}}
#execute if entity @s[scores={PZDrRezM.3Drop=3,PZDrRezM.3Fort=-1}] run data merge entity @e[type=minecraft:item,tag=EtiDrRezM.3Material,sort=nearest,limit=1] {Item:{id:"minecraft:cooked_mutton"}}
#execute if entity @s[scores={PZDrRezM.3Drop=4,PZDrRezM.3Fort=-1}] run data merge entity @e[type=minecraft:item,tag=EtiDrRezM.3Material,sort=nearest,limit=1] {Item:{id:"minecraft:baked_potato"}}

#execute if entity @s[scores={PZDrRezM.3Fort=-1}] run data merge entity @e[type=minecraft:item,tag=EtiDrRezM.3Material,sort=nearest,limit=1] {PickupDelay:2s}
#execute if entity @s[scores={PZDrRezM.3Fort=-1}] run tag @e[type=minecraft:item,tag=EtiDrRezM.3Material,sort=nearest,limit=1] remove EtiDrRezM.3Material

#execute as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=1}] at @s if entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=-1},sort=nearest,limit=1] if entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=-4},sort=nearest,limit=1] run tag @s add EtiDrRezM.3Rezept1

#scoreboard players add @e[type=minecraft:item,tag=EtiDrRezM.3Rezept1] PZDrRezM.3Fort 1

#execute at @e[type=minecraft:item,tag=EtiDrRezM.3Rezept1,scores={PZDrRezM.3Fort=300..}] store result score VarDrRezM.3Stapel PZDrRezM.3Drop run data get entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=2},sort=nearest,limit=1] Item.Count
#execute at @e[type=minecraft:item,tag=EtiDrRezM.3Rezept1,scores={PZDrRezM.3Fort=300..}] store result entity @e[distance=..1,type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=2},sort=nearest,limit=1] Item.Count byte 1 run scoreboard players remove VarDrRezM.3Stapel PZDrRezM.3Drop 1

#execute as @e[type=minecraft:item,tag=EtiDrRezM.3Rezept1] run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:night_vision"} },Motion:[0.0d,0.3d,0.0d]}
#execute at @e[type=minecraft:item,tag=EtiDrRezM.3Rezept1] run playsound minecraft:block.brewing_stand.brew master @a[distance=..15] ~ ~ ~ 1 1 0.1
#scoreboard players set @e[type=minecraft:item,tag=EtiDrRezM.3Rezept1] PZDrRezM.3Drop -1
#tag @e[type=minecraft:item,tag=EtiDrRezM.3Rezept1] remove EtiDrRezM.3Rezept1
