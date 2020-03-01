# Der ausführende Begleiter-Rüstungsständer bekommt zur Erkennung ein Etikett für sich selbst. Wenn kein Begleiter an der Position ist wird er selbst teleportiert ansonsten wird die Funktion um einen Meter weiter nochmaöl aufgerufen.
tag @s[tag=!EtiObjSt.8Selbst] add EtiObjSt.8Selbst
execute unless entity @e[distance=..0.4,type=minecraft:armor_stand,tag=EtiObjSt.8Begleiter,tag=!EtiObjSt.8Selbst] run teleport @s ~ ~ ~ ~ ~
execute if entity @e[distance=..0.4,type=minecraft:armor_stand,tag=EtiObjSt.8Begleiter,tag=!EtiObjSt.8Selbst] positioned ^ ^ ^1 run function objekt-steuerung:v8kettenposition
tag @s[tag=EtiObjSt.8Selbst] remove EtiObjSt.8Selbst
