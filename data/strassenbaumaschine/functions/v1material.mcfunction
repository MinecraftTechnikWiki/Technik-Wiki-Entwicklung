# Die Baumaterialien werden abgefragt und deren Werte werden in Variablen gespeichert.
execute store result score VarStraBM.1Beton PZStraBM.1Wert run clear @s minecraft:gray_concrete 0
execute store result score VarStraBM.1Quarz PZStraBM.1Wert run clear @s minecraft:quartz_block 0
execute store result score VarStraBM.1Stufe PZStraBM.1Wert run clear @s minecraft:stone_brick_slab 0

# Wenn die Zweierspur aktiv ist, müssen mehr Materialien entnommen werden, dazu erhält der Spieler ein zusätzliches Etikett.
execute if entity @e[distance=..10,type=minecraft:marker,tag=EtiStraBM.1Baumaschine,nbt={data:{EigStraBM.1Zweierspur:'{"bold":true,"color":"green","text":"wahr"}'} },sort=nearest,limit=1] run tag @s add EtiStraBM.1Zweierspur

# Wenn der Spieler die Mindestmenge besitzt, erhält er ein Etikett, falls er aber nicht genug hat, wenn die Zweierspur aktiv ist, wird ihm das Etikett wieder entfernt.
execute if score VarStraBM.1Beton PZStraBM.1Wert matches 3.. if score VarStraBM.1Stufe PZStraBM.1Wert matches 4.. if score VarStraBM.1Quarz PZStraBM.1Wert matches 2.. run tag @s add EtiStraBM.1Material
execute unless score VarStraBM.1Beton PZStraBM.1Wert matches 7.. run tag @s[tag=EtiStraBM.1Zweierspur,tag=EtiStraBM.1Material] remove EtiStraBM.1Material

# Besitzt der Spieler die Mindestmenge, wird ihm diese aus dem Inventar entfernt.
clear @s[tag=EtiStraBM.1Material] minecraft:gray_concrete 3
clear @s[tag=EtiStraBM.1Material] minecraft:quartz_block 2
clear @s[tag=EtiStraBM.1Material] minecraft:stone_brick_slab 4

# Ebenso, wenn er die Zweierspur aktiv hat.
clear @s[tag=EtiStraBM.1Zweierspur,tag=EtiStraBM.1Material] minecraft:gray_concrete 4

# Wenn der Spieler genug Material bei sich hat, wird die Spur-Funktion geladen. Ansonsten bekommt der Spieler eine Fehlermeldung.
execute if entity @s[tag=EtiStraBM.1Material] as @e[distance=..10,type=minecraft:marker,tag=EtiStraBM.1Baumaschine,sort=nearest,limit=1] rotated ~ 0 run function strassenbaumaschine:v1spur
tellraw @s[tag=!EtiStraBM.1Material] ["Straßenbaumaschine.1:\n",{"text":"Du hast zu wenig Material bei dir!","color":"red","bold":true}]

# Falls der Tempomat aktiv ist, wird er ausgeschaltet.
execute if entity @s[tag=!EtiStraBM.1Material] run data modify entity @e[distance=..10,type=minecraft:marker,tag=EtiStraBM.1Baumaschine,sort=nearest,limit=1] data."EigStraBM.1Tempomat" set value '{"text":"falsch","color":"red","bold":true}'

# Die Etiketten werden nicht mehr gebraucht und somit wieder entfernt.
tag @s[tag=EtiStraBM.1Zweierspur] remove EtiStraBM.1Zweierspur
tag @s[tag=EtiStraBM.1Material] remove EtiStraBM.1Material
