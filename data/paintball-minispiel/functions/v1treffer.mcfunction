
execute if score @e[distance=..0.2,type=minecraft:marker,tag=EtiPaintBMS.1Paintball,scores={PZPaintBMS.1Wert=1..},sort=nearest,limit=1] PZPaintBMS.1Wert = @s PZPaintBMS.1Wert run return 0

kill @e[distance=..1,type=minecraft:marker,tag=EtiPaintBMS.1Paintball,scores={PZPaintBMS.1Wert=1..},sort=nearest,limit=1]

clear @s

item replace entity @s[scores={PZPaintBMS.1Wert=1}] armor.head with minecraft:leather_helmet[minecraft:enchantments={levels:{"minecraft:binding_curse":1} },minecraft:custom_data={EigPaintBMS.1Alle:true},minecraft:dyed_color={rgb:16711680}]
item replace entity @s[scores={PZPaintBMS.1Wert=2}] armor.head with minecraft:leather_helmet[minecraft:enchantments={levels:{"minecraft:binding_curse":1} },minecraft:custom_data={EigPaintBMS.1Alle:true},minecraft:dyed_color={rgb:255}]

execute if entity @s[team=!TMPaintBMS.1Lobby,scores={PZPaintBMS.1Versuch=1..}] run particle minecraft:angry_villager ~-0.2 ~ ~-0.2 0.2 1 0.2 2 10 force @a[distance=..10]

scoreboard players remove @s[team=!TMPaintBMS.1Lobby,scores={PZPaintBMS.1Versuch=1..}] PZPaintBMS.1Versuch 1

execute if entity @s[scores={PZPaintBMS.1Versuch=0}] run return run function paintball-minispiel:v1verloren

tellraw @s ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"text":"Du hast noch ","color":"yellow","bold":true},{"score":{"name":"@s","objective":"PZPaintBMS.1Versuch"},"color":"gold","bold":true},{"text":" verbleibende Versuche.","color":"yellow"}]

tag @s add EtiPaintBMS.1Selbst

tellraw @a[tag=EtiPaintBMS.1Spielen,tag=!EtiPaintBMS.1Selbst] ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" wurde von einem Ball getroffen!","color":"yellow","bold":true}]

execute as @e[type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,sort=nearest,limit=2] if score @s PZPaintBMS.1Wert = @p[tag=EtiPaintBMS.1Selbst] PZPaintBMS.1Wert run tag @s add EtiPaintBMS.1Teleport

$execute at @e[type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,tag=EtiPaintBMS.1Teleport,sort=nearest,limit=1] run spreadplayers ~ ~ 1 3 under $(Y) false @s

tag @e[type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,tag=EtiPaintBMS.1Teleport] remove EtiPaintBMS.1Teleport

tag @s remove EtiPaintBMS.1Selbst
