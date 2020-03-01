
execute at @e[type=minecraft:armor_stand,tag=EtiAuto.1Erstellen] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Automobil","bold":true}',Tags:["EtiAuto.1Alle","EtiAuto.1Auto"],Passengers:[{id:"minecraft:minecart",Tags:["EtiAuto.1Alle","EtiAuto.1Sitz"]}]}
kill @e[type=minecraft:armor_stand,tag=EtiAuto.1Erstellen]

tag @a[tag=EtiAuto.1SitztImAuto,nbt=!{RootVehicle:{} }] remove EtiAuto.1SitztImAuto
clear @a[tag=EtiAuto.1Eingestiegen,tag=!EtiAuto.1SitztImAuto] #automobil:v1glasscheiben
scoreboard players set @a[tag=EtiAuto.1Eingestiegen,tag=!EtiAuto.1SitztImAuto] PZAuto.1Geschw -1
tag @a[tag=EtiAuto.1Eingestiegen,tag=!EtiAuto.1SitztImAuto] remove EtiAuto.1Eingestiegen

execute at @e[type=minecraft:minecart,tag=EtiAuto.1Sitz] run tag @p[distance=..1,tag=!EtiAuto.1SitztImAuto,nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["EtiAuto.1Auto"]} } }] add EtiAuto.1SitztImAuto

execute at @e[type=minecraft:minecart,tag=EtiAuto.1Sitz] run tellraw @p[distance=..1,tag=EtiAuto.1SitztImAuto,tag=!EtiAuto.1Eingestiegen] ["Automobil.1: ",{"text":"Der ausgewählte Slot bestimmt das Tempo und das Automobil kann mit den Tasten W, A, S und D gesteuert werden.","color":"gray","bold":true}]
execute at @e[type=minecraft:minecart,tag=EtiAuto.1Sitz] run tag @p[distance=..1,tag=EtiAuto.1SitztImAuto,tag=!EtiAuto.1Eingestiegen] add EtiAuto.1Eingestiegen

execute as @a[tag=EtiAuto.1SitztImAuto] run scoreboard players operation @s PZAuto.1Vergl = @s PZAuto.1Geschw
execute as @e[type=minecraft:armor_stand,tag=EtiAuto.1Auto] at @s store result score @s PZAuto.1Geschw as @p[distance=..2,tag=EtiAuto.1SitztImAuto] store result score @s PZAuto.1Geschw run data get entity @s SelectedItemSlot
execute as @a[tag=EtiAuto.1SitztImAuto] unless score @s PZAuto.1Geschw = @s PZAuto.1Vergl run function automobil:v1anzeige

execute as @e[type=minecraft:minecart,tag=EtiAuto.1Sitz] positioned as @s rotated as @p[distance=..1,tag=EtiAuto.1SitztImAuto] rotated ~90 0 run teleport @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=EtiAuto.1Auto,scores={PZAuto.1Geschw=1..8}] at @s if entity @p[distance=..1,tag=EtiAuto.1SitztImAuto,scores={PZAuto.1Geschw=1..8}] run function automobil:v1geschwindigkeit
