
scoreboard players operation @s PZTausM.2Ausl = @p PZTausM.2Ausl

data merge entity @s[scores={PZTausM.2Ausl=1}] {CustomName:'{"bold":true,"color":"dark_gray","text":"Stein"}'}
data merge entity @s[scores={PZTausM.2Ausl=2}] {CustomName:'{"bold":true,"color":"gold","text":"Eichenstamm"}'}
data merge entity @s[scores={PZTausM.2Ausl=3}] {CustomName:'{"bold":true,"color":"yellow","text":"Schwamm"}'}
data merge entity @s[scores={PZTausM.2Ausl=4}] {CustomName:'{"bold":true,"color":"red","text":"Redstone"}'}
data merge entity @s[scores={PZTausM.2Ausl=5}] {CustomName:'{"bold":true,"color":"blue","text":"Wassereimer"}'}

tag @p[scores={PZTausM.2Ausl=10},nbt={Inventory:[{id:"minecraft:emerald"} ] }] add EtiTausM.2Smaragde

tellraw @p[tag=!EtiTausM.2Smaragde,scores={PZTausM.2Ausl=10}] ["Tauschmaschine.2: ",{"text":"Du hast keine Smaragde bei dir!","color":"red","bold":true}]
tellraw @p[tag=EtiTausM.2Smaragde,scores={PZTausM.2Ausl=10}] ["Tauschmaschine.2: ",{"text":"Du hast das Material getauscht","color":"green","bold":true}]

clear @p[tag=EtiTausM.2Smaragde,scores={PZTausM.2Ausl=10}] minecraft:emerald 1
execute if entity @s[name="Stein"] run give @p[tag=EtiTausM.2Smaragde,scores={PZTausM.2Ausl=10}] minecraft:stone{tauschmaschine:"v2gegenstand"} 1
execute if entity @s[name="Eichenstamm"] run give @p[tag=EtiTausM.2Smaragde,scores={PZTausM.2Ausl=10}] minecraft:oak_log{tauschmaschine:"v2gegenstand"} 1
execute if entity @s[name="Schwamm"] run give @p[tag=EtiTausM.2Smaragde,scores={PZTausM.2Ausl=10}] minecraft:sponge{tauschmaschine:"v2gegenstand"} 1
execute if entity @s[name="Redstone"] run give @p[tag=EtiTausM.2Smaragde,scores={PZTausM.2Ausl=10}] minecraft:redstone{tauschmaschine:"v2gegenstand"} 1
execute if entity @s[name="Wassereimer"] run give @p[tag=EtiTausM.2Smaragde,scores={PZTausM.2Ausl=10}] minecraft:water_bucket{tauschmaschine:"v2gegenstand"} 1

tag @p[tag=EtiTausM.2Smaragde] remove EtiTausM.2Smaragde
