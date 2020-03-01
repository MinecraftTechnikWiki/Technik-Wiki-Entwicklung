
execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Erstellen] at @s run function tuer-_und_toranlage:v1erstellen

#execute at @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:0,posZ:-4,name:"tuer-_und_toranlage:v1torrahmen"} replace
#execute at @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen] if block ~ ~ ~ minecraft:structure_block run setblock ~1 ~ ~ minecraft:redstone_block replace

execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen] store result score @s PZTuTor.1Zeit run scoreboard players add @s[scores={PZTuTor.1Zeit=..20}] PZTuTor.1Zeit 1

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1SpielerBeimTor,scores={PZTuTor.1Zeit=1}] at @s if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiTuTor.1Tor,scores={PZTuTor.1Tor=3},sort=nearest,limit=1] unless entity @p[distance=..8] run tag @s remove EtiTuTor.1SpielerBeimTor
execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1SpielerBeimTor,scores={PZTuTor.1Zeit=1}] at @s unless entity @p[distance=..8] run tag @s remove EtiTuTor.1SpielerBeimTor

execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1SpielerBeimTor] at @s if entity @p[distance=..8] store success score @s PZTuTor.1Zeit run tag @s add EtiTuTor.1SpielerBeimTor

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen] at @s store success score @s PZTuTor.1Tor if entity @p[distance=..8]

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1SpielerBeimTor] at @s store success score @s PZTuTor.1Tor if entity @p[distance=..8]

#execute at @e[type=minecraft:armor_stand,tag=EtiTuTor.1SpielerBeimTor,scores={PZTuTor.1Zeit=1}] run scoreboard players add @e[distance=..2,type=minecraft:armor_stand,tag=EtiTuTor.1Tor,sort=nearest,limit=1] PZTuTor.1Tor 1

#execute at @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,scores={PZTuTor.1Zeit=1}] as @e[distance=..2,type=minecraft:armor_stand,tag=EtiTuTor.1Tor,sort=nearest,limit=1] positioned ~ ~1 ~ run function tuer-_und_toranlage:v1tor
execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,scores={PZTuTor.1Zeit=1}] at @s positioned ~ ~1 ~ run function tuer-_und_toranlage:v1tor

#scoreboard players set @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1Oeffnen,tag=!EtiTuTor.1Schliessen,scores={PZTuTor.1BeimTor=1}] PZTuTor.1Tor 0
#tag @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1Oeffnen,tag=!EtiTuTor.1Schliessen,scores={PZTuTor.1BeimTor=1}] add EtiTuTor.1Oeffnen

#scoreboard players set @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1Oeffnen,tag=!EtiTuTor.1Schliessen,scores={PZTuTor.1BeimTor=0}] PZTuTor.1Tor 3
#tag @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1Oeffnen,tag=!EtiTuTor.1Schliessen,scores={PZTuTor.1BeimTor=0}] add EtiTuTor.1Schliessen

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=EtiTuTor.1Oeffnen,scores={PZTuTor.1Zeit=1,PZTuTor.1Tor=0..3}] at @s positioned ~ ~1 ~ run function tuer-_und_toranlage:v1tor

#tag @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=EtiTuTor.1Oeffnen,scores={PZTuTor.1Tor=3}] remove EtiTuTor.1Oeffnen
#tag @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=EtiTuTor.1Schliessen,scores={PZTuTor.1Tor=0}] remove EtiTuTor.1Schliessen

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1Schliessen] at @s if entity @p[distance=..8] store success score @s PZTuTor.1Zeit run scoreboard players set @s PZTuTor.1Tor 3
#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1Schliessen] at @s if entity @p[distance=..8] run tag @s add EtiTuTor.1Schliessen

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=EtiTuTor.1Oeffnen,scores={PZTuTor.1Zeit=20}] at @s unless entity @p[distance=..8] run tag @s remove EtiTuTor.1Oeffnen

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1Oeffnen] at @s if entity @p[distance=..8] store success score @s PZTuTor.1Zeit run scoreboard players set @s PZTuTor.1Tor 0
#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=!EtiTuTor.1Oeffnen] at @s if entity @p[distance=..8] run tag @s add EtiTuTor.1Oeffnen

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=EtiTuTor.1Oeffnen,scores={PZTuTor.1Zeit=1,PZTuTor.1Tor=0..3}] at @s positioned ~ ~1 ~ run function tuer-_und_toranlage:v1tor

#execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen,tag=EtiTuTor.1Schliessen,scores={PZTuTor.1Zeit=1,PZTuTor.1Tor=0..3}] at @s positioned ~ ~1 ~ run function tuer-_und_toranlage:v1tor

#setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:0,posY:0,posZ:0,name:"tuer-_und_toranlage:v1tor_zu"}
