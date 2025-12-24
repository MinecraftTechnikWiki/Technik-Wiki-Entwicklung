
$tellraw @s ["",{storage:"block-zaehler:v1daten",nbt:'"EigBlZal.1Liste"[-1].Anzahl',color:"dark_purple",bold:true}," ",{translate:"block.minecraft.$(Block)",color:"gold",bold:true}," "]

data modify storage block-zaehler:v1daten "EigBlZal.1Liste" prepend from storage block-zaehler:v1daten "EigBlZal.1Liste"[-1]
data remove storage block-zaehler:v1daten "EigBlZal.1Liste"[-1]

scoreboard players add VarBlZal.1Schleife PZBlZal.1Wert 1

execute if score VarBlZal.1Schleife PZBlZal.1Wert < VarBlZal.1Liste PZBlZal.1Wert run data modify storage block-zaehler:v1daten "EigBlZal.1Argumente".Block set from storage block-zaehler:v1daten "EigBlZal.1Liste"[-1].Block
execute if score VarBlZal.1Schleife PZBlZal.1Wert < VarBlZal.1Liste PZBlZal.1Wert run function block-zaehler:v1ausgabe with storage block-zaehler:v1daten "EigBlZal.1Argumente"
