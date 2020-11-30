
tag @s[nbt={Inventory:[{id:"minecraft:emerald"} ] }] add EtiBankA.2Smaragd

#data modify storage bankautomat:v2werte_kopie "EigBankA.2Konten" set from storage bankautomat:v2werte "EigBankA.2Konten"
function bankautomat:v2konto_spieler

scoreboard players add @s[tag=EtiBankA.2Smaragd,scores={PZBankA.2Ausl=1}] PZBankA.2Wert 1
clear @a[distance=..5,tag=EtiBankA.2Smaragd,scores={PZBankA.2Ausl=1}] minecraft:emerald 1
tellraw @a[distance=..5,tag=!EtiBankA.2Smaragd,scores={PZBankA.2Ausl=1}] ["Bankautomat.2: ",{"text":"Du hast keine Smaragde um sie einzuzahlen","color":"red","bold":true} ]

tag @s[tag=EtiBankA.2Smaragd] remove EtiBankA.2Smaragd
