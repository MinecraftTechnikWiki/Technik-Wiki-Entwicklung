
#$execute store success score VarKartDar.1Ergebnis PZKartDar.1Ausl run data modify storage kartendarstellung:v1daten "EigKartDar.1Wort"[0] set from storage kartendarstellung:v1daten "EigKartDar.1Worte"[$(Index)][0]

#$execute store success score VarKartDar.1Ergebnis PZKartDar.1Ausl run data modify storage kartendarstellung:v1daten "EigKartDar.1Worte"[$(Index)][0] set from storage kartendarstellung:v1daten "EigKartDar.1Wort"[0]

#execute if score VarKartDar.1Ergebnis PZKartDar.1Ausl matches 0 run tellraw @s ["Kartendarstellung.1:\n",{text:"uebersetzung == ",bold:true},{text:"wahr",color:"green",bold:true}]

#execute if score VarKartDar.1Ergebnis PZKartDar.1Ausl matches 1 run tellraw @s ["Kartendarstellung.1:\n",{text:"uebersetzung == ",bold:true},{text:"falsch",color:"red",bold:true}]

#tellraw @s ["",{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Wort"[0]',color:"gold",bold:true},{text:" == ",bold:true},{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Wort"[1]',color:"yellow",bold:true}]

#karte
scoreboard players operation VarKartDar.1Schleife2 PZKartDar.1Ausl = VarKartDar.1Quadrat PZKartDar.1Ausl
function kartendarstellung:v1karte_reihe

scoreboard players remove VarKartDar.1Schleife PZKartDar.1Ausl 1
execute if score VarKartDar.1Schleife PZKartDar.1Ausl matches 1.. positioned ^ ^0.02 ^ run function kartendarstellung:v1karte

#execute at @n[type=minecraft:marker,tag=EtiKartDar.1Position] run teleport @n[type=minecraft:block_display,tag=EtiKartDar.1Block,scores={PZKartDar.1Ausl=0}] ~ ~ ~ ~ ~
#execute at @n[type=minecraft:marker,tag=EtiKartDar.1Position] run teleport @n[type=minecraft:block_display,tag=EtiKartDar.1Block,scores={PZKartDar.1Ausl=1}] ~ ~ ~0.2 ~ ~
#execute at @n[type=minecraft:marker,tag=EtiKartDar.1Position] run teleport @n[type=minecraft:block_display,tag=EtiKartDar.1Block,scores={PZKartDar.1Ausl=2}] ~ ~ ~0.4 ~ ~
#execute at @n[type=minecraft:marker,tag=EtiKartDar.1Position] run teleport @n[type=minecraft:block_display,tag=EtiKartDar.1Block,scores={PZKartDar.1Ausl=3}] ~ ~ ~0.6 ~ ~

#execute as @e[type=minecraft:block_display,tag=EtiKartDar.1Block] at @s run teleport @n[type=minecraft:block_display,tag=EtiKartDar.1Block,scores={PZKartDar.1Ausl=WERT}] ~ ~ ~
