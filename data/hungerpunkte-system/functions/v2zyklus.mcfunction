# Alle 1000 Ticks wird der Wasserhaushalt des Spielers um einen Punkt gesenkt
scoreboard players remove @a[scores={PZHungS.2Zeit=100,PZHungS.2Trinken=1..}] PZHungS.2Trinken 1
scoreboard players set @a[scores={PZHungS.2Zeit=1000..}] PZHungS.2Zeit 0

# Wenn der Spieler zu viel Flüssigkeit zu sich genommen hat, erhält er eine Warnung und es entstehen ganz viele Tropfen und die Punkte werden auf 100 abgesenkt
title @a[scores={PZHungS.2Trinken=100..101}] actionbar ["",{"text":"Trinke nicht zu viel, du platzt gleich!","color":"dark_blue","bold":true}]
scoreboard players remove @a[scores={PZHungS.2Trinken=100..}] PZHungS.2Trinken 1
effect give @a[scores={PZHungS.2Trinken=100..}] minecraft:nausea 1 4 true
execute at @a[scores={PZHungS.2Trinken=100..}] run particle minecraft:fishing ~ ~1 ~ 0.2 0.4 0.2 0.01 100 force @a[distance=..25]

# Je nach dem was der Spieler an Flüssigkeit zu sich nimmt, wird der Wasserhaushalt entsprechend angehoben
scoreboard players add @a[scores={PZHungS.2WasFl=1..}] PZHungS.2Trinken 15
scoreboard players set @a[scores={PZHungS.2WasFl=1..}] PZHungS.2WasFl 0

scoreboard players add @a[scores={PZHungS.2Milch=1..}] PZHungS.2Trinken 45
scoreboard players set @a[scores={PZHungS.2Milch=1..}] PZHungS.2Milch 0

scoreboard players add @a[scores={PZHungS.2Ragout=1..}] PZHungS.2Trinken 5
scoreboard players set @a[scores={PZHungS.2Ragout=1..}] PZHungS.2Ragout 0

scoreboard players add @a[scores={PZHungS.2PilzS=1..}] PZHungS.2Trinken 5
scoreboard players set @a[scores={PZHungS.2PilzS=1..}] PZHungS.2PilzS 0

scoreboard players add @a[scores={PZHungS.2Bortsch=1..}] PZHungS.2Trinken 5
scoreboard players set @a[scores={PZHungS.2Bortsch=1..}] PZHungS.2Bortsch 0

scoreboard players add @a[scores={PZHungS.2Melone=1..}] PZHungS.2Trinken 5
scoreboard players set @a[scores={PZHungS.2Melone=1..}] PZHungS.2Melone 0

# Wenn der Wasserhaushalt nur noch bei der Hälfte liegt, erhält der Spieler eine kurze Warnung und ein Etikett, damit die Warnung nur einmal erscheint
title @a[tag=!EtiHungS.2HaelfteWasser,scores={PZHungS.2Trinken=49..51}] actionbar ["",{"text":"Dein Wasserhaushalt liegt aktuell nur noch bei der Hälfte!","color":"dark_red","bold":true}]
tag @a[tag=!EtiHungS.2HaelfteWasser,scores={PZHungS.2Trinken=49..51}] add EtiHungS.2HaelfteWasser

# Wenn der Spieler eine Warnung mit Etikett erhalten hatte, wird dieses wieder entfernt, falls er sich darüber oder darunter befindet
tag @a[tag=EtiHungS.2HaelfteWasser,scores={PZHungS.2Trinken=..48}] remove EtiHungS.2HaelfteWasser
tag @a[tag=EtiHungS.2HaelfteWasser,scores={PZHungS.2Trinken=52..}] remove EtiHungS.2HaelfteWasser

# Wenn der Spieler fast oder kein Wasser mehr besitzt, erhält er eine permanente Warnung und den Hunger- sowie den Langsamkeitseffekt
title @a[scores={PZHungS.2Trinken=0..2}] actionbar ["",{"text":"Trinke was, um nicht zu dehydrieren!","color":"dark_purple","bold":true}]
effect give @a[scores={PZHungS.2Trinken=0..2}] minecraft:hunger 5 255 true
effect give @a[scores={PZHungS.2Trinken=0..2}] minecraft:slowness 1 4 true
