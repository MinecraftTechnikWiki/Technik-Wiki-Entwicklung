
scoreboard objectives add PZTausM.1Wert minecraft.custom:minecraft.drop ["Tauschmaschine.1: ",{"text":"Speichern von Werten","bold":true}]

data merge storage tauschmaschine:v1daten {EigTausM.1Angebote:[{EigTausM.1Kaufen:{},EigTausM.1Verkaufen:{}}]}


give @a[distance=..25] minecraft:stick{EigTausM.1Alle:true,EigTausM.1Kaufen:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Kaufen","bold":true}',Lore:['"Lege den Stock in die"','"Zweithand, um neue"','"Tauschangebote hinzuzufügen"'] } } 16
give @a[distance=..25] minecraft:stick{EigTausM.1Alle:true,EigTausM.1Verkaufen:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Kaufen","bold":true}',Lore:['"Lege den Stock in die"','"Zweithand, um neue"','"Tauschangebote hinzuzufügen"'] } } 16

#give @a[distance=..25] minecraft:emerald{EigTausM.1Alle:true} 16

#setblock ~ ~1 ~ minecraft:oak_wall_sign[facing=south]
#summon minecraft:item_frame ~ ~1 ~ {Facing:3b,Item:{id:"minecraft:stone",Count:1b}}













tag @a[distance=..25,nbt={Inventory:[{Slot:-106,id:"minecraft:stick",tag:{EigTausM.1Kaufen:true} } ] }] add EtiTausM.1Kaufen


execute at @a[distance=..25,tag=EtiTausM.1Kaufen,scores={PZTausM.1Wert=1..}] as @e[distance=..3,type=minecraft:item,sort=nearest,limit=1] run function tauschmaschine:v1liste


data modify storage tauschmaschine:v1daten "EigTausM.1ID" set from storage tauschmaschine:v1daten "EigTausM.1Angebote"[0]."EigTausM.1Kaufen".id
execute store success score PZTausM.1Ungleich PZTausM.1Wert run data modify storage tauschmaschine:v1daten "EigTausM.1ID" set from entity @e[distance=..3,type=minecraft:item,sort=nearest,limit=1] Item.id








execute at @a[distance=..25,tag=EtiTausM.1Kaufen,scores={PZTausM.1Wert=1..}] store success score PZTausM.1Ungleich PZTausM.1Wert run data modify storage tauschmaschine:v1daten "EigTausM.1Angebote"[0]."EigTausM.1Kaufen".id set from entity @e[distance=..3,type=minecraft:item,sort=nearest,limit=1] Item.id

execute if entity @a[distance=..25,tag=EtiTausM.1Kaufen,scores={PZTausM.1Wert=1..}] if score PZTausM.1Ungleich PZTausM.1Wert matches 0 store result score PZTausM.1Anzahl PZTausM.1Wert run data get storage tauschmaschine:v1daten "EigTausM.1Angebote"[0]."EigTausM.1Kaufen".Count

execute if entity @a[distance=..25,tag=EtiTausM.1Kaufen,scores={PZTausM.1Wert=1..}] if score PZTausM.1Ungleich PZTausM.1Wert matches 0 store result storage tauschmaschine:v1daten "EigTausM.1Angebote"[0]."EigTausM.1Kaufen".Count int 1 run scoreboard players add PZTausM.1Anzahl PZTausM.1Wert 1

tag @a[tag=EtiTausM.1Kaufen] remove EtiTausM.1Kaufen




tag @a[distance=..25,nbt={Inventory:[{Slot:-106,id:"minecraft:stick",tag:{EigTausM.1Verkaufen:true} } ] }] add EtiTausM.1Verkaufen

execute at @a[distance=..25,tag=EtiTausM.1Verkaufen,scores={PZTausM.1Wert=1..}] store success score PZTausM.1Ungleich PZTausM.1Wert run data modify storage tauschmaschine:v1daten "EigTausM.1Angebote"[0]."EigTausM.1Verkaufen".id set from entity @e[distance=..3,type=minecraft:item,sort=nearest,limit=1] Item.id

execute if entity @a[distance=..25,tag=EtiTausM.1Verkaufen,scores={PZTausM.1Wert=1..}] if score PZTausM.1Ungleich PZTausM.1Wert matches 0 store result score PZTausM.1Anzahl PZTausM.1Wert run data get storage tauschmaschine:v1daten "EigTausM.1Angebote"[0]."EigTausM.1Verkaufen".Count

execute if entity @a[distance=..25,tag=EtiTausM.1Verkaufen,scores={PZTausM.1Wert=1..}] if score PZTausM.1Ungleich PZTausM.1Wert matches 0 store result storage tauschmaschine:v1daten "EigTausM.1Angebote"[0]."EigTausM.1Verkaufen".Count int 1 run scoreboard players add PZTausM.1Anzahl PZTausM.1Wert 1

tag @a[tag=EtiTausM.1Verkaufen] remove EtiTausM.1Verkaufen


scoreboard players set @a[scores={PZTausM.1Wert=1..}] PZTausM.1Wert 0
