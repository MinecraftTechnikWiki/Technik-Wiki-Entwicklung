
kill @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel]

scoreboard players set @p PZMADNMS.1Drop 0
tag @p add EtiMADNMS.1Gewuerfelt

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Wuerfel","EtiMADNMS.1Zahl"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:custom_data":{EigMADNMS.1Alle:true,EigMADNMS.1Wuerfel:true},"minecraft:custom_name":'{"text":"Würfel"}',"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWZlMjY3MWU3ZTFhNzUzODI3Y2M0ZTMyZTUwNmYyOWFhMjM4ZTQ5NmFjNWE1NTcyNmFjNWRjZGM5ZDMifX19"}]} }}]}

execute store result score @s PZMADNMS.1Drop run random value 1..6
#data get entity @s UUID[0]
#scoreboard players operation @s PZMADNMS.1Drop %= KonstMADNMS.1Wuerfel PZMADNMS.1Drop
#execute store result score @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,sort=nearest,limit=1] PZMADNMS.1Drop run scoreboard players add @s PZMADNMS.1Drop 1

#execute store result score @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,sort=nearest,limit=1] PZMADNMS.1Drop run scoreboard players set @s PZMADNMS.1Drop 6

data modify entity @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,scores={PZMADNMS.1Drop=5},sort=nearest,limit=1] ArmorItems[3].components.minecraft:profile.properties[0].value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTFlMTJhZDk3NTlhM2QzNjhlNWQ5Njk2ZWQxMjRmNzMzNDA2YzRmNzE2MmJhYzRmYTM4YTk4MjE4YjdkN2M2In19fQ=="

data modify entity @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,scores={PZMADNMS.1Drop=4},sort=nearest,limit=1] ArmorItems[3].components.minecraft:profile.properties[0].value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQyMDY0YWE0ZGUzNWY2NjliMDRlODdiMWUwNGQ0MmVjZWU4MjliOWJjNTY2MTM4YWEyNzk0Nzk4YWZiZWMifX19"

data modify entity @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,scores={PZMADNMS.1Drop=3},sort=nearest,limit=1] ArmorItems[3].components.minecraft:profile.properties[0].value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzgzMTEzOGMyMDYxMWQzMDJjNDIzZmEzMjM3MWE3NDNkMTc0MzdhMTg5NzNjMzUxOTczNDQ3MGE3YWJiNCJ9fX0="

data modify entity @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,scores={PZMADNMS.1Drop=2},sort=nearest,limit=1] ArmorItems[3].components.minecraft:profile.properties[0].value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTAzNGYwYmUzNTYxN2ZmMGM3ZDc2MjkyMTY1Zjk3Mzc1ZmRhNDAzM2JjODJkMmVlNjE2NGM2ODc2OTI3ZjM4YyJ9fX0="

data modify entity @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Wuerfel,scores={PZMADNMS.1Drop=1},sort=nearest,limit=1] ArmorItems[3].components.minecraft:profile.properties[0].value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWNmYWRhZWM3NzZlZWRlNDlhNDMzZTA5OTdmZTA0NDJmNzY1OTk4OTI0MTliYWFiODNkMjhlOGJhN2YxZjMifX19"

data merge entity @s {PickupDelay:0s}

#give @p minecraft:player_head[minecraft:custom_name='{"text":"Würfel"}',minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWZlMjY3MWU3ZTFhNzUzODI3Y2M0ZTMyZTUwNmYyOWFhMjM4ZTQ5NmFjNWE1NTcyNmFjNWRjZGM5ZDMifX19"}]},minecraft:custom_data={EigMADNMS.1Alle:true,EigMADNMS.1Wuerfel:true}] 1

#give @p minecraft:player_head[minecraft:custom_name='{"text":"Würfel"}',minecraft:profile={id:[I;-1547714911,1783319921,-1105310868,-1297513998],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTFlMTJhZDk3NTlhM2QzNjhlNWQ5Njk2ZWQxMjRmNzMzNDA2YzRmNzE2MmJhYzRmYTM4YTk4MjE4YjdkN2M2In19fQ=="}]},minecraft:custom_data={EigMADNMS.1Alle:true,EigMADNMS.1Wuerfel:true}] 1


#give @p minecraft:player_head[minecraft:custom_name='{"text":"Würfel"}',minecraft:profile={id:[I;-992790007,-296467766,-1453005312,-406905534],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQyMDY0YWE0ZGUzNWY2NjliMDRlODdiMWUwNGQ0MmVjZWU4MjliOWJjNTY2MTM4YWEyNzk0Nzk4YWZiZWMifX19"}]},minecraft:custom_data={EigMADNMS.1Alle:true,EigMADNMS.1Wuerfel:true}] 1

#give @p minecraft:player_head[minecraft:custom_name='{"text":"Würfel"}',minecraft:profile={id:[I;-1694415195,587548277,-1170283101,1380891497],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzgzMTEzOGMyMDYxMWQzMDJjNDIzZmEzMjM3MWE3NDNkMTc0MzdhMTg5NzNjMzUxOTczNDQ3MGE3YWJiNCJ9fX0="}]},minecraft:custom_data={EigMADNMS.1Alle:true,EigMADNMS.1Wuerfel:true}] 1

#give @p minecraft:player_head[minecraft:custom_name='{"text":"Würfel"}',minecraft:profile={id:[I;195275060,-836876370,-1559471368,-756401366],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTAzNGYwYmUzNTYxN2ZmMGM3ZDc2MjkyMTY1Zjk3Mzc1ZmRhNDAzM2JjODJkMmVlNjE2NGM2ODc2OTI3ZjM4YyJ9fX0="}]},minecraft:custom_data={EigMADNMS.1Alle:true,EigMADNMS.1Wuerfel:true}] 1

#give @p minecraft:player_head[minecraft:custom_name='{"text":"Würfel"}',minecraft:profile={id:[I;-348105134,-184466253,-2030592094,-289582333],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWNmYWRhZWM3NzZlZWRlNDlhNDMzZTA5OTdmZTA0NDJmNzY1OTk4OTI0MTliYWFiODNkMjhlOGJhN2YxZjMifX19"}]},minecraft:custom_data={EigMADNMS.1Alle:true,EigMADNMS.1Wuerfel:true}] 1
