
execute as @e[type=minecraft:armor_stand,tag=EtiRakete.1Erstellen] at @s run function rakete:v1erstellen

scoreboard players remove VarRakete.1Rueckwaertszaehler PZRakete.1Wert 1
execute if score VarRakete.1Rueckwaertszaehler PZRakete.1Wert matches ..-1 run scoreboard players set VarRakete.1Rueckwaertszaehler PZRakete.1Wert 20

tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["EtiRakete.1Rakete"]}}}] add EtiRakete.1Sitzt

scoreboard players set @a[tag=EtiRakete.1Sitzt,tag=!EtiRakete.1Hingesetzt] PZRakete.1Wert 10
execute at @a[tag=EtiRakete.1Sitzt,tag=!EtiRakete.1Hingesetzt] run scoreboard players set @e[type=minecraft:horse,tag=EtiRakete.1Rakete] PZRakete.1Wert 1
execute if score VarRakete.1Rueckwaertszaehler PZRakete.1Wert matches 0 as @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=1..}] run tellraw @s ["Rakete.1: ",{"text":"Start in ","bold":true},{"score":{"name":"@s","objective":"PZRakete.1Wert"},"color":"dark_purple","bold":true}]
execute if score VarRakete.1Rueckwaertszaehler PZRakete.1Wert matches 0 run scoreboard players remove @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=1..}] PZRakete.1Wert 1

execute if score VarRakete.1Rueckwaertszaehler PZRakete.1Wert matches 0 at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] run scoreboard players operation @e[distance=..1,type=minecraft:horse,tag=EtiRakete.1Rakete,scores={PZRakete.1Wert=..128},sort=nearest,limit=1] PZRakete.1Wert *= VarRakete.1ZWEI PZRakete.1Wert

execute at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] as @e[distance=..5,tag=EtiRakete.1Rakete] store result entity @s Motion[1] double 0.01 run scoreboard players get @e[distance=..1,type=minecraft:horse,tag=EtiRakete.1Rakete,sort=nearest,limit=1] PZRakete.1Wert

effect give @a[tag=EtiRakete.1Sitzt] minecraft:invisibility 1 0 true

execute if score VarRakete.1Rueckwaertszaehler PZRakete.1Wert matches 0 at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] as @e[distance=..5,tag=EtiRakete.1Rakete] run data merge entity @s {NoGravity:false}

execute at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] run particle minecraft:large_smoke ~ ~0.6 ~ 0 -0.5 0 1 0 force
execute at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] run particle minecraft:flame ~ ~0.6 ~ 0 -0.3 0 0.01 10 force
execute at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] run particle minecraft:poof ~ ~ ~ 0.6 -0.1 0.6 0.07 2 force

tag @a[tag=EtiRakete.1Sitzt,tag=!EtiRakete.1Hingesetzt] add EtiRakete.1Hingesetzt
tag @a[tag=!EtiRakete.1Sitzt,tag=EtiRakete.1Hingesetzt] remove EtiRakete.1Hingesetzt

tag @a[tag=EtiRakete.1Sitzt] remove EtiRakete.1Sitzt
