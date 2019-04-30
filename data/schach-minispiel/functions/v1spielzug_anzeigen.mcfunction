
summon minecraft:armor_stand ~ ~1 ~ {Invisible:true,NoGravity:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl","EtiSchMS.1BodenZugAuswahl"],Passengers:[{id:"minecraft:falling_block",NoGravity:true,Time:-2147483648,Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl"],BlockState:{Name:"minecraft:lime_concrete"}},{id:"minecraft:shulker",NoAI:true,Silent:true,Color:5b,DeathLootTable:"minecraft:empty",Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl","EtiSchMS.1Leuchten"]}]}

execute as @e[tag=EtiSchMS.1BodenZugAuswahl,sort=nearest,limit=1] facing entity @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,sort=nearest,limit=1] feet rotated ~ 0 positioned ~ ~1 ~ run function schach-minispiel:v1spielzug_anzeigen_barriere
