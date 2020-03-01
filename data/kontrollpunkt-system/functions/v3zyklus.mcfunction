# Der nächstgelegene Spieler in einem Umkreis von 25 Metern der in keinen der beiden Teams ist und auf einer goldenen Wägeplatte mit Quarzblock steht, erhält ein Etikett.
execute as @p[distance=..35,tag=!EtiKontPS.3KeinTeam,team=!TMKontPS.3ROT,team=!TMKontPS.3BLAU] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block run tag @s add EtiKontPS.3KeinTeam

# Wenn es einen Spieler gibt der keinem der beiden Teams angehört, wird die aktuelle Anzahl der Team-Mitglieder der beiden Teams ausgelesen und in Variablen gespeichert.
execute if entity @p[tag=EtiKontPS.3KeinTeam] store result score VarKontPS.3ROT PZKontPS.3Wurf run team list TMKontPS.3ROT
execute if entity @p[tag=EtiKontPS.3KeinTeam] store result score VarKontPS.3BLAU PZKontPS.3Wurf run team list TMKontPS.3BLAU

# Wenn das rote Team weniger oder gleich viele Mitglieder wie das balue Team haben, dann wird der Spieler in das rote gesetzt ansonsten in das blaue Team.
execute as @p[tag=EtiKontPS.3KeinTeam] if score VarKontPS.3ROT PZKontPS.3Wurf <= VarKontPS.3BLAU PZKontPS.3Wurf run team join TMKontPS.3ROT @s
execute as @p[tag=EtiKontPS.3KeinTeam] if score VarKontPS.3ROT PZKontPS.3Wurf > VarKontPS.3BLAU PZKontPS.3Wurf run team join TMKontPS.3BLAU @s

# Anschließend wird das Etikett wieder entfernt.
tag @p[tag=EtiKontPS.3KeinTeam] remove EtiKontPS.3KeinTeam

# Wenn rote Spieler auf einer Wägeplatte mit Quarzblock stehen, werden alle aktuellen Kontrollpunkte des roten Teams umbenannt.
execute at @a[team=TMKontPS.3ROT] if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3TeamROT] as @e[type=minecraft:armor_stand,tag=EtiKontPS.3TeamROT,tag=!EtiKontPS.3Etappe] run data merge entity @s {CustomName:'{"text":"Team ROT","color":"red","bold":true}',Tags:["EtiKontPS.3Alle","EtiKontPS.3TeamROT","EtiKontPS.3Etappe"]}

# Wenn blaue Spieler auf einer Wägeplatte mit Quarzblock stehen, werden alle aktuellen Kontrollpunkte des blauen Teams umbenannt.
execute at @a[team=TMKontPS.3BLAU] if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3TeamBLAU] as @e[type=minecraft:armor_stand,tag=EtiKontPS.3TeamBLAU,tag=!EtiKontPS.3Etappe] run data merge entity @s {CustomName:'{"text":"Team BLAU","color":"blue","bold":true}',Tags:["EtiKontPS.3Alle","EtiKontPS.3TeamBLAU","EtiKontPS.3Etappe"]}

# Wenn Spieler der Teams auf Wägeplatten mit Quarzblöcken laufen und sich dort noch kein Kontrollpunkt befindet, wird ein neuer für das entsprechende Team erzeugt.
execute at @a[team=TMKontPS.3ROT] if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3TeamROT] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":">>Team ROT<<","color":"red","bold":true}',Tags:["EtiKontPS.3Alle","EtiKontPS.3TeamROT"] }
execute at @a[team=TMKontPS.3BLAU] if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3TeamBLAU] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":">>Team BLAU<<","color":"blue","bold":true}',Tags:["EtiKontPS.3Alle","EtiKontPS.3TeamBLAU"] }

# Wenn der Spieler auf einer Wägeplatte mit Quarzblock läuft bewegt sich der Kontrollpunkt mit, damit die letzte Ausrichtung mit gespeichert wird.
execute as @a[team=TMKontPS.3ROT] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block run teleport @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3TeamROT] @s
execute as @a[team=TMKontPS.3BLAU] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block run teleport @e[distance=..3,type=minecraft:armor_stand,tag=EtiKontPS.3TeamBLAU] @s

# Wenn der Spieler auf Diamantblöcke läuft oder fällt, erhält den Wert eins, welchen er auch bekommen würde, wenn er das Totem aus dem Inventar durch Q wirft. Anschließend wird das Totem in seiner Umgebung entfernt und der Spieler wird zu dem Kontrollpunkt zurück teleportiert.
execute as @a[distance=..35,team=!] at @s if block ~ ~-1 ~ minecraft:diamond_block run scoreboard players set @s PZKontPS.3Wurf 1
execute at @a[scores={PZKontPS.3Wurf=1..}] run kill @e[distance=..3,type=item,nbt={Item:{tag:{kontrollpunkt-system:"v3gegenstand"} } },sort=nearest,limit=1]
clear @a[scores={PZKontPS.3Wurf=1..}] minecraft:totem_of_undying{kontrollpunkt-system:"v3gegenstand"}
teleport @a[team=TMKontPS.3ROT,scores={PZKontPS.3Wurf=1..}] @e[type=minecraft:armor_stand,tag=EtiKontPS.3TeamROT,tag=!EtiKontPS.3Etappe,sort=nearest,limit=1]
teleport @a[team=TMKontPS.3BLAU,scores={PZKontPS.3Wurf=1..}] @e[type=minecraft:armor_stand,tag=EtiKontPS.3TeamBLAU,tag=!EtiKontPS.3Etappe,sort=nearest,limit=1]

# Spieler die das Totem geworfen haben, erhalten das Totem in ihr Inventar zurück und der Wert wird wieder auf null gesetzt.
replaceitem entity @a[scores={PZKontPS.3Wurf=1..}] weapon.mainhand minecraft:totem_of_undying{kontrollpunkt-system:"v3gegenstand",display:{Name:'{"text":"Zurückkehren","color":"yellow","bold":true}',Lore:['"Wirf den Gegenstand mit Q"','"um zum letzten"','"Kontrollpunkt zurück zu kehren"']} }
scoreboard players set @a[scores={PZKontPS.3Wurf=1..}] PZKontPS.3Wurf 0
