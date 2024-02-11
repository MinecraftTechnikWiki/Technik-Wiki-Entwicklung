# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZLoAuf.2Wert

# Die Lore wird aus dem Inventar gelöscht, da sie beim Abbaue droppt und andere Eigenschaften besitzt, werden beide Varianten geprüft und gelöscht.
clear @a minecraft:minecart{EigLoAuf.2Alle:true}
clear @a minecraft:minecart{display:{Name:'{"bold":true,"color":"dark_purple","text":"Lorenaufzug-Lore"}'} }

# Falls die Lore gedroppt wurde, wird sie entfernt und die platzierte Lore ebenso.
execute as @e[type=minecraft:item] unless entity @s[nbt=!{Item:{tag:{EigLoAuf.2Alle:true} } },nbt=!{Item:{tag:{display:{Name:'{"bold":true,"color":"dark_purple","text":"Lorenaufzug-Lore"}'} } } }] run kill @s
kill @e[tag=EtiLoAuf.2Alle]

# Der Chunk wird wieder entladen.
forceload remove ~ ~