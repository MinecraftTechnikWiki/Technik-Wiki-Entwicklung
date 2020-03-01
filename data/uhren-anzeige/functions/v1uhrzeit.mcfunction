# Die Tick-Variable wird wieder auf null gesetzt.
scoreboard players set #VarUhrA.1Tick PZUhrA.1Zeichen 0

# Jede Sekunde wird der Wert des Sekunden-Rüstungsständers erhöht und wenn er den Wert zehn erreicht hat, wird er auf null zurückgesetzt und der Erfolg von diesem Befehl wird in eine Erfolgs-Variable gespeichert.
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1Sekunden] PZUhrA.1Zeichen 1
execute store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Sekunden,scores={PZUhrA.1Zeichen=10..}] PZUhrA.1Zeichen 0

# Wenn die Sekunde den Wert erreicht, wird die Zehner-Sekunden-Ziffer um eins erhöht. Gleichzeitig wird der Wert der Zehner-Sekunde wieder auf null gesetzt, wenn er den Wert sechs besitzt. Davon wird der Erfolg des Befehls in die gleichnamige Variable gespeichert.
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1SekundenZehner] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1SekundenZehner,scores={PZUhrA.1Zeichen=6..}] PZUhrA.1Zeichen 0

# Wenn 60 Sekunden erreicht sind, wird die Minute um eins erhöht. Direkt im Anschluss wird die Minute wieder auf null gesetzt, wenn sie den Wert zehn erreicht hat. Davon wird der Erfolg wieder in die Erfolgs-Variable gespeichert.
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1Minuten] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Minuten,scores={PZUhrA.1Zeichen=10..}] PZUhrA.1Zeichen 0

# Wenn zehn Minuten erreicht sind, wird die Zehner-Minute um eins erhöht und wenn sie den Wert sechs erreicht wird sie wieder auf null gesetzt und das ganze wird in der Erfolgs-Variable gespeichert.
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1MinutenZehner] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1MinutenZehner,scores={PZUhrA.1Zeichen=6..}] PZUhrA.1Zeichen 0

# Wenn 60 Minuten erreicht sind, wird die Stunde um eins erhöht und wenn sie den Wert zehn erriecht wird sie auf null zurück gesetzt. Der Erfolg davon wird gespeichert.
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1Stunden] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Stunden,scores={PZUhrA.1Zeichen=10..}] PZUhrA.1Zeichen 0

# Wenn zehn Stunden erreicht sind wird die Zehner-Stunde um eins erhöht. Darunter wird geprüft ob zwei Zehner-Stunden und vier Stunden erreicht worden sind. Wenn das der Fall ist, werden beide auf null zurück und dies wird wieder in der Erfolgs-Variable gespeichert.
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1StundenZehner] PZUhrA.1Zeichen 1
execute store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen store result score @e[type=minecraft:armor_stand,tag=EtiUhrA.1Stunden,scores={PZUhrA.1Zeichen=4..}] PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1StundenZehner,scores={PZUhrA.1Zeichen=2..}] PZUhrA.1Zeichen 0

# Wenn 24 Stunden erreicht wurden, werden Sekunden und Minuten auf null zurück gesetzt.
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Sekunden] PZUhrA.1Zeichen 0
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1SekundenZehner] PZUhrA.1Zeichen 0
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Minuten] PZUhrA.1Zeichen 0
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1MinutenZehner] PZUhrA.1Zeichen 0
