
scoreboard players set VarTowDefMS.1Erstellen PZTowDefMS.1Wert 0
execute if entity @p[distance=..5,team=TMTowDefMS.1Team1] if score VarTowDefMS.1Punkte1 PZTowDefMS.1Wert matches 25.. run scoreboard players set VarTowDefMS.1Erstellen PZTowDefMS.1Wert 1
execute if entity @p[distance=..5,team=TMTowDefMS.1Team2] if score VarTowDefMS.1Punkte2 PZTowDefMS.1Wert matches 25.. run scoreboard players set VarTowDefMS.1Erstellen PZTowDefMS.1Wert 1

execute if score VarTowDefMS.1Erstellen PZTowDefMS.1Wert matches 0 run kill @s
execute if score VarTowDefMS.1Erstellen PZTowDefMS.1Wert matches 0 run return run tellraw @p[distance=..5] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{text:"Der Punktestand reicht nicht aus, um den Turm zu platzieren!",color:"red",bold:true}]

scoreboard players set VarTowDefMS.1Erstellen PZTowDefMS.1Wert 0
execute if block ~-1 ~ ~ minecraft:air if block ~1 ~ ~ minecraft:air if block ~ ~ ~-1 minecraft:air if block ~1 ~ ~ minecraft:air if block ~-1 ~ ~-1 minecraft:air if block ~1 ~ ~-1 minecraft:air if block ~-1 ~ ~1 minecraft:air if block ~1 ~ ~1 minecraft:air run scoreboard players set VarTowDefMS.1Erstellen PZTowDefMS.1Wert 1

execute if score VarTowDefMS.1Erstellen PZTowDefMS.1Wert matches 0 run kill @s
execute if score VarTowDefMS.1Erstellen PZTowDefMS.1Wert matches 0 run return run tellraw @p[distance=..5] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{text:"An der gewünschten Stelle ist kein Platz für den Turm!",color:"red",bold:true}]

execute if entity @p[distance=..5,team=TMTowDefMS.1Team1] run scoreboard players remove VarTowDefMS.1Punkte1 PZTowDefMS.1Wert 25
execute if entity @p[distance=..5,team=TMTowDefMS.1Team2] run scoreboard players remove VarTowDefMS.1Punkte2 PZTowDefMS.1Wert 25

execute if entity @s[tag=EtiTowDefMS.1Schiessturm] run summon minecraft:item_display ~ ~4 ~ {item:{id:"minecraft:bow",count:1},Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Schuetze"]}
execute if entity @s[tag=EtiTowDefMS.1Schiessturm] run place template tower-defense-minispiel:v1schiessturm_1 ~-1 ~ ~-1 none
execute if entity @s[tag=EtiTowDefMS.1Schiessturm] run data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Turm" set value "Schießturm"

#execute if entity @s[tag=EtiTowDefMS.1Schiessturm] as @p[distance=..5,team=TMTowDefMS.1Team1] run tellraw @a[team=TMTowDefMS.1Team1] ["Tower-Defense-Minispiel.1:\n",{text:"Ein Schießturm Stufe 1 wurde von "},{selector:"@s"},{text:" errichtet."}]
#execute if entity @s[tag=EtiTowDefMS.1Schiessturm] as @p[distance=..5,team=TMTowDefMS.1Team2] run tellraw @a[team=TMTowDefMS.1Team2] ["Tower-Defense-Minispiel.1:\n",{text:"Ein Schießturm Stufe 1 wurde von "},{selector:"@s"},{text:" errichtet."}]

execute if entity @s[tag=EtiTowDefMS.1Eisturm] run summon minecraft:item_display ~ ~5 ~ {item:{id:"minecraft:ice",count:1},Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Entfernen","EtiTowDefMS.1Gefrieren"]}
execute if entity @s[tag=EtiTowDefMS.1Eisturm] run place template tower-defense-minispiel:v1eisturm_1 ~-1 ~ ~-1 none
execute if entity @s[tag=EtiTowDefMS.1Eisturm] run data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Turm" set value "Eisturm"

#execute if entity @s[tag=EtiTowDefMS.1Eisturm] as @p[distance=..5,team=TMTowDefMS.1Team1] run tellraw @a[team=TMTowDefMS.1Team1] ["Tower-Defense-Minispiel.1:\n",{text:"Ein Eisturm Stufe 1 wurde von "},{selector:"@s"},{text:" errichtet."}]
#execute if entity @s[tag=EtiTowDefMS.1Eisturm] as @p[distance=..5,team=TMTowDefMS.1Team2] run tellraw @a[team=TMTowDefMS.1Team2] ["Tower-Defense-Minispiel.1:\n",{text:"Ein Eisturm Stufe 1 wurde von "},{selector:"@s"},{text:" errichtet."}]

execute if entity @s[tag=EtiTowDefMS.1TNTTurm] run summon minecraft:item_display ~ ~5 ~ {item:{id:"minecraft:target",count:1},Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Entfernen","EtiTowDefMS.1Explosion"]}
execute if entity @s[tag=EtiTowDefMS.1TNTTurm] run place template tower-defense-minispiel:v1tntturm_1 ~-1 ~ ~-1 none
execute if entity @s[tag=EtiTowDefMS.1TNTTurm] run data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Turm" set value "TNT-Turm"

execute as @p[distance=..5,team=TMTowDefMS.1Team1] run tellraw @a[team=TMTowDefMS.1Team1] ["Tower-Defense-Minispiel.1:\n",{text:"Ein TNT-Turm ",color:"yellow",bold:true},{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Turm"',color:"gold",bold:true},{text:" Stufe 1 wurde von ",color:"yellow",bold:true},{selector:"@s",color:"green",bold:true},{text:" errichtet."}]
execute as @p[distance=..5,team=TMTowDefMS.1Team2] run tellraw @a[team=TMTowDefMS.1Team2] ["Tower-Defense-Minispiel.1:\n",{text:"Ein TNT-Turm ",color:"yellow",bold:true},{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Turm"',color:"gold",bold:true},{text:" Stufe 1 wurde von ",color:"yellow",bold:true},{selector:"@s",color:"green",bold:true},{text:" errichtet."}]

summon minecraft:text_display ~ ~6 ~ {text:["",{text:"S: ",color:"red"},{text:"||||||||||",color:"green"}],billboard:"center",Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Entfernen","EtiTowDefMS.1Aufladen"]}

scoreboard players set @s PZTowDefMS.1Leben 1

tag @s remove EtiTowDefMS.1Erstellen
