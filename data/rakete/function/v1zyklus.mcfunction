
execute as @e[type=minecraft:armor_stand,tag=EtiRakete.1Bauwerk] at @s run function rakete:v1bauwerk

execute as @e[type=minecraft:armor_stand,tag=EtiRakete.1Erstellen] at @s run function rakete:v1erstellen

scoreboard players remove VarRakete.1Zaehler PZRakete.1Wert 1
execute if score VarRakete.1Zaehler PZRakete.1Wert matches ..-1 run scoreboard players set VarRakete.1Zaehler PZRakete.1Wert 20

tag @a[nbt={RootVehicle:{Entity:{Tags:["EtiRakete.1Rakete"]} } }] add EtiRakete.1Sitzt

execute at @a[tag=EtiRakete.1Sitzt] run bossbar set rakete:v1zaehler players @a[distance=..50]

scoreboard players set @a[tag=EtiRakete.1Sitzt,tag=!EtiRakete.1Hingesetzt] PZRakete.1Wert 10
execute at @a[tag=EtiRakete.1Sitzt,tag=!EtiRakete.1Hingesetzt] run scoreboard players set @e[type=minecraft:horse,tag=EtiRakete.1Rakete] PZRakete.1Wert 1
execute if score VarRakete.1Zaehler PZRakete.1Wert matches 0 as @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=1..}] run title @s actionbar ["",{text:"Start in ",color:"gray",bold:true},{score:{name:"@s",objective:"PZRakete.1Wert"},color:"dark_purple",bold:true}]
execute if score VarRakete.1Zaehler PZRakete.1Wert matches 0 run scoreboard players remove @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=1..}] PZRakete.1Wert 1

execute if score VarRakete.1Zaehler PZRakete.1Wert matches 0 at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] run scoreboard players operation @n[distance=..1,type=minecraft:horse,tag=EtiRakete.1Rakete,scores={PZRakete.1Wert=..128}] PZRakete.1Wert *= KonstRakete.1ZWEI PZRakete.1Wert

execute at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] as @e[distance=..5,tag=EtiRakete.1Rakete] store result entity @s Motion[1] double 0.01 run scoreboard players get @n[distance=..1,type=minecraft:horse,tag=EtiRakete.1Rakete] PZRakete.1Wert

effect give @a[tag=EtiRakete.1Sitzt] minecraft:invisibility 1 0 true

execute if score VarRakete.1Zaehler PZRakete.1Wert matches 0 at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] as @e[distance=..5,tag=EtiRakete.1Rakete] run data merge entity @s {NoGravity:false}

execute at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] positioned ~ ~-1 ~ run particle minecraft:large_smoke ~ ~0.6 ~ 0 -0.5 0 1 0 force
execute at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] positioned ~ ~-1 ~ run particle minecraft:flame ~ ~0.6 ~ 0 -0.3 0 0.01 10 force
execute at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] positioned ~ ~-1 ~ run particle minecraft:poof ~ ~ ~ 0.6 -0.1 0.6 0.07 2 force

execute if entity @p[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] run scoreboard players add VarRakete.1Tick PZRakete.1Wert 1

execute if score VarRakete.1Tick PZRakete.1Wert matches 20.. at @a[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] run playsound minecraft:entity.blaze.shoot master @a[distance=..100] ~ ~ ~ 1 1 1
execute if score VarRakete.1Tick PZRakete.1Wert matches 20.. store result bossbar rakete:v1zaehler value run scoreboard players add VarRakete.1Zeit PZRakete.1Wert 1
execute if score VarRakete.1Tick PZRakete.1Wert matches 20.. run bossbar set rakete:v1zaehler name ["",{text:"Zeit == ",bold:true},{score:{name:"VarRakete.1Zeit",objective:"PZRakete.1Wert"},color:"dark_purple",bold:true}]
execute if score VarRakete.1Tick PZRakete.1Wert matches 20.. run scoreboard players set VarRakete.1Tick PZRakete.1Wert 0

execute unless entity @p[tag=EtiRakete.1Sitzt,scores={PZRakete.1Wert=0}] run scoreboard players set VarRakete.1Zeit PZRakete.1Wert 0

execute at @a[tag=!EtiRakete.1Sitzt,tag=EtiRakete.1Hingesetzt] at @e[distance=..5,type=minecraft:horse,tag=EtiRakete.1Rakete] run particle minecraft:explosion ~ ~ ~ 0 0 0 0.1 10 force @a[distance=..100]
execute at @a[tag=!EtiRakete.1Sitzt,tag=EtiRakete.1Hingesetzt] at @e[distance=..5,type=minecraft:horse,tag=EtiRakete.1Rakete] run playsound minecraft:entity.generic.explode master @a[distance=..100] ~ ~ ~ 1 1 1
execute at @a[tag=!EtiRakete.1Sitzt,tag=EtiRakete.1Hingesetzt] at @e[distance=..5,type=minecraft:horse,tag=EtiRakete.1Rakete] run kill @e[distance=..5,tag=EtiRakete.1Rakete]

tag @a[tag=EtiRakete.1Sitzt,tag=!EtiRakete.1Hingesetzt] add EtiRakete.1Hingesetzt
tag @a[tag=!EtiRakete.1Sitzt,tag=EtiRakete.1Hingesetzt] remove EtiRakete.1Hingesetzt

tag @a[tag=EtiRakete.1Sitzt] remove EtiRakete.1Sitzt
