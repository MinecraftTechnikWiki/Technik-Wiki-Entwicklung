
scoreboard players operation VarSpleeMS.1IstNull PZSpleeMS.1Wert = VarSpleeMS.1Beginnen PZSpleeMS.1Wert
scoreboard players operation VarSpleeMS.1IstNull PZSpleeMS.1Wert %= KonstSpleeMS.1FUENF PZSpleeMS.1Wert

execute store success score VarSpleeMS.1Ausgabe PZSpleeMS.1Wert if score VarSpleeMS.1Beginnen PZSpleeMS.1Wert matches 1..5
execute if score VarSpleeMS.1Beginnen PZSpleeMS.1Wert matches 1.. if score VarSpleeMS.1IstNull PZSpleeMS.1Wert matches 0 run scoreboard players set VarSpleeMS.1Ausgabe PZSpleeMS.1Wert 1

execute if score VarSpleeMS.1Ausgabe PZSpleeMS.1Wert matches 1 run tellraw @a[team=TMSpleeMS.1Lobby] ["Spleef-Minispiel.1:\n",{storage:"spleef-minispiel:v1daten",nbt:'"EigSpleeMS.1Name"',interpret:true},{text:"Die Runde beginnt in ",color:"green",bold:true},{score:{name:"VarSpleeMS.1Beginnen",objective:"PZSpleeMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden.",color:"green",bold:true}]

execute if score VarSpleeMS.1Beginnen PZSpleeMS.1Wert matches 11..15 run title @a[team=TMSpleeMS.1Lobby] title ["",{score:{name:"VarSpleeMS.1Beginnen",objective:"PZSpleeMS.1Wert"},color:"green",bold:true}]
execute if score VarSpleeMS.1Beginnen PZSpleeMS.1Wert matches 6..10 run title @a[team=TMSpleeMS.1Lobby] title ["",{score:{name:"VarSpleeMS.1Beginnen",objective:"PZSpleeMS.1Wert"},color:"yellow",bold:true}]
execute if score VarSpleeMS.1Beginnen PZSpleeMS.1Wert matches 1..5 run title @a[team=TMSpleeMS.1Lobby] title ["",{score:{name:"VarSpleeMS.1Beginnen",objective:"PZSpleeMS.1Wert"},color:"red",bold:true}]

execute if score VarSpleeMS.1Beginnen PZSpleeMS.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMSpleeMS.1Lobby] ~ ~ ~ 1 0.6 1
execute if score VarSpleeMS.1Beginnen PZSpleeMS.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMSpleeMS.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarSpleeMS.1Beginnen PZSpleeMS.1Wert matches 1.. run return run scoreboard players remove VarSpleeMS.1Beginnen PZSpleeMS.1Wert 1

scoreboard players set VarSpleeMS.1Spielende PZSpleeMS.1Wert 0
scoreboard players set VarSpleeMS.1Befristet PZSpleeMS.1Wert 0
scoreboard players set VarSpleeMS.1Zaehlen PZSpleeMS.1Wert 0
scoreboard players set VarSpleeMS.1Spielen PZSpleeMS.1Wert 1
scoreboard players set VarSpleeMS.1Beenden PZSpleeMS.1Wert 16

execute at @s run tag @a[distance=..50,team=TMSpleeMS.1Lobby] add EtiSpleeMS.1Spielen

title @a[tag=EtiSpleeMS.1Spielen] title ["",{text:"Spiel startet!",color:"blue",bold:true}]

team join TMSpleeMS.1Spiel @a[tag=EtiSpleeMS.1Spielen]

bossbar set spleef-minispiel:v1lobby players @a[team=TMSpleeMS.1Lobby]
bossbar set spleef-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarSpleeMS.1Wartende",objective:"PZSpleeMS.1Wert"},color:"green",bold:true}]

clear @a[tag=EtiSpleeMS.1Spielen]

effect clear @a[tag=EtiSpleeMS.1Spielen]
effect give @a[tag=EtiSpleeMS.1Spielen] minecraft:night_vision infinite 1 true

gamemode adventure @a[tag=EtiSpleeMS.1Spielen]

execute store result score VarSpleeMS.1Spieler PZSpleeMS.1Wert if entity @a[tag=EtiSpleeMS.1Spielen]

item replace entity @a[tag=EtiSpleeMS.1Spielen] weapon.mainhand with minecraft:golden_shovel[minecraft:lore=["Nutze diese Schaufel","um beim Spleef allen","den Boden unter den","Füßen wegzugraben!"],minecraft:attribute_modifiers=[{amount:-1,operation:"add_value",slot:"mainhand",type:"minecraft:attack_damage",id:"spleef-minispiel:v1werkzeug"}],minecraft:enchantments={"minecraft:efficiency":10,"minecraft:unbreaking":10},minecraft:unbreakable={},minecraft:custom_name={text:"Spleef-Schaufel",bold:true},minecraft:can_break=[{blocks:"minecraft:snow_block"}],minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers","minecraft:unbreakable","minecraft:can_break"]},minecraft:custom_data={EigSpleeMS.1Alle:true}]

$execute at @s positioned ~ ~ ~-10 run spreadplayers ~ ~ 3 4 under $(Y) false @a[distance=..50,tag=EtiSpleeMS.1Spielen]
