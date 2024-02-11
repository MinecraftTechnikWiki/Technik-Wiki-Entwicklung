
scoreboard objectives add PZFreuS.1Nr dummy ["Freunde-System.1: ",{"text":"Nummern der Spieler","bold":true}]
scoreboard objectives add PZFreuS.1Ausl trigger ["Freunde-System.1: ",{"text":"Auslöser","bold":true}]
scoreboard objectives add PZFreuS.1Spieler dummy ["Freunde-System.1: ",{"text":"Nummer eines anderen Spielers","bold":true}]

data merge storage freunde-system:v1daten {EigFreuS.1AlleSpieler:[],EigFreuS.1Nummer:[]}

give @a[distance=..15] stick{EigFreuS.1Alle:true}






execute as @a[tag=!EtiFreuS.1Spieler] at @s run function freunde-system:v1spieler

tag @a[nbt={SelectedItem:{tag:{EigBiomS.1Sensor:true} } }] add EtiBiomS.1Ausgewaehlt

scoreboard players set @a[tag=EtiBiomS.1Ausgewaehlt,tag=!EtiBiomS.1Auswahl] PZFreuS.1Ausl -99

execute as @a[tag=EtiBiomS.1Ausgewaehlt] unless entity @s[scores={PZFreuS.1Ausl=0}] run function freunde-system:v1ausloeser

tag @a[tag=EtiBiomS.1Ausgewaehlt,tag=!EtiBiomS.1Auswahl] add EtiBiomS.1Auswahl

tag @a[tag=!EtiBiomS.1Ausgewaehlt,tag=EtiBiomS.1Auswahl] remove EtiBiomS.1Auswahl

tag @a[tag=EtiBiomS.1Ausgewaehlt] remove EtiBiomS.1Ausgewaehlt






summon minecraft:item_frame ~ ~ ~ {Tags:["EtiFreuS.1Alle","EtiFreuS.1Spielerkopf"]}
loot replace entity @e[distance=..1,type=minecraft:item_frame,tag=EtiFreuS.1Spielerkopf,sort=nearest,limit=1] container.0 loot freunde-system:spieler

data modify storage freunde-system:v1daten "EigFreuS.1AlleSpieler" append value {EigFreuS.1Nummer:0,EigFreuS.1Name:""}
data modify storage freunde-system:v1daten "EigFreuS.1AlleSpieler"[-1]."EigFreuS.1Name" set from entity @e[distance=..1,type=minecraft:item_frame,tag=EtiFreuS.1Spielerkopf,sort=nearest,limit=1] Item.tag.SkullOwner.Name

execute store result storage freunde-system:v1daten "EigFreuS.1AlleSpieler"[-1]."EigFreuS.1Nummer" int 1 store result score @s PZFreuS.1Nr run scoreboard players add VarFreuS.1Nummer PZFreuS.1Nr 1

tag @s add EtiFreuS.1Spieler

kill @e[distance=..1,type=minecraft:item_frame,tag=EtiFreuS.1Spielerkopf,sort=nearest,limit=1]





execute unless score @s PZFreuS.1Spieler matches 0.. run scoreboard players set @s PZFreuS.1Spieler 0

scoreboard players add @s[scores={PZFreuS.1Ausl=1}] PZFreuS.1Spieler 1
execute if score @s PZFreuS.1Spieler >= VarFreuS.1Nummer PZFreuS.1Nr run scoreboard players set @s PZFreuS.1Spieler 0

scoreboard players remove @s[scores={PZFreuS.1Ausl=-1}] PZFreuS.1Spieler 1
scoreboard players operation @s[scores={PZFreuS.1Spieler=..-1}] PZFreuS.1Spieler = VarFreuS.1Nummer PZFreuS.1Nr
execute if score @s PZFreuS.1Spieler = VarFreuS.1Nummer PZFreuS.1Nr run scoreboard players remove @s PZFreuS.1Spieler 1

function freunde-system:v1liste

execute if entity @s[scores={PZFreuS.1Ausl=2}] run function freunde-system:v1anfrage
execute if entity @s[scores={PZFreuS.1Ausl=2}] run scoreboard players operation VarFreuS.1Anfrage PZFreuS.1Spieler = @s PZFreuS.1Spieler
execute if entity @s[scores={PZFreuS.1Ausl=2}] as @a if score @s PZFreuS.1Nr = VarFreuS.1Anfrage PZFreuS.1Spieler run tellraw @s ["Freunde-System.1:\n",{"text":"Der Spieler "},{"storage":"freunde-system:v1daten","nbt":"\"EigFreuS.1Anfrage\""},{"text":" hat dir eine Freundschaftsanfrage geschickt."}]


tellraw @s ["Freunde-System.1:\n",{"text":"spieler (","bold":true},{"text":"=naechster()","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für nächsten Spieler"} },"clickEvent":{"action":"run_command","value":"/trigger PZFreuS.1Ausl set 1"} },{"text":",","bold":true},{"text":"=vorheriger()","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für vorherigen Spieler"} },"clickEvent":{"action":"run_command","value":"/trigger PZFreuS.1Ausl set -1"} },{"text":") == ","bold":true},{"storage":"freunde-system:v1daten","nbt":"\"EigFreuS.1AlleSpieler\"[0].\"EigFreuS.1Name\"","color":"gold","bold":true},"\n",{"text":"freund = ","bold":true},{"text":"anfrage()","color":"light_blue","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Freundschaftsanfrage"} },"clickEvent":{"action":"run_command","value":"/trigger PZFreuS.1Ausl set 2"} }]

scoreboard players enable @s PZFreuS.1Ausl
scoreboard players set @s PZFreuS.1Ausl 0





data modify storage freunde-system:v1daten "EigFreuS.1AlleSpieler" append from storage freunde-system:v1daten "EigFreuS.1AlleSpieler"[0]
data remove storage freunde-system:v1daten "EigFreuS.1AlleSpieler"[0]

execute store result score VarFreuS.1Spieler PZFreuS.1Nr run data get storage freunde-system:v1daten "EigFreuS.1AlleSpieler"[0]."EigFreuS.1Nummer"
execute unless score @s PZFreuS.1Spieler = VarFreuS.1Spieler PZFreuS.1Nr run function freunde-system:v1liste
#data modify storage freunde-system:v1daten "EigFreuS.1Name"


