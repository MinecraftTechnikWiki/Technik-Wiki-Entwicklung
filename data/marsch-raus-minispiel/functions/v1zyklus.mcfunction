
execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Erstellen] at @s run function marsch-raus-minispiel:v1erstellen

execute at @a[scores={PZMADNMS.1Drop=1..}] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{EigMADNMS.1Wuerfel:true} } },sort=nearest,limit=1] run function marsch-raus-minispiel:v1wuerfel_zahl

execute as @a[tag=EtiMADNMS.1Gewuerfelt] at @s as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,tag=EtiMADNMS.1Zahl,nbt={OnGround:true},sort=nearest,limit=1] run function marsch-raus-minispiel:v1wuerfel

execute as @a at @s as @e[distance=..2,type=minecraft:armor_stand,tag=EtiMADNMS.1Team,sort=nearest,limit=1] unless score @s PZMADNMS.1Team = @p PZMADNMS.1Team run function marsch-raus-minispiel:v1team

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Spielfeld] at @s store result score @s PZMADNMS.1Wert if entity @a[distance=..25,limit=4]
execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Spielfeld,scores={PZMADNMS.1Wert=1..4}] at @s at @a[tag=!EtiMADNMS.1Gewuerfelt,scores={PZMADNMS.1Team=1..4},nbt=!{Inventory:[{id:"minecraft:player_head",tag:{EigMADNMS.1Wuerfel:true}}]}] if score @s PZMADNMS.1Drop = @p PZMADNMS.1Team run give @p minecraft:player_head{EigMADNMS.1Alle:true,EigMADNMS.1Wuerfel:true,display:{Name:'{"text":"Würfel"}'},SkullOwner:{Id:[I;-1694415195,587548277,-1170283101,1380891497],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzgzMTEzOGMyMDYxMWQzMDJjNDIzZmEzMjM3MWE3NDNkMTc0MzdhMTg5NzNjMzUxOTczNDQ3MGE3YWJiNCJ9fX0="}]}}} 1

execute as @e[type=minecraft:shulker,tag=EtiMADNMS.1ZugAuswahl,nbt=!{Health:30.0f},limit=1] at @s positioned ~ ~-3 ~ run function marsch-raus-minispiel:v1spielzug
