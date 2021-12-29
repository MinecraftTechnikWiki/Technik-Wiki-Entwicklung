
execute if entity @s[tag=EtiFarBMi.1Rot] as @a[distance=..3,team=!TMFarBMi.1Rot] at @s if block ~ ~-1 ~ minecraft:red_concrete run tag @s add EtiFarBMi.1Farbe
execute if entity @s[tag=EtiFarBMi.1Rot] run tellraw @a[distance=..3,tag=EtiFarBMi.1Farbe] ["",{"text":"[Farbball]","color":"gold"},{"text":" Du bist jetzt im ","color":"dark_green"},{"text":"roten Team","color":"dark_red"},{"text":".","color":"dark_green"}]
execute if entity @s[tag=EtiFarBMi.1Rot] run item replace entity @a[distance=..3,tag=EtiFarBMi.1Farbe] armor.head with minecraft:leather_helmet{EigFarBMi.1Alle:true,AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0f,Name:"Farbball",Operation:0,UUID:[1,0,0,0],Slot:"head"}],display:{color:11141120,Name:""},Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:7}
execute if entity @s[tag=EtiFarBMi.1Rot] run team join TMFarBMi.1Rot @a[distance=..3,tag=EtiFarBMi.1Farbe]
execute if entity @s[tag=EtiFarBMi.1Rot] run tag @a[distance=..3,tag=EtiFarBMi.1Farbe] add EtiFarBMi.1Warten
tag @a[tag=EtiFarBMi.1Farbe] remove EtiFarBMi.1Farbe

execute if entity @s[tag=EtiFarBMi.1Blau] as @a[distance=..3,team=!TMFarBMi.1Blau] at @s if block ~ ~-1 ~ minecraft:blue_concrete run tag @s add EtiFarBMi.1Farbe
execute if entity @s[tag=EtiFarBMi.1Blau] run tellraw @a[distance=..3,tag=EtiFarBMi.1Farbe] ["",{"text":"[Farbball]","color":"gold"},{"text":" Du bist jetzt im ","color":"dark_green"},{"text":"blauen Team","color":"dark_blue"},{"text":".","color":"dark_green"}]
execute if entity @s[tag=EtiFarBMi.1Blau] run item replace entity @a[distance=..3,tag=EtiFarBMi.1Farbe] armor.head with minecraft:leather_helmet{EigFarBMi.1Alle:true,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0f,Name:"Farbball",Operation:0,UUID:[1,0,0,0],Slot:"head"}],display:{color:170,Name:""},Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:7}
execute if entity @s[tag=EtiFarBMi.1Blau] run team join TMFarBMi.1Blau @a[distance=..3,tag=EtiFarBMi.1Farbe]
execute if entity @s[tag=EtiFarBMi.1Blau] run tag @a[distance=..3,tag=EtiFarBMi.1Farbe] add EtiFarBMi.1Warten
tag @a[tag=EtiFarBMi.1Farbe] remove EtiFarBMi.1Farbe

execute if entity @s[tag=EtiFarBMi.1Verlassen] as @a[distance=..3,team=!] at @s if block ~ ~-1 ~ minecraft:white_concrete run tag @s add EtiFarBMi.1Farbe
execute if entity @s[tag=EtiFarBMi.1Verlassen] run tellraw @a[distance=..3,tag=EtiFarBMi.1Farbe] ["",{"text":"[Farbball]","color":"gold"},{"text":" Du hast dein Team verlassen.","color":"dark_green"}]
execute if entity @s[tag=EtiFarBMi.1Verlassen] run tag @a[distance=..3,tag=EtiFarBMi.1Farbe,tag=EtiFarBMi.1Warten] remove EtiFarBMi.1Warten
execute if entity @s[tag=EtiFarBMi.1Verlassen] run item replace entity @a[distance=..3,tag=EtiFarBMi.1Farbe] armor.head with minecraft:air
execute if entity @s[tag=EtiFarBMi.1Verlassen] run team leave @a[distance=..3,tag=EtiFarBMi.1Farbe]
tag @a[tag=EtiFarBMi.1Farbe] remove EtiFarBMi.1Farbe
