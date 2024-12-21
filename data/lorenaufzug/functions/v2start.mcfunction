#give @a[distance=..15] minecraft:armor_stand{EigLoAuf.2:true,display:{Name:'{"text":"Start","color":"aqua","bold":true}',Lore:['"Platziere den Rüstungsständer"','"Um den Eingang des"','"Aufzuges zu bauen"']},EntityTag:{Small:true,Marker:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Start","color":"aqua","bold":true}',Tags:["EtiLoAuf.2Alle","EtiLoAuf.2Start"]} }

#give @a[distance=..15] minecraft:armor_stand{EigLoAuf.2:true,display:{Name:'{"text":"Ziel","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"Um den Ausgang des"','"Aufzuges zu bauen"']},EntityTag:{Small:true,Marker:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Ziel","color":"gold","bold":true}',Tags:["EtiLoAuf.2Alle","EtiLoAuf.2Ziel"]} }

#execute at @e[type=minecraft:armor_stand,tag=EtiLoAuf.2Start] run tag @e[distance=..1,type=minecraft:minecart,tag=!EtiLoAuf.2Hoch,sort=nearest,limit=1] add EtiLoAuf.2Hoch
#execute as @e[type=minecraft:minecart,tag=EtiLoAuf.2Hoch] at @s run teleport @s ^ ^0.5 ^ facing entity @e[type=minecraft:armor_stand,tag=EtiLoAuf.2Ziel,sort=nearest,limit=1]
#execute at @e[type=minecraft:armor_stand,tag=EtiLoAuf.2Ziel] positioned ~ ~1 ~ run tag @e[distance=..2,type=minecraft:minecart,tag=EtiLoAuf.2Hoch,sort=nearest,limit=1] remove EtiLoAuf.2Hoch

#clear @a minecraft:armor_stand{EigLoAuf.2:true}
#kill @e[tag=EtiLoAuf.2Alle]

#execute as @e[type=minecraft:minecart,distance=..25] at @s if block ~1 ~-1 ~ minecraft:glass if block ~ ~-1 ~1 minecraft:glass if block ~ ~-1 ~-1 minecraft:glass run teleport @s ~ ~0.5 ~

#execute as @e[type=minecraft:minecart,distance=..25] at @s if block ~-1 ~1 ~ minecraft:glass if block ~ ~1 ~1 minecraft:glass if block ~ ~1 ~-1 minecraft:glass run teleport @s ~ ~-0.5 ~

# Das Punkte-Ziel für die Zeit-Berechnung und die Richtungswerte wird erstellt.
scoreboard objectives add PZLoAuf.2Wert dummy ["Lorenaufzug.2: ",{"text":"Zeit und Richtung","bold":true}]

# Allen Spielern im Umkreis wird eine spezielle Lore gegeben, die man platzieren muss um die hohen Geschwindigkeiten zu erhalten.
#give @a[distance=..15] minecraft:minecart{EigLoAuf.2Alle:true,display:{Name:'{"text":"Lorenaufzug-Lore","color":"dark_purple","bold":true}',Lore:['"Platziere die Lore"','"auf die Schiene"','"und bewege sie mit WASD,"','"auf einen Aufzug zu."'] } }

give @a[distance=..15] minecraft:minecart[minecraft:lore=['"Platziere die Lore"','"auf die Schiene"','"und bewege sie mit WASD,"','"auf einen Aufzug zu."'],minecraft:custom_name='{"text":"Lorenaufzug-Lore","color":"dark_purple","bold":true}',minecraft:custom_data={EigLoAuf.2Alle:true}]

# Damit man sich deutlich davon entfernen kann.
forceload add ~ ~









scoreboard objectives add PZLoAuf.1Wert dummy ["Lorenaufzug.1: ",{"text":"Zeit und Richtung","bold":true}]

# Allen Spielern im Umkreis wird eine spezielle Lore gegeben, die man platzieren muss um die hohen Geschwindigkeiten zu erhalten.
#give @a[distance=..15] minecraft:minecart{EigLoAuf.1Alle:true,display:{Name:'{"text":"Lorenaufzug-Lore","color":"dark_purple","bold":true}',Lore:['"Platziere die Lore"','"auf die Schiene"','"und bewege sie mit WASD,"','"auf einen Aufzug zu."'] } }

give @a[distance=..15] minecraft:minecart[minecraft:lore=['"Platziere die Lore"','"auf die Schiene"','"und bewege sie mit WASD,"','"auf einen Aufzug zu."'],minecraft:custom_name='{"text":"Lorenaufzug-Lore","color":"dark_purple","bold":true}',minecraft:custom_data={EigLoAuf.1Alle:true}]

# Damit man sich deutlich davon entfernen kann.
forceload add ~ ~




