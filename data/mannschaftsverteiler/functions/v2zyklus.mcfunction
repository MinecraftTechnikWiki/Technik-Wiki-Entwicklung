
execute as @e[type=minecraft:marker,tag=EtiManSV.2Plattform] at @s store result score @s PZManSV.2Wert positioned ~-5 ~ ~-5 run tag @a[dx=9,dy=9,dz=9] add EtiManSV.2AufPlattform

scoreboard players add VarManSV.2Tick PZManSV.2Wert 1
execute if score VarManSV.2Tick PZManSV.2Wert matches 20.. if entity @e[type=minecraft:marker,tag=EtiManSV.2Plattform,scores={PZManSV.2Wert=0}] run scoreboard players set VarManSV.2Zaehler PZManSV.2Wert 15
execute if score VarManSV.2Tick PZManSV.2Wert matches 20.. if entity @e[type=minecraft:marker,tag=EtiManSV.2Plattform,scores={PZManSV.2Wert=1..}] run scoreboard players remove VarManSV.2Zaehler PZManSV.2Wert 1
execute if score VarManSV.2Tick PZManSV.2Wert matches 20.. run scoreboard players set VarManSV.2Tick PZManSV.2Wert 0

title @a[tag=EtiManSV.2AufPlattform] actionbar ["",{"score":{"name":"VarManSV.2Zaehler","objective":"PZManSV.2Wert"},"color":"dark_purple","bold":true}]

execute if score VarManSV.2Zaehler PZManSV.2Wert matches ..0 as @e[type=minecraft:marker,tag=EtiManSV.2Plattform,scores={PZManSV.2Wert=1..}] at @s run function mannschaftsverteiler:v2mannschaft

item replace entity @a[tag=!EtiManSV.2AufPlattform,nbt={Inventory:[{Slot:103b,tag:{EigManSV.2Alle:true} } ] }] armor.head with minecraft:air
tag @a[tag=EtiManSV.2AufPlattform] remove EtiManSV.2AufPlattform

tag @a[nbt={SelectedItem:{tag:{EigManSV.2Stock:true} } }] add EtiManSV.2Ausgewaehlt

scoreboard players set @a[tag=EtiManSV.2Ausgewaehlt,tag=!EtiManSV.2Auswahl] PZManSV.2Ausl -99

# Wenn Spieler den Stock gerade auswählen, wird ihnen noch eine Nachricht geschickt.
execute as @a[tag=EtiManSV.2Ausgewaehlt] unless entity @s[scores={PZManSV.2Ausl=0}] run function mannschaftsverteiler:v2ausloeser

# Es wird ein Etikett gegeben oder genommen, je nach dem ob man gerade den Stock ausgewählt hat, oder nicht.
tag @a[tag=EtiManSV.2Ausgewaehlt,tag=!EtiManSV.2Auswahl] add EtiManSV.2Auswahl
tag @a[tag=!EtiManSV.2Ausgewaehlt,tag=EtiManSV.2Auswahl] remove EtiManSV.2Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiManSV.2Ausgewaehlt] remove EtiManSV.2Ausgewaehlt
