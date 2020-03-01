

scoreboard players add VarStaMa.3Abstand PZStaMa.3Wert 5
#tellraw @a ["",{"score":{"name":"VarStaMa.3Abstand","objective":"PZStaMa.3Wert"}}, " ",{"score":{"name":"VarStaMa.3Variable","objective":"PZStaMa.3Wert"}}]

execute if score VarStaMa.3Abstand PZStaMa.3Wert = VarStaMa.3Variable PZStaMa.3Wert run function standort-markierung:v3partikel
#execute if score VarStaMa.3Abstand PZStaMa.3Wert < VarStaMa.3Variable PZStaMa.3Wert run say abstand
execute if score VarStaMa.3Abstand PZStaMa.3Wert < VarStaMa.3Variable PZStaMa.3Wert positioned ^5 ^ ^-5 run function standort-markierung:v3abstand
