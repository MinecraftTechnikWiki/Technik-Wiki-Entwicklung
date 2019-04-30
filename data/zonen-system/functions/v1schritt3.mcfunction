# Wenn man in der tellraw-Nachricht auf die erste Option "Zone markieren" geklickt hat, wird die mögliche Zone durch Partikel angezeigt
execute at @s[scores={PZZone.1Eing=1}] at @e[distance=..5,sort=nearest,limit=1,type=minecraft:item,tag=EtiZone.1ZoneErstellen] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,CustomName:"{\"text\":\"Zone\"}",CustomNameVisible:true,Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] }

# Falls sich in zu kurzem Abstand bereits eine Zone erstreckt, wird die Markierung direkt wieder gelöscht und per tellraw-Nachricht angegeben
execute at @s[scores={PZZone.1Eing=1}] at @e[distance=..15,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] at @e[distance=..15,type=minecraft:armor_stand,name=Zone,tag=!EtiZone.1Alle] run particle barrier ~ ~1 ~ 0 0 0 0.5 1 force @s[distance=..25]
execute at @s[scores={PZZone.1Eing=1}] if entity @e[distance=..15,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] run tellraw @s ["Zonen-System.1 ",{"text":"Folgende Zone mit der Spielernummer ist zu nah: ","bold":true},{"score":{"name":"@e[distance=..15,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle]","objective":"PZZone.1Nr"},"bold":true,"color":"dark_purple"} ]
execute at @s[scores={PZZone.1Eing=1}] if entity @e[distance=..15,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] run kill @e[distance=..5,type=minecraft:armor_stand,name=Zone,tag=!EtiZone.1Alle]
execute at @s[scores={PZZone.1Eing=1}] unless entity @e[distance=..15,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] run kill @e[distance=..5,sort=nearest,limit=1,type=minecraft:item,name=Zonenoptionen,tag=EtiZone.1ZoneErstellen]

# Die Zone erhält die Nummer des Spielers
execute at @s[scores={PZZone.1Eing=1}] run scoreboard players operation @e[distance=..7,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=!EtiZone.1Alle] PZZone.1Nr = @s PZZone.1Nr
execute at @s[scores={PZZone.1Eing=1}] run tag @e[distance=..7,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=!EtiZone.1Alle] add EtiZone.1Alle

# Wenn man in der tellraw-Nachricht auf die zweite Option "Zone erstellen" geklickt hat, wird die Zone erstellt, falls sich die Markierung in der Nähe befindet
execute at @s[scores={PZZone.1Eing=2}] if entity @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle,tag=!EtiZone.1Zone] run tellraw @s ["Zonen-System.1 ",{"text":"Zone für Spieler mit der Nummer erstellt: ","bold":true},{"score":{"name":"@e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle]","objective":"PZZone.1Nr"},"bold":true,"color":"dark_purple"} ]
execute at @s[scores={PZZone.1Eing=2}] at @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle,tag=!EtiZone.1Zone] run fill ~-7 ~ ~-7 ~8 ~ ~8 minecraft:stone_slab replace minecraft:air
execute at @s[scores={PZZone.1Eing=2}] at @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle,tag=!EtiZone.1Zone] run fill ~-6 ~ ~-6 ~7 ~ ~7 minecraft:air replace minecraft:stone_slab
execute at @s[scores={PZZone.1Eing=2}] run tag @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle,tag=!EtiZone.1Zone] add EtiZone.1Zone

# Wenn man in der tellraw-Nachricht auf die dritte Option "Zone löschen" geklickt hat, wird die Zone gelöscht, falls sich diese in der Nähe befindet
execute at @s[scores={PZZone.1Eing=3}] if score @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] PZZone.1Nr = @s PZZone.1Nr run tellraw @s ["Zonen-System.1 ",{"text":"Folgende Zone wurde gelöscht: ","bold":true},{"score":{"name":"@e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle]","objective":"PZZone.1Nr"},"bold":true,"color":"dark_purple"} ]
execute at @s[scores={PZZone.1Eing=3}] unless score @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] PZZone.1Nr = @s PZZone.1Nr run tellraw @s ["Zonen-System.1 ",{"text":"Die Zone gehört jemand anderem, sie kann deswegen nicht gelöscht werden!","bold":true} ]
execute at @s[scores={PZZone.1Eing=3}] if score @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] PZZone.1Nr = @s PZZone.1Nr run give @s minecraft:chest{display:{Name:"{\"text\":\"Zonen-System.1\"}",Lore:["Wirf die Truhe mit Q","auf den Boden","um die Zonenoptionen","zu erhalten"] } } 1
execute at @s[scores={PZZone.1Eing=3}] if score @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Zone] PZZone.1Nr = @s PZZone.1Nr at @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Zone] run fill ~-7 ~ ~-7 ~8 ~25 ~8 minecraft:air destroy
execute at @s[scores={PZZone.1Eing=3}] if score @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] PZZone.1Nr = @s PZZone.1Nr run kill @e[distance=..5,sort=nearest,limit=1,type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle]

# Wenn man eine Option geklickt hat, wird der Punktestand dazu wieder zurückgesetzt
scoreboard players set @s PZZone.1Eing 0
