
scoreboard objectives add PZTaktG.1Wert dummy ["Taktgeber.1: ",{"text":"Wert der Variablen","bold":true}]
scoreboard players set VarTaktG.1Sekunde PZTaktG.1Wert 0


scoreboard players add VarTaktG.1Tick PZTaktG.1Wert 1
execute if score VarTaktG.1Tick PZTaktG.1Wert matches 20.. run scoreboard players add VarTaktG.1Sekunde PZTaktG.1Wert 1
execute if score VarTaktG.1Tick PZTaktG.1Wert matches 20.. run tellraw @a[distance=..15] ["Taktgeber.1: ",{"text":"Takt","bold":true}]
execute if score VarTaktG.1Tick PZTaktG.1Wert matches 20.. run scoreboard players set VarTaktG.1Tick PZTaktG.1Wert 0
title @a[distance=..15] actionbar ["",{"score":{"name":"VarTaktG.1Sekunde","objective":"PZTaktG.1Wert"},"color":"dark_purple","bold":true}," Sek."]

scoreboard objectives remove PZTaktG.1Wert





scoreboard objectives add PZTaktG.5Wert dummy ["Taktgeber.5: ",{"text":"Wert der Variablen","bold":true}]
scoreboard players set KonstTaktG.5HUNDERT PZTaktG.5Wert 100
scoreboard players set VarTaktG.5Zufallszahl PZTaktG.5Wert 7


scoreboard players add VarTaktG.5Tick PZTaktG.5Wert 1

execute if score VarTaktG.5Tick PZTaktG.5Wert > VarTaktG.5Zufallszahl PZTaktG.5Wert run tellraw @a[distance=..15] ["Taktgeber.5: ",{"text":"Takt","bold":true}]
execute if score VarTaktG.5Tick PZTaktG.5Wert > VarTaktG.5Zufallszahl PZTaktG.5Wert run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiTaktG.5Alle"]}
execute as @e[type=minecraft:area_effect_cloud,tag=EtiTaktG.5Alle,sort=nearest,limit=1] store result score VarTaktG.5Zufallszahl PZTaktG.5Wert run data get entity @s UUID[0] 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiTaktG.5Alle] run scoreboard players set VarTaktG.5Tick PZTaktG.5Wert 0
title @a[distance=..15] actionbar ["",{"score":{"name":"VarTaktG.5Sekunde","objective":"PZTaktG.5Wert"},"color":"dark_purple","bold":true}," Sek. ",{"score":{"name":"VarTaktG.5Zufallszahl","objective":"PZTaktG.5Wert"},"color":"dark_purple","bold":true}]

scoreboard objectives remove PZTaktG.5Wert






scoreboard objectives add PZTaktG.2Ausl trigger ["Taktgeber.2: ",{"text":"Wert der Variablen","bold":true}]
scoreboard players set VarTaktG.2Zaehler PZTaktG.2Ausl 0
give @a[distance=..15] minecraft:stick{EigTaktG.2Alle:true,EigTaktG.2Ausloeser:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Taktgeber","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um nach der Dimension"','"zu testen."'] } }


scoreboard players add VarTaktG.2Tick PZTaktG.2Ausl 1
execute if score VarTaktG.2Tick PZTaktG.2Ausl >= VarTaktG.2Variable PZTaktG.2Ausl run scoreboard players add VarTaktG.2Zaehler PZTaktG.2Ausl 1
execute if score VarTaktG.2Tick PZTaktG.2Ausl >= VarTaktG.2Variable PZTaktG.2Ausl run scoreboard players set VarTaktG.2Tick PZTaktG.2Ausl 0

tag @a[nbt={SelectedItem:{tag:{EigTaktG.2Ausloeser:true} } }] add EtiTaktG.2Ausgewaehlt
execute as @a[tag=EtiTaktG.2Ausgewaehlt] unless entity @s[scores={PZTaktG.2Ausl=0}] run function taktgeber:v4ausloeser
title @a[tag=EtiTaktG.2Ausgewaehlt,tag=!EtiTaktG.2Auswahl] actionbar ["",{"score":{"name":"VarTaktG.2Zaehler","objective":"PZTaktG.2Ausl"},"color":"dark_purple","bold":true}," Sek."]

title @a[tag=!EtiTaktG.2Ausgewaehlt,tag=EtiTaktG.2Auswahl] actionbar [""]
tag @a[tag=EtiTaktG.2Ausgewaehlt,tag=!EtiTaktG.2Auswahl] add EtiTaktG.2Auswahl
tag @a[tag=!EtiTaktG.2Ausgewaehlt,tag=EtiTaktG.2Auswahl] remove EtiTaktG.2Auswahl
tag @a[tag=EtiTaktG.2Ausgewaehlt] remove EtiTaktG.2Ausgewaehlt


execute if entity @s[scores={PZTaktG.2Ausl=1}] run scoreboard players add VarTaktG.2Variable PZTaktG.2Ausl 1
execute if entity @s[scores={PZTaktG.2Ausl=-1}] run scoreboard players remove VarTaktG.2Variable PZTaktG.2Ausl 1

tellraw @s ["Taktgeber.2: ",{"text":"\nvariable = ","bold":true},{"text":"variable + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Variable + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTaktG.2Ausl set 1"} },{"text":"\nvariable = ","bold":true},{"text":"variable - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Variable - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTaktG.2Ausl set -1"} },{"text":"\nvariable == ","bold":true},{"score":{"name":"VarTaktG.2Variable","objective":"PZTaktG.2Ausl"},"color":"dark_purple","bold":true} ]

