
scoreboard objectives add PZZufG.2Wert trigger ["Zufallsgenerator.2: ",{"text":"Wert der Variablen","bold":true}]
scoreboard players set VarZufG.2Wahrheitswert PZZufG.2Wert 1

data merge storage zufallsgenerator:v2daten {EigZufG.2Bool:'{"text":"wahr","color":"green","bold":true}'}

#scoreboard objectives add PZZufG.1Wert trigger ["Zufallsgenerator.1: ",{"text":"Zufallswert","bold":true}]

#give @a[distance=..15] minecraft:stick{EigZufG.1Alle:true,EigZufG.1Felder:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Zufallsgenerator","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um zufällige Zahlenwerte"','"zu generaieren."'] } }


#tag @a[distance=..25,nbt={SelectedItem:{tag:{EigZufG.1Felder:true} } }] add EtiZufG.1Generator

#scoreboard players set @a[tag=EtiZufG.1Generator,tag=!EtiZufG.1Nachricht] PZZufG.1Ausl -99


#execute as @a[tag=EtiZufG.1Generator] unless entity @s[scores={PZZufG.1Ausl=0}] run

#execute if entity @a[distance=..25,scores={PZZufG.1Wert=1}] run effect clear @e[type=minecraft:armor_stand,tag=EtiZufG.1Alle] minecraft:glowing
#execute if entity @a[distance=..25,scores={PZZufG.1Wert=1}] run effect give @e[type=minecraft:armor_stand,tag=EtiZufG.1Alle,sort=random,limit=1] minecraft:glowing 999999 1 false

#execute as @a[distance=..25,tag=EtiZufG.1Generator] unless entity @s[scores={PZZufG.1Wert=0}] run tellraw @s ["Zufallsgenerator.1: ",{"text":"\nleuchten(zufall)","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für einen zufällig ausgewählten Standort für den Redstone-Block"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.1Wert set 1"} }]
#execute as @a[distance=..25] unless entity @s[scores={PZZufG.1Wert=0}] run scoreboard players enable @s PZZufG.1Wert
#execute as @a[distance=..25] unless entity @s[scores={PZZufG.1Wert=0}] run scoreboard players set @s PZZufG.1Wert 0

#tag @a[tag=EtiZufG.1Generator,tag=!EtiZufG.1Nachricht] add EtiZufG.1Nachricht
#tag @a[tag=!EtiZufG.1Generator,tag=EtiZufG.1Nachricht] remove EtiZufG.1Nachricht

#tag @a[tag=EtiZufG.1Generator] remove EtiZufG.1Generator
