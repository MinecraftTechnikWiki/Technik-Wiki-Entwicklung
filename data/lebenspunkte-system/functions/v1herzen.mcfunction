# Der Kreatur wird ein Etikett gegeben um es erkennen zu können
tag @s add EtiLebP.1Selbst

# Wenn der zählende Punktestand der Kreatur kleiner oder gleich dem aktuellen Leben entspricht, wird in das Schild mit den Herzen der Kreatur ein rotes Herz hinzugefügt, ansonsten ein graues
execute if score @s PZLebP.1Vergl <= @s PZLebP.1Leben run data merge block ~ ~ ~ {Text1:'[{"entity":"@e[tag=EtiLebP.1Selbst,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"entity":"@e[tag=EtiLebP.1HerzRot,sort=nearest,limit=1]","nbt":"CustomName","interpret":true}]'}
execute if score @s PZLebP.1Vergl > @s PZLebP.1Leben run data merge block ~ ~ ~ {Text1:'[{"entity":"@e[tag=EtiLebP.1Selbst,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"entity":"@e[tag=EtiLebP.1Herz,sort=nearest,limit=1]","nbt":"CustomName","interpret":true}]'}

# Nachdem der Name samt Herzen in das Schild gespeichert wurde, wird das Etikett nicht mehr benötigt
tag @s remove EtiLebP.1Selbst

# Der Name mit einem neuen Herz dabei wird in den Namen der Kreatur gespeichert
data modify entity @s CustomName set from block ~ ~ ~ Text1

# Der zählende Punktestand wird um zwei erhöht und wenn er kleiner oder gleich dem maximalen Leben entspricht, wird diese Funktion sich selbst aufrufen
scoreboard players add @s PZLebP.1Vergl 2
execute if score @s PZLebP.1Vergl <= @s PZLebP.1MaxLeb as @s run function lebenspunkte-system:v1herzen
