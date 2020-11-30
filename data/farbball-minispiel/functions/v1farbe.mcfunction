
execute if entity @s[tag=PaintballTeamRot] as @a[distance=..3,team=!PBTeamRot] at @s if block ~ ~-1 ~ minecraft:red_concrete run tag @s add EtiFarbB.1Farbe
execute if entity @s[tag=PaintballTeamRot] run tellraw @a[distance=..3,tag=EtiFarbB.1Farbe] ["",{"text":"[Paintball]","color":"gold"},{"text":" Du bist jetzt im ","color":"dark_green"},{"text":"roten Team","color":"dark_red"},{"text":".","color":"dark_green"}]
execute if entity @s[tag=PaintballTeamRot] run replaceitem entity @a[distance=..3,tag=EtiFarbB.1Farbe] armor.head minecraft:leather_helmet{AttributeModifiers:[{AttributeName:"generic.armor",Amount:0f,Name:"Paintball",Operation:0,UUIDLeast:1,UUIDMost:5,Slot:"head"}],display:{color:11141120,Name:""},Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:7}
execute if entity @s[tag=PaintballTeamRot] run team join PBTeamRot @a[distance=..3,tag=EtiFarbB.1Farbe]
execute if entity @s[tag=PaintballTeamRot] run tag @a[distance=..3,tag=EtiFarbB.1Farbe] add PaintballWartebereich
tag @a[tag=EtiFarbB.1Farbe] remove EtiFarbB.1Farbe

execute if entity @s[tag=PaintballTeamBlau] as @a[distance=..3,team=!PBTeamBlau] at @s if block ~ ~-1 ~ minecraft:blue_concrete run tag @s add EtiFarbB.1Farbe
execute if entity @s[tag=PaintballTeamBlau] run tellraw @a[distance=..3,tag=EtiFarbB.1Farbe] ["",{"text":"[Paintball]","color":"gold"},{"text":" Du bist jetzt im ","color":"dark_green"},{"text":"blauen Team","color":"dark_blue"},{"text":".","color":"dark_green"}]
execute if entity @s[tag=PaintballTeamBlau] run replaceitem entity @a[distance=..3,tag=EtiFarbB.1Farbe] armor.head minecraft:leather_helmet{AttributeModifiers:[{AttributeName:"generic.armor",Amount:0f,Name:"Paintball",Operation:0,UUIDLeast:1,UUIDMost:5,Slot:"head"}],display:{color:170,Name:""},Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:7}
execute if entity @s[tag=PaintballTeamBlau] run team join PBTeamBlau @a[distance=..3,tag=EtiFarbB.1Farbe]
execute if entity @s[tag=PaintballTeamBlau] run tag @a[distance=..3,tag=EtiFarbB.1Farbe] add PaintballWartebereich
tag @a[tag=EtiFarbB.1Farbe] remove EtiFarbB.1Farbe

execute if entity @s[tag=PaintballVerlassen] as @a[distance=..3,team=!] at @s if block ~ ~-1 ~ minecraft:white_concrete run tag @s add EtiFarbB.1Farbe
execute if entity @s[tag=PaintballVerlassen] run tellraw @a[distance=..3,tag=EtiFarbB.1Farbe] ["",{"text":"[Paintball]","color":"gold"},{"text":" Du hast dein Team verlassen.","color":"dark_green"}]
execute if entity @s[tag=PaintballVerlassen] run tag @a[distance=..3,tag=EtiFarbB.1Farbe,tag=PaintballWartebereich] remove PaintballWartebereich
execute if entity @s[tag=PaintballVerlassen] run replaceitem entity @a[distance=..3,tag=EtiFarbB.1Farbe] armor.head minecraft:air
execute if entity @s[tag=PaintballVerlassen] run team leave @a[distance=..3,tag=EtiFarbB.1Farbe]
tag @a[tag=EtiFarbB.1Farbe] remove EtiFarbB.1Farbe
