
execute as @a[distance=..5,scores={PZBankA.2Ausl=1}] run function bankautomat:v2konto



tellraw @a[distance=..5,scores={PZBankA.2Ausl=-1,PZBankA.2Wert=0}] ["Bankautomat.2: ",{"text":"Du hast keine Smaragde auf deinem Konto um sie auszahlen zu lassen!","color":"red","bold":true} ]
give @a[distance=..5,scores={PZBankA.2Ausl=-1,PZBankA.2Wert=1..}] minecraft:emerald{EigBankA.2Alle:true,display:{Lore:['"Smaragde, Geld für dein Konto"']} } 1
scoreboard players remove @a[distance=..5,scores={PZBankA.2Ausl=-1,PZBankA.2Wert=1..}] PZBankA.2Wert 1




execute as @a[distance=..5] unless entity @s[scores={PZBankA.2Wert=0..}] run scoreboard players set @s PZBankA.2Wert 0
execute as @a[distance=..5] unless entity @s[scores={PZBankA.2Ausl=0}] run tellraw @s ["Bankautomat.2: ",{"text":"\nkontostand = ","bold":true},{"text":"kontostand + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Betrag + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBankA.2Ausl set 1"},"bold":true},{"text":"\nkontostand = ","bold":true},{"text":"kontostand - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Betrag - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBankA.2Ausl set -1"},"bold":true},{"text":"\nkontostand == ","bold":true},{"score":{"name":"@s","objective":"PZBankA.2Wert"},"color":"dark_purple","bold":true},{"text":"€","color":"dark_purple","bold":true}]

execute as @a[distance=..5] unless entity @s[scores={PZBankA.2Ausl=0}] run scoreboard players enable @s PZBankA.2Ausl
execute as @a[distance=..5] unless entity @s[scores={PZBankA.2Ausl=0}] run scoreboard players set @s PZBankA.2Ausl 0
execute as @a[scores={PZBankA.2Ausl=0..}] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiBankA.2Werkbank,sort=nearest,limit=1] run scoreboard players reset @s PZBankA.2Ausl
