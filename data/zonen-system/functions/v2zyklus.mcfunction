# Wenn der Spieler keine Nummer hat, wir die Funktion aufgerufen
#execute if entity @s[tag=!EtiZone.2SpielerNummer] run function zonen-system:v2schritt1

# Hat der Spieler eine Truhe geworfen, wird die Funktion dafür geladen
#execute if entity @s[scores={PZZone.2Truhe=1..}] run function zonen-system:v2schritt2



#scoreboard objectives add change dummy
#scoreboard objectives add copy dummy

#execute as @p at @s store success score @s change run tag @e[sort=nearest,limit=1,type=armor_stand,tag=target] add anchor
#execute as @s[scores={change=1}] at @s run tag @e[sort=furthest,limit=1,tag=anchor] remove anchor
#tellraw @s[scores={change=1}] "change"
#tag @s[scores={change=1}] remove plot

execute as @p run scoreboard players operation @s copy = @s change
execute as @p at @s store result score @p change run data get entity @e[tag=anchor,sort=nearest,limit=1] UUIDMost 0.0000000001

execute as @p unless score @s copy = @s change run tag @s remove plot


execute as @p at @s at @e[sort=nearest,limit=1,tag=anchor] positioned ~-5 ~-5 ~-5 run tellraw @s[tag=!plot,dx=10,dy=10,dz=10] "drinnen"
execute as @p at @s at @e[sort=nearest,limit=1,tag=anchor] positioned ~-5 ~-5 ~-5 run tag @s[tag=!plot,dx=10,dy=10,dz=10] add plot

execute as @p at @s at @e[sort=nearest,limit=1,tag=anchor] positioned ~-5 ~-5 ~-5 unless entity @s[dx=10,dy=10,dz=10] run tellraw @s[tag=plot] "draußen"
execute as @p at @s at @e[sort=nearest,limit=1,tag=anchor] positioned ~-5 ~-5 ~-5 unless entity @s[dx=10,dy=10,dz=10] run tag @s[tag=plot] remove plot








execute as @a[distance=..25] run scoreboard players operation @s PZMsRad.1Vergl = @s PZMsRad.1Slot
execute as @a[distance=..25] store result score @s PZMsRad.1Slot run data get entity @s SelectedItemSlot
execute as @a[distance=..25] run scoreboard players operation @s PZMsRad.1Vergl -= @s PZMsRad.1Slot
execute as @a[distance=..25,scores={PZMsRad.1Vergl=-8..8}] unless entity @s[scores={PZMsRad.1Vergl=-7..0}] unless entity @s[scores={PZMsRad.1Vergl=8}] run title @s actionbar ["",{"text":"[ ","color":"gold","bold":true},{"text":"←","color":"dark_green","bold":true},{"text":" ]","color":"gold","bold":true} ]
execute as @a[distance=..25,scores={PZMsRad.1Vergl=-8..8}] unless entity @s[scores={PZMsRad.1Vergl=0..7}] unless entity @s[scores={PZMsRad.1Vergl=-8}] run title @s actionbar ["",{"text":"[ ","color":"gold","bold":true},{"text":"→","color":"dark_red","bold":true},{"text":" ]","color":"gold","bold":true} ]
