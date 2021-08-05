
execute as @e[type=minecraft:armor_stand,tag=EtiKNeur.1Erstellen] at @s run function kuenstliches_neuron:v1erstellen

tag @a[nbt={SelectedItem:{tag:{EigKNeur.1Steuern:true} } }] add EtiKNeur.1Ausgewaehlt

execute at @a[tag=EtiKNeur.1Ausgewaehlt] run effect give @e[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,tag=EtiKNeur.1Wert,sort=nearest,limit=1] minecraft:glowing 1 1 false
execute at @a[tag=EtiKNeur.1Ausgewaehlt] run effect give @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,tag=EtiKNeur.1Bool,sort=nearest,limit=1] minecraft:glowing 1 1 true

scoreboard players set @a[tag=EtiKNeur.1Ausgewaehlt,tag=!EtiKNeur.1Auswahl] PZKNeur.1Wert -99
execute if entity @e[type=minecraft:armor_stand,tag=EtiKNeur.1Ausloeser] as @a[tag=EtiKNeur.1Ausgewaehlt] unless entity @s[scores={PZKNeur.1Wert=0}] at @s run function kuenstliches_neuron:v1ausloeser
tag @a[tag=EtiKNeur.1Ausgewaehlt,tag=!EtiKNeur.1Auswahl] add EtiKNeur.1Auswahl
tag @a[tag=!EtiKNeur.1Ausgewaehlt,tag=EtiKNeur.1Auswahl] remove EtiKNeur.1Auswahl
tag @a[tag=EtiKNeur.1Ausgewaehlt] remove EtiKNeur.1Ausgewaehlt


#scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,tag=EtiKNeur.1Wert] PZKNeur.1Wert += @e[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,tag=EtiKNeur.1Wert]


#execute if entity @s[scores={PZKNeur.1Wert=1..}] run data modify entity @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,sort=nearest,limit=1] CustomName set from entity @e[type=minecraft:armor_stand,tag=EtiKNeur.1Wert,sort=nearest,limit=1] CustomName
