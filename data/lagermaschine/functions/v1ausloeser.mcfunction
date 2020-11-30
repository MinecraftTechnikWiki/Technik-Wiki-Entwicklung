
tag @s[tag=!EtiLagerM.1Einlagern,scores={PZLagerM.1Ausl=1}] add EtiLagerM.1Einlagern
tag @s[tag=EtiLagerM.1Einlagern,scores={PZLagerM.1Ausl=-1}] remove EtiLagerM.1Einlagern

execute if entity @s[scores={PZLagerM.1Ausl=2}] run data merge storage lagermaschine:v1daten {EigLagerM.1Einlagern:'{"text":"wahr","color":"green","bold":true}'}


execute if entity @s[scores={PZLagerM.1Ausl=2}] store result score VarLagerM.1Lagerplaetze PZLagerM.1Stapel store result score VarLagerM.1FachPosition PZLagerM.1Stapel run data get storage lagermaschine:v1daten "EigLagerM.1Lager"
execute if entity @s[scores={PZLagerM.1Ausl=2}] run function lagermaschine:v1lager_auffuellen


execute at @s[scores={PZLagerM.1Ausl=-2}] run function lagermaschine:v1lager_leeren

execute if entity @s[scores={PZLagerM.1Ausl=3}] unless entity @s[scores={PZLagerM.1Stapel=64..}] run scoreboard players add @s PZLagerM.1Stapel 1
execute if entity @s[scores={PZLagerM.1Ausl=-3}] unless entity @s[scores={PZLagerM.1Stapel=..0}] run scoreboard players remove @s PZLagerM.1Stapel 1

execute if entity @s[scores={PZLagerM.1Ausl=4}] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" prepend from storage lagermaschine:v1daten "EigLagerM.1Lager"[-1]
execute if entity @s[scores={PZLagerM.1Ausl=4}] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[-1]

tellraw @s ["Lagermaschine.1: ",{"text":"\nEinlagern = ","bold":true},{"text":"wahr","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um Gegenstände in das Lager auffüllen zu können"} },"clickEvent":{"action":"run_command","value":"/trigger PZLagerM.1Ausl set 1"} },{"text":"\nEinlagern = ","bold":true},{"text":"falsch","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um Gegenstände aus dem Lager holen zu können"} },"clickEvent":{"action":"run_command","value":"/trigger PZLagerM.1Ausl set -1"} } ]

tellraw @s[tag=EtiLagerM.1Einlagern] ["",{"text":"Einlagern == ","bold":true},{"text":"wahr","color":"green","bold":true},{"text":"\nSlot == ","bold":true},{"entity":"@s","nbt":"SelectedItem.id","color":"dark_purple","bold":true},{"text":", ","bold":true},{"entity":"@s","nbt":"SelectedItem.Count","color":"dark_purple","bold":true},{"text":"\nSlot ins Lager = ","bold":true},{"text":"wahr","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um den Gegenstand-Stapel in das Lager zu legen"} },"clickEvent":{"action":"run_command","value":"/trigger PZLagerM.1Ausl set 2"} }]

tellraw @s[tag=!EtiLagerM.1Einlagern] ["",{"text":"Einlagern == ","bold":true},{"text":"falsch","color":"red","bold":true},{"text":"\nLager == [","bold":true},{"storage":"lagermaschine:v1daten","nbt":"\"EigLagerM.1Lager\"[].id","color":"blue","bold":true},{"text":"]","bold":true},{"text":"\nLagerbestand == [","bold":true},{"storage":"lagermaschine:v1daten","nbt":"\"EigLagerM.1Lager\"[].Count","color":"dark_purple","bold":true},{"text":"]","bold":true},{"text":"\nGegenstand == ","bold":true},{"storage":"lagermaschine:v1daten","nbt":"\"EigLagerM.1Lager\"[0].id","color":"dark_purple","bold":true},{"text":"\nGegenstand.stapel (","bold":true},{"text":"=stapel + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um die Stapelgröße um eins zu erhöhen"} },"clickEvent":{"action":"run_command","value":"/trigger PZLagerM.1Ausl set 3"} },{"text":",","bold":true},{"text":"=stapel - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um die Stapelgröße um eins zu verringern"} },"clickEvent":{"action":"run_command","value":"/trigger PZLagerM.1Ausl set -3"} },{"text":") == ","bold":true},{"score":{"name":"@s","objective":"PZLagerM.1Stapel"},"color":"dark_purple","bold":true},{"text":"\nGegenstand","bold":true},{"text":".nächster()","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für nächsten Gegenstand"} },"clickEvent":{"action":"run_command","value":"/trigger PZLagerM.1Ausl set 4"} },{"text":"\nGegenstand","bold":true},{"text":".holen(stapel)","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um den Gegenstand mit entsprechender Stapelgröße zu holen"} },"clickEvent":{"action":"run_command","value":"/trigger PZLagerM.1Ausl set -2"} }]

scoreboard players enable @s PZLagerM.1Ausl
scoreboard players set @s PZLagerM.1Ausl 0