scoreboard players enable @s PZTaktG.2Ausl
scoreboard players set @s PZTaktG.2Ausl 0


scoreboard objectives remove PZTaktG.2Ausl
tag @a[tag=EtiTaktG.2Auswahl] remove EtiTaktG.2Auswahl
clear @a minecraft:stick{EigTaktG.2Alle:true}
kill @e[type=minecraft:item,nbt={Item:{tag:{EigTaktG.2Alle:true} } }]







scoreboard objectives add PZTaktG.3Ausl trigger ["Taktgeber.3: ",{"text":"Wert der Variablen","bold":true}]
scoreboard players set VarTaktG.3Zaehler PZTaktG.3Ausl 0
give @a[distance=..15] minecraft:stick{EigTaktG.3Alle:true,EigTaktG.3Ausloeser:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Taktgeber","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um nach der Dimension"','"zu testen."'] } }



tag @a[nbt={SelectedItem:{tag:{EigTaktG.3Ausloeser:true} } }] add EtiTaktG.3Ausgewaehlt

execute store result score VarTaktG.3Takt PZTaktG.3Ausl run scoreboard players add VarTaktG.3Tick PZTaktG.3Ausl 1
scoreboard players operation VarTaktG.3Takt PZTaktG.3Ausl %= VarTaktG.3Mod PZTaktG.3Ausl
execute if score VarTaktG.3Takt PZTaktG.3Ausl matches 0 run tellraw @a[tag=EtiTaktG.3Ausgewaehlt] ["Taktgeber.3: ",{"text":"Takt","bold":true}]

execute if score VarTaktG.3Tick PZTaktG.3Ausl >= VarTaktG.3Variable PZTaktG.3Ausl run scoreboard players add VarTaktG.3Zaehler PZTaktG.3Ausl 1
execute if score VarTaktG.3Tick PZTaktG.3Ausl >= VarTaktG.3Variable PZTaktG.3Ausl run scoreboard players set VarTaktG.3Tick PZTaktG.3Ausl 0

execute as @a[tag=EtiTaktG.3Ausgewaehlt] unless entity @s[scores={PZTaktG.3Ausl=0}] run function taktgeber:v4ausloeser
title @a[tag=EtiTaktG.3Ausgewaehlt,tag=!EtiTaktG.3Auswahl] actionbar ["",{"score":{"name":"VarTaktG.3Zaehler","objective":"PZTaktG.3Ausl"},"color":"dark_purple","bold":true}," Sek."]

title @a[tag=!EtiTaktG.3Ausgewaehlt,tag=EtiTaktG.3Auswahl] actionbar [""]
tag @a[tag=EtiTaktG.3Ausgewaehlt,tag=!EtiTaktG.3Auswahl] add EtiTaktG.3Auswahl
tag @a[tag=!EtiTaktG.3Ausgewaehlt,tag=EtiTaktG.3Auswahl] remove EtiTaktG.3Auswahl
tag @a[tag=EtiTaktG.3Ausgewaehlt] remove EtiTaktG.3Ausgewaehlt



execute if entity @s[scores={PZTaktG.3Ausl=1}] run scoreboard players add VarTaktG.3Variable PZTaktG.3Ausl 1
execute if entity @s[scores={PZTaktG.3Ausl=-1}] if score VarTaktG.3Mod PZTaktG.3Ausl < VarTaktG.3Variable PZTaktG.3Ausl run scoreboard players remove VarTaktG.3Variable PZTaktG.3Ausl 1
execute if entity @s[scores={PZTaktG.3Ausl=2}] if score VarTaktG.3Mod PZTaktG.3Ausl < VarTaktG.3Variable PZTaktG.3Ausl run scoreboard players add VarTaktG.3Mod PZTaktG.3Ausl 1
execute if entity @s[scores={PZTaktG.3Ausl=-2}] run scoreboard players remove VarTaktG.3Mod PZTaktG.3Ausl 1

tellraw @s ["Taktgeber.3: ",{"text":"\nvariable = ","bold":true},{"text":"variable + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Variable + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTaktG.3Ausl set 1"} },{"text":"\nvariable = ","bold":true},{"text":"variable - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Variable - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTaktG.3Ausl set -1"} },{"text":"\nvariable == ","bold":true},{"score":{"name":"VarTaktG.3Variable","objective":"PZTaktG.3Ausl"},"color":"dark_purple","bold":true},{"text":"\nmod = ","bold":true},{"text":"mod + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Modulus + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTaktG.3Ausl set 1"} },{"text":"\nmod = ","bold":true},{"text":"mod - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Modulus - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTaktG.3Ausl set -1"} },{"text":"\nmod == ","bold":true},{"score":{"name":"VarTaktG.3Mod","objective":"PZTaktG.3Ausl"},"color":"dark_purple","bold":true} ]

scoreboard players enable @s PZTaktG.3Ausl
scoreboard players set @s PZTaktG.3Ausl 0



scoreboard objectives remove PZTaktG.3Ausl
tag @a[tag=EtiTaktG.3Auswahl] remove EtiTaktG.3Auswahl
clear @a minecraft:stick{EigTaktG.3Alle:true}
kill @e[type=minecraft:item,nbt={Item:{tag:{EigTaktG.3Alle:true} } }]







scoreboard objectives add PZTaktG.4Ausl trigger ["Taktgeber.4: ",{"text":"Wert der Variablen","bold":true}]
scoreboard players set VarTaktG.4Zaehler PZTaktG.4Ausl 0
data merge storage taktgeber:v4daten {EigTaktG.4Felder:[]}
give @a[distance=..15] minecraft:stick{EigTaktG.4Alle:true,EigTaktG.4Ausloeser:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Taktgeber","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um nach der Dimension"','"zu testen."'] } }

execute store result storage

scoreboard players add VarTaktG.4Tick PZTaktG.4Ausl 1
execute if score VarTaktG.4Tick PZTaktG.4Ausl >= VarTaktG.4Variable PZTaktG.4Ausl run scoreboard players add VarTaktG.4Zaehler PZTaktG.4Ausl 1
execute if score VarTaktG.4Tick PZTaktG.4Ausl >= VarTaktG.4Variable PZTaktG.4Ausl run scoreboard players set VarTaktG.4Tick PZTaktG.4Ausl 0

tag @a[nbt={SelectedItem:{tag:{EigTaktG.4Ausloeser:true} } }] add EtiTaktG.4Ausgewaehlt
execute as @a[tag=EtiTaktG.4Ausgewaehlt] unless entity @s[scores={PZTaktG.4Ausl=0}] run function taktgeber:v4ausloeser
title @a[tag=EtiTaktG.4Ausgewaehlt,tag=!EtiTaktG.4Auswahl] actionbar ["",{"score":{"name":"VarTaktG.4Zaehler","objective":"PZTaktG.4Ausl"},"color":"dark_purple","bold":true}," Sek."]

data remove storage taktgeber:v4daten "EigTaktG.4Felder"
scoreboard players set VarTaktG.4Zahl PZTaktG.4Ausl 0
function taktgeber:v4rekursion

tellraw @a[tag=EtiTaktG.4Ausgewaehlt] ["Taktgeber.4: ",{"storage":"taktgeber:v4daten","nbt":"\"EigTaktG.4Felder\""}]

title @a[tag=!EtiTaktG.4Ausgewaehlt,tag=EtiTaktG.4Auswahl] actionbar [""]
tag @a[tag=EtiTaktG.4Ausgewaehlt,tag=!EtiTaktG.4Auswahl] add EtiTaktG.4Auswahl
tag @a[tag=!EtiTaktG.4Ausgewaehlt,tag=EtiTaktG.4Auswahl] remove EtiTaktG.4Auswahl
tag @a[tag=EtiTaktG.4Ausgewaehlt] remove EtiTaktG.4Ausgewaehlt


scoreboard players add VarTaktG.4Zahl PZTaktG.4Ausl 1
data modify storage taktgeber:v4daten "EigTaktG.4Felder" append value '{"text":"Takt","bold":true}'
execute if score VarTaktG.4Zahl PZTaktG.4Ausl < VarTaktG.4Variable PZTaktG.4Ausl run function taktgeber:v4rekursion




execute if entity @s[scores={PZTaktG.4Ausl=1}] run scoreboard players add VarTaktG.4Variable PZTaktG.4Ausl 1
execute if entity @s[scores={PZTaktG.4Ausl=-1}] if score VarTaktG.4Variable PZTaktG.4Ausl matches 1.. run scoreboard players remove VarTaktG.4Variable PZTaktG.4Ausl 1

tellraw @s ["Taktgeber.4: ",{"text":"\nvariable = ","bold":true},{"text":"variable + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Variable + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTaktG.4Ausl set 1"} },{"text":"\nvariable = ","bold":true},{"text":"variable - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Variable - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTaktG.4Ausl set -1"} },{"text":"\nvariable == ","bold":true},{"score":{"name":"VarTaktG.4Variable","objective":"PZTaktG.4Ausl"},"color":"dark_purple","bold":true} ]

scoreboard players enable @s PZTaktG.4Ausl
scoreboard players set @s PZTaktG.4Ausl 0



scoreboard objectives remove PZTaktG.4Ausl
data remove storage taktgeber:v4daten "EigTaktG.4Felder"
tag @a[tag=EtiTaktG.4Auswahl] remove EtiTaktG.4Auswahl
clear @a minecraft:stick{EigTaktG.4Alle:true}
kill @e[type=minecraft:item,nbt={Item:{tag:{EigTaktG.4Alle:true} } }]
