
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",mirror:"NONE",rotation:"NONE",posX:-3,posY:0,posZ:-3,name:"parcours:v1parcours_raum"}



give @a[distance=..15] minecraft:armor_stand{EigParc.3Alle:true,display:{Name:'{"text":"Orange","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Farbblock zu erstellen"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,ArmorItems:[{},{},{},{id:"minecraft:orange_concrete",Count:1b}],Tags:["EtiParc.3Alle","EtiParc.3Block","EtiParc.3Orange"]} }

give @a[distance=..15] minecraft:armor_stand{EigParc.3Alle:true,display:{Name:'{"text":"Herllblau","color":"aqua","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um den Farbblock zu erstellen"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}],Tags:["EtiParc.3Alle","EtiParc.3Block","EtiParc.3Hellblau"]} }

scoreboard objectives add PZParc.3Sprung minecraft.custom:minecraft.jump ["Parcours.3: ",{"text":"Springen"}]


execute if entity @p[scores={PZParc.3Sprung=1..}] run scoreboard players add VarParc.3Block PZParc.3Sprung 1
execute if entity @p[scores={PZParc.3Sprung=1..}] if score VarParc.3Block PZParc.3Sprung matches 2.. run scoreboard players set VarParc.3Block PZParc.3Sprung 0

execute if entity @p[scores={PZParc.3Sprung=1..}] at @e[type=minecraft:armor_stand,tag=EtiParc.3Block] run setblock ~ ~ ~ minecraft:air replace
execute if entity @p[scores={PZParc.3Sprung=1..}] if score VarParc.3Block PZParc.3Sprung matches 0 at @e[type=minecraft:armor_stand,tag=EtiParc.3Orange] run setblock ~ ~ ~ minecraft:orange_concrete replace
execute if entity @p[scores={PZParc.3Sprung=1..}] if score VarParc.3Block PZParc.3Sprung matches 0 at @e[type=minecraft:armor_stand,tag=EtiParc.3Orange] run setblock ~ ~ ~ minecraft:light_blue_concrete replace

scoreboard players set @a[scores={PZParc.3Sprung=1..}] PZParc.3Sprung 0

execute at @e[type=minecraft:armor_stand,tag=EtiParc.3Block] if block ~ ~ ~ minecraft:air run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10