# Jeden Tick wird die Variable um eins erhöht, um eine Viertel-Sekunde zu erfassen.
scoreboard players add VarLoAuf.1Tick PZLoAuf.1Wert 1

# Wenn die spezielle Lore platziert wird, so besitzt sie eine bestimmte Namens-Eigenschaft, die geprüft werden kann.
execute if score VarLoAuf.1Tick PZLoAuf.1Wert matches 5.. as @e[type=minecraft:minecart,tag=!EtiLoAuf.1Lore,name="Lorenaufzug-Lore"] run data merge entity @s {CustomNameVisible:true,Tags:["EtiLoAuf.1Alle","EtiLoAuf.1Lore"]}

# Nur wenn der Spieler in der speziellen Lore sitzt, wird die Sitzen-Funktion geladen.
#execute if score VarLoAuf.1Tick PZLoAuf.1Wert matches 5.. as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore] unless score @s PZLoAuf.1Wert matches 0 at @s if block ~ ~-1 ~ minecraft:polished_andesite on passengers on vehicle store success score @s PZLoAuf.1Wert summon minecraft:interaction run ride @e[distance=..1,type=minecraft:minecart,tag=EtiLoAuf.1Lore,sort=nearest,limit=1] mount @s

#execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore] on vehicle at @s if block ~ ~-1 ~ minecraft:polished_andesite store success score @s PZLoAuf.1Wert run teleport @s ~ ~ ~ -90 ~


execute if score VarLoAuf.1Tick PZLoAuf.1Wert matches 5.. as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore] on passengers on vehicle at @s if block ~ ~-1 ~ minecraft:polished_andesite store success score @s PZLoAuf.1Wert summon minecraft:interaction run ride @e[distance=..1,type=minecraft:minecart,tag=EtiLoAuf.1Lore,sort=nearest,limit=1] mount @s

execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s store success score @s PZLoAuf.1Wert if block ~1 ~ ~ minecraft:polished_andesite
execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s[scores={PZLoAuf.1Wert=0}] store success score @s PZLoAuf.1Wert if block ~-1 ~ ~ minecraft:polished_andesite
execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s[scores={PZLoAuf.1Wert=0}] store success score @s PZLoAuf.1Wert if block ~ ~ ~1 minecraft:polished_andesite
execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s[scores={PZLoAuf.1Wert=0}] store success score @s PZLoAuf.1Wert if block ~ ~ ~-1 minecraft:polished_andesite


execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s[scores={PZLoAuf.1Wert=1}] run teleport @s ~ ~1 ~

execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s[scores={PZLoAuf.1Wert=0}] if block ~1 ~ ~ #minecraft:rails run teleport @s ~1 ~ ~
execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s[scores={PZLoAuf.1Wert=0}] if block ~-1 ~ ~ #minecraft:rails run teleport @s ~-1 ~ ~
execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s[scores={PZLoAuf.1Wert=0}] if block ~ ~ ~1 #minecraft:rails run teleport @s ~ ~ ~1
execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle at @s[scores={PZLoAuf.1Wert=0}] if block ~ ~ ~-1 #minecraft:rails run teleport @s ~ ~ ~-1

execute as @e[type=minecraft:minecart,tag=EtiLoAuf.1Lore,scores={PZLoAuf.1Wert=1}] on vehicle run kill @s[scores={PZLoAuf.1Wert=0}]

# Die Variable wird wieder auf null gesetzt, damit es wieder von vorne los gehen kann.
execute if score VarLoAuf.1Tick PZLoAuf.1Wert matches 5.. run scoreboard players set VarLoAuf.1Tick PZLoAuf.1Wert 0




# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZLoAuf.1Wert

# Die Lore wird aus dem Inventar gelöscht, da sie beim Abbaue droppt und andere Eigenschaften besitzt, werden beide Varianten geprüft und gelöscht.
clear @a minecraft:minecart[minecraft:custom_data={EigLoAuf.1Alle:true}]
clear @a minecraft:minecart[minecraft:custom_name='{"bold":true,"color":"dark_purple","text":"Lorenaufzug-Lore"}']

# Falls die Lore gedroppt wurde, wird sie entfernt und die platzierte Lore ebenso.
execute as @e[type=minecraft:item] unless entity @s[nbt=!{Item:{components:{"minecraft:custom_data":{EigLoAuf.1Alle:true} } } },nbt=!{Item:{components:{"minecraft:custom_name":'{"bold":true,"color":"dark_purple","text":"Lorenaufzug-Lore"}'} } }] run kill @s
execute as @e[tag=EtiLoAuf.1Alle] on vehicle run kill @s
kill @e[tag=EtiLoAuf.1Alle]

# Der Chunk wird wieder entladen.
forceload remove ~ ~