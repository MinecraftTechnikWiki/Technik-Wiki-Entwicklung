# Die beiden Punkte-Ziele werden entfernt.
scoreboard objectives remove PZDrRezM.1Drop
scoreboard objectives remove PZDrRezM.1Stap

#Die Rezept-Gegenstände werden gelöscht.
clear @a *[minecraft:custom_data~{EigDrRezM.1Alle:true}]

# Falls man die Rezept-Gegenstände gedroppt hat, werden sie ebenfalls gelöscht.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigDrRezM.1Alle:true}] run kill @s

# Da auch Drops die nichts mit dieser Maschine zu tun haben, das Etikett besitzen können, wird ihnen das entfernt.
tag @e[type=minecraft:item,tag=EtiDrRezM.1Drop] remove EtiDrRezM.1Drop
