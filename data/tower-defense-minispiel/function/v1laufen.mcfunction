



execute store success score VarTowDefMS.1Begrenzung PZTowDefMS.1Wert if block ^ ^-1 ^3 #tower-defense-minispiel:v1grenze

execute if score VarTowDefMS.1Begrenzung PZTowDefMS.1Wert matches 0 run return 0




execute if block ^-4 ^-1 ^ #tower-defense-minispiel:v1pfad run scoreboard players add @s PZTowDefMS.1Richtung 1

#execute if block ^-4 ^-1 ^ #tower-defense-minispiel:v1pfad run scoreboard players add @s PZTowDefMS.1Richtung 1

execute if block ^4 ^-1 ^ #tower-defense-minispiel:v1pfad run scoreboard players remove @s PZTowDefMS.1Richtung 1



#execute if block ^ ^-1 ^3 minecraft:smooth_quartz if block ^-4 ^-1 ^ #minecraft:mineable/shovel run scoreboard players add @s PZTowDefMS.1Richtung 1
#execute if block ^ ^-1 ^3 minecraft:smooth_quartz if block ^-4 ^-2 ^ #minecraft:mineable/shovel run scoreboard players add @s PZTowDefMS.1Richtung 1

#execute if block ^ ^-1 ^3 minecraft:smooth_quartz_slab if block ^-4 ^-1 ^ #minecraft:mineable/shovel run scoreboard players add @s PZTowDefMS.1Richtung 1
#execute if block ^ ^-1 ^3 minecraft:smooth_quartz_slab if block ^-4 ^-2 ^ #minecraft:mineable/shovel run scoreboard players add @s PZTowDefMS.1Richtung 1


#execute if block ^ ^-1 ^3 minecraft:smooth_quartz if block ^4 ^-1 ^ #minecraft:mineable/shovel run scoreboard players remove @s PZTowDefMS.1Richtung 1
#execute if block ^ ^-1 ^3 minecraft:smooth_quartz if block ^4 ^-2 ^ #minecraft:mineable/shovel run scoreboard players remove @s PZTowDefMS.1Richtung 1


scoreboard players set @s[scores={PZTowDefMS.1Richtung=4..}] PZTowDefMS.1Richtung 0
scoreboard players set @s[scores={PZTowDefMS.1Richtung=..-1}] PZTowDefMS.1Richtung 3