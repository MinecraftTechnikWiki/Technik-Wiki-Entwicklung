
tellraw @a[distance=..50] ["Marsch-Raus-Minispiel.1:\n",{"text":"gewürfelt wurde die ","bold":true},{"score":{"name":"@s","objective":"PZMADNMS.1Drop"},"color":"dark_purple","bold":true}]

scoreboard players operation VarMADNMS.1Farbe PZMADNMS.1Team = @p PZMADNMS.1Team

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s run summon minecraft:armor_stand ~ ~2 ~ {Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1ZugAuswahl","EtiMADNMS.1BodenZugAuswahl"],Passengers:[{id:"minecraft:falling_block",NoGravity:true,Time:-2147483648,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1ZugAuswahl"],BlockState:{Name:"minecraft:lime_concrete"} },{id:"minecraft:shulker",NoAI:true,Silent:true,Color:5b,DeathLootTable:"minecraft:empty",CustomNameVisible:true,CustomName:'{"text":"Spielzug","color":"green","bold":true}',Tags:["EtiMADNMS.1Alle","EtiMADNMS.1ZugAuswahl","EtiMADNMS.1Leuchten"]}]}

scoreboard players set VarMADNMS.1StartfeldBlockiert PZMADNMS.1Team 0
execute if score @s PZMADNMS.1Drop matches 6 as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Startfeld,tag=EtiMADNMS.1Team] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s if score @s PZMADNMS.1Team = @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] PZMADNMS.1Team as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s store success score VarMADNMS.1StartfeldBlockiert PZMADNMS.1Team run kill @e[distance=..3,tag=EtiMADNMS.1ZugAuswahl]

#execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Startfeld,tag=EtiMADNMS.1Team] if score @s PZMADNMS.1Team = @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] PZMADNMS.1Team at @s if score @s PZMADNMS.1Team = @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] PZMADNMS.1Team as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1BodenZugAuswahl] at @s if entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] run kill @e[distance=..3,tag=EtiMADNMS.1ZugAuswahl]

scoreboard players set VarMADNMS.1ImHaus PZMADNMS.1Team 0
execute if score @s PZMADNMS.1Drop matches 6 as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s if entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur] run scoreboard players add VarMADNMS.1ImHaus PZMADNMS.1Team 1

execute if score VarMADNMS.1ImHaus PZMADNMS.1Team matches 1.. unless score VarMADNMS.1StartfeldBlockiert PZMADNMS.1Team matches 1 if score @s PZMADNMS.1Drop matches 6 as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s unless entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] run kill @e[distance=..3,tag=EtiMADNMS.1ZugAuswahl,sort=nearest,limit=3]

execute if score @s PZMADNMS.1Drop matches 1..5 as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s run kill @e[distance=..3,tag=EtiMADNMS.1ZugAuswahl,sort=nearest,limit=3]

execute if score @s PZMADNMS.1Drop matches 1..5 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Spielfeld] PZMADNMS.1Drop 1
execute if score @s PZMADNMS.1Drop matches 1..5 as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Spielfeld] if score @s PZMADNMS.1Drop > @s PZMADNMS.1Wert run scoreboard players set @s PZMADNMS.1Drop 1

tag @p[tag=EtiMADNMS.1Gewuerfelt] remove EtiMADNMS.1Gewuerfelt
tag @s remove EtiMADNMS.1Zahl
