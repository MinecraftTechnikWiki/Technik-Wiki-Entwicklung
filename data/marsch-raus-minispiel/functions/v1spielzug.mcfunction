
tag @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] add EtiMADNMS.1FigurBewegen
scoreboard players operation VarMADNMS.1Farbe PZMADNMS.1Team = @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1FigurBewegen,sort=nearest,limit=1] PZMADNMS.1Team

scoreboard players set VarMADNMS.1Anzahl PZMADNMS.1Team 0
execute store result score VarMADNMS.1Anzahl PZMADNMS.1Team as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus,sort=nearest,limit=1] run tag @s add EtiMADNMS.1FigurImHaus

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Startfeld,tag=EtiMADNMS.1Team] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s if score @s PZMADNMS.1Team = @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] PZMADNMS.1Team run tag @s add EtiMADNMS.1StartfeldBelegt

execute if score VarMADNMS.1Anzahl PZMADNMS.1Team matches 1.. if entity @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,scores={PZMADNMS.1Drop=6},sort=nearest,limit=1] unless entity @e[type=minecraft:armor_stand,tag=EtiMADNMS.1StartfeldBelegt] run teleport @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1FigurBewegen,tag=EtiMADNMS.1FigurImHaus,sort=nearest,limit=1] @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Startfeld,tag=EtiMADNMS.1Team,sort=nearest,limit=1]

execute if score VarMADNMS.1Anzahl PZMADNMS.1Team matches 0..3 run scoreboard players operation @e[distance=..3,type=minecraft:armor_stand,tag=EtiMADNMS.1FigurBewegen,sort=nearest,limit=1] PZMADNMS.1Drop = @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,sort=nearest,limit=1] PZMADNMS.1Drop

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1FigurBewegen,scores={PZMADNMS.1Drop=1..},sort=nearest,limit=1] at @s run function marsch-raus-minispiel:v1spielzug_schritt

execute if entity @e[type=minecraft:armor_stand,tag=EtiMADNMS.1SchrittAbrechen] run say Debug: Schritt abgebrochen

#execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1FigurBewegen,sort=nearest,limit=1] at @s unless score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] if score @s PZMADNMS.1Team = @e[distance=0,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus,limit=1] PZMADNMS.1Team unless entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] run teleport @s ~ ~ ~

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1FigurBewegen,sort=nearest,limit=1] at @s as @e[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=!EtiMADNMS.1FigurBewegen,sort=nearest,limit=1] unless score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] if score @s PZMADNMS.1Team = @e[distance=0,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus,limit=1] PZMADNMS.1Team unless entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] run teleport @s ~ ~ ~

#unless score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] if score @s PZMADNMS.1Team = @e[distance=0,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus,limit=1] PZMADNMS.1Team unless entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] run teleport @s ~ ~ ~

#execute if entity @s[tag=!EtiMADNMS.1SchrittAbrechen,scores={PZMADNMS.1Drop=-1}] as @e[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] unless score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] if score @s PZMADNMS.1Team = @e[distance=0,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus,limit=1] PZMADNMS.1Team unless entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,sort=nearest,limit=1] run teleport @s ~ ~ ~

kill @e[tag=EtiMADNMS.1ZugAuswahl]
kill @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel]

tag @e[type=minecraft:armor_stand,tag=EtiMADNMS.1FigurImHaus] remove EtiMADNMS.1FigurImHaus
tag @e[type=minecraft:armor_stand,tag=EtiMADNMS.1FigurBewegen] remove EtiMADNMS.1FigurBewegen
tag @e[type=minecraft:armor_stand,tag=EtiMADNMS.1StartfeldBelegt] remove EtiMADNMS.1StartfeldBelegt
tag @e[type=minecraft:armor_stand,tag=EtiMADNMS.1SchrittAbrechen] remove EtiMADNMS.1SchrittAbrechen
