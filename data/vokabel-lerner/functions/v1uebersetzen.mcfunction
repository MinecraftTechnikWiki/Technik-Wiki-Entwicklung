
#$execute store success score VarVokLe.1Ergebnis PZVokLe.1Ausl run data modify storage vokabel-lerner:v1daten "EigVokLe.1Wort"[0] set from storage vokabel-lerner:v1daten "EigVokLe.1Worte"[$(Index)][0]

$execute store success score VarVokLe.1Ergebnis PZVokLe.1Ausl run data modify storage vokabel-lerner:v1daten "EigVokLe.1Worte"[$(Index)][0] set from storage vokabel-lerner:v1daten "EigVokLe.1Wort"[0]

execute if score VarVokLe.1Ergebnis PZVokLe.1Ausl matches 0 run tellraw @s ["Vokabel-Lerner.1:\n",{"text":"uebersetzung == ","bold":true},{"text":"wahr","color":"green","bold":true}]

execute if score VarVokLe.1Ergebnis PZVokLe.1Ausl matches 1 run tellraw @s ["Vokabel-Lerner.1:\n",{"text":"uebersetzung == ","bold":true},{"text":"falsch","color":"red","bold":true}]

tellraw @s ["",{"storage":"vokabel-lerner:v1daten","nbt":"\"EigVokLe.1Wort\"[0]","color":"gold","bold":true},{"text":" == ","bold":true},{"storage":"vokabel-lerner:v1daten","nbt":"\"EigVokLe.1Wort\"[1]","color":"yellow","bold":true}]
