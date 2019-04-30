
execute as @a[distance=..25] unless entity @s[scores={PZLaUIr.1Gross=0}] run scoreboard players enable @s PZLaUIr.1Gross
execute if entity @a[distance=..25,scores={PZLaUIr.1Gross=1}] if score #VarLaUIr.1Breite PZLaUIr.1Gross matches ..63 run scoreboard players add #VarLaUIr.1Breite PZLaUIr.1Gross 1
execute if entity @a[distance=..25,scores={PZLaUIr.1Gross=-1}] if score #VarLaUIr.1Breite PZLaUIr.1Gross matches 3.. run scoreboard players remove #VarLaUIr.1Breite PZLaUIr.1Gross 1
execute if entity @a[distance=..25,scores={PZLaUIr.1Gross=2}] if score #VarLaUIr.1Laenge PZLaUIr.1Gross matches ..63 run scoreboard players add #VarLaUIr.1Laenge PZLaUIr.1Gross 1
execute if entity @a[distance=..25,scores={PZLaUIr.1Gross=-2}] if score #VarLaUIr.1Laenge PZLaUIr.1Gross matches 3.. run scoreboard players remove #VarLaUIr.1Laenge PZLaUIr.1Gross 1

execute as @a[distance=..25] unless entity @s[scores={PZLaUIr.1Gross=0}] run tellraw @s ["Irrgarten.1: ",{"text":"\nbreite ("},{"text":"+1","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Breite +1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.1Gross set 1"},"bold":true},"|",{"text":"-1","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Breite -1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.1Gross set -1"},"bold":true},") = ",{"score":{"name":"#VarLaUIr.1Breite","objective":"PZLaUIr.1Gross"},"bold":true},{"text":"\nlänge  ("},{"text":"+1","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Länge +1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.1Gross set 2"},"bold":true},"|",{"text":"-1","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Länge -1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.1Gross set -2"},"bold":true},") = ",{"score":{"name":"#VarLaUIr.1Laenge","objective":"PZLaUIr.1Gross"},"bold":true}]
execute as @a[distance=..25] unless entity @s[scores={PZLaUIr.1Gross=0}] run scoreboard players set @s PZLaUIr.1Gross 0

execute as @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Erstellen] at @s align xz positioned ~0.5 ~ ~0.5 run function labyrinth_und_irrgarten:v1erstellen
execute as @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Generieren] at @s align xz positioned ~0.5 ~ ~0.5 run function labyrinth_und_irrgarten:v1generieren

kill @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Optionen]
