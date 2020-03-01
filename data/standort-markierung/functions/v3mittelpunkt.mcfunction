

scoreboard players set VarStaMa.3Abstand PZStaMa.3Wert 0
scoreboard players operation VarStaMa.3Laenge PZStaMa.3Wert = VarStaMa.3Variable PZStaMa.3Wert
scoreboard players operation VarStaMa.3Laenge PZStaMa.3Wert *= KonstStaMa.3MINUSEINS PZStaMa.3Wert

#tellraw @a ["",{"score":{"name":"VarStaMa.3Laenge","objective":"PZStaMa.3Wert"}}, " ",{"score":{"name":"VarStaMa.3Variable","objective":"PZStaMa.3Wert"}}]
execute positioned ^5 ^ ^-5 run function standort-markierung:v3abstand

scoreboard players set VarStaMa.3Abstand PZStaMa.3Wert 0
scoreboard players operation VarStaMa.3Laenge PZStaMa.3Wert = VarStaMa.3Variable PZStaMa.3Wert
scoreboard players operation VarStaMa.3Laenge PZStaMa.3Wert *= KonstStaMa.3MINUSEINS PZStaMa.3Wert
execute rotated ~90 ~ positioned ^5 ^ ^-5 run function standort-markierung:v3abstand

scoreboard players set VarStaMa.3Abstand PZStaMa.3Wert 0
scoreboard players operation VarStaMa.3Laenge PZStaMa.3Wert = VarStaMa.3Variable PZStaMa.3Wert
scoreboard players operation VarStaMa.3Laenge PZStaMa.3Wert *= KonstStaMa.3MINUSEINS PZStaMa.3Wert
execute rotated ~180 ~ positioned ^5 ^ ^-5 run function standort-markierung:v3abstand

scoreboard players set VarStaMa.3Abstand PZStaMa.3Wert 0
scoreboard players operation VarStaMa.3Laenge PZStaMa.3Wert = VarStaMa.3Variable PZStaMa.3Wert
scoreboard players operation VarStaMa.3Laenge PZStaMa.3Wert *= KonstStaMa.3MINUSEINS PZStaMa.3Wert
execute rotated ~270 ~ positioned ^5 ^ ^-5 run function standort-markierung:v3abstand
