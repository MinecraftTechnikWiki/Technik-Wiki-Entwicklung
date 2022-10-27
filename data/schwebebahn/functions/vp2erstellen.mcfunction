# Der Rüstungsständer wird ausgerichtet.
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0

# Anschließend wird er umgedreht.
execute at @s run teleport @s ~ ~ ~ ~180 0

# Zuerst wird geprüft ob sich unter dem Rüstungsständer überhaupt eine Spur befindet und wenn nicht wird eine Fehlermeldung ausgegeben.
execute store result score @s PZSchwB.p2Wert if block ~ ~-1 ~ minecraft:stone_brick_stairs[half=bottom]
execute if entity @s[scores={PZSchwB.p2Wert=0}] run tellraw @p[distance=..5] ["Schwebebahn.erweitert.2:\n",{"text":"Es wurde unter der zu erzeugenden Schwebebahn keine vollständige Schwebebahn-Spur gefunden!","color":"red","bold":true}]
tag @s[scores={PZSchwB.p2Wert=0}] remove EtiSchwB.p2Erstellen

# Falls die Spur um 90° gedreht an der Position ist, wird der Rüstungsständer gedreht.
execute at @s[scores={PZSchwB.p2Wert=1}] if block ^ ^-1 ^-1 minecraft:quartz_stairs[half=top] if block ^ ^-1 ^1 minecraft:quartz_stairs[half=top] run teleport @s ~ ~ ~ ~90 0

# Wenn sich eine Spur an der Position des Rüstungsständers befindet, wird ihm der Wert zwei gegeben.
execute at @s[scores={PZSchwB.p2Wert=1}] if block ^-1 ^-1 ^ minecraft:quartz_stairs[half=top] if block ^1 ^-1 ^ minecraft:quartz_stairs[half=top] run scoreboard players set @s PZSchwB.p2Wert 2
tag @s[scores={PZSchwB.p2Wert=1}] remove EtiSchwB.p2Erstellen

# Wenn eine Spur vorhanden ist, wird jetzt geprüft ob über der Spur genug Platz für die Bahn ist.
execute at @s[tag=EtiSchwB.p2Erstellen] store result score @s PZSchwB.p2Wert run fill ^-2 ^ ^-14 ^2 ^5 ^14 minecraft:structure_void replace minecraft:air
execute at @s[tag=EtiSchwB.p2Erstellen] run fill ^-2 ^ ^-14 ^2 ^5 ^14 minecraft:air replace minecraft:structure_void
tag @s[tag=EtiSchwB.p2Erstellen,scores={PZSchwB.p2Wert=..869}] remove EtiSchwB.p2Erstellen

# Falls kein Platz vorhanden ist, wird eine Fehlermeldung ausgegeben.
execute if entity @s[tag=!EtiSchwB.p2Erstellen,scores={PZSchwB.p2Wert=1..}] run tellraw @p[distance=..5] ["Schwebebahn.erweitert.2:\n",{"text":"Die Schwebebahn kann nicht an der geforderten Position erzeugt werden!","color":"red","bold":true}]

# Wenn alles in Ordnung ist, wird dem Spieler das Holzschwert für das Steuern der Bahn gegeben.
execute if entity @s[tag=EtiSchwB.p2Erstellen] run give @p[distance=..5] minecraft:wooden_sword{EigSchwB.p2Alle:true,EigSchwB.p2Steuer:true,EigSchwB.p2Ausgewaehlt:1,Unbreakable:true,HideFlags:6,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:-1,Name:"Extraschaden",Operation:0,UUID:[0,0,0,1],Slot:"mainhand"}],Enchantments:[{id:-1}],display:{Name:'{"text":"Steuer","color":"gold","bold":true}',Lore:['"Setze dich in die Lore"','"und wähle das Steuer aus"','"um die Bahn zu steuern."'] } }

# Der Markierer für die eigentliche Bahn wird erzeugt.
execute at @s[tag=EtiSchwB.p2Erstellen] run summon minecraft:marker ~ ~ ~ {Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Ausrichten","EtiSchwB.p2Bahn"],data:{EigSchwB.p2Tempomat:'{"bold":true,"color":"red","text":"falsch"}',EigSchwB.p2Ansicht:'{"bold":true,"color":"red","text":"falsch"}'} }

# Ein zweiter Markierer, der die alte Position der Bahn markiert, wird erzeugt.
execute at @e[distance=..1,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Ausrichten","EtiSchwB.p2Unbeachten","EtiSchwB.p2AltePosition"]}

# Ein unsichtbarer Rüstungsständer mit einer Lore darauf werden etwas versetzt von der Mitte erzeugt.
execute at @s[tag=EtiSchwB.p2Erstellen] run summon minecraft:armor_stand ^ ^1.3 ^8 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Ausrichten","EtiSchwB.p2Halter"],Passengers:[{id:"minecraft:minecart",Tags:["EtiSchwB.p2Alle","EtiSchwB.p2Unbeachten","EtiSchwB.p2Sitz"] } ] }

# Die beiden Markierer und auch der Rüstungsständer werden entsprechend ausgerichtet.
execute at @s[tag=EtiSchwB.p2Erstellen] as @e[distance=..18,tag=EtiSchwB.p2Ausrichten,sort=nearest,limit=3] positioned as @s run teleport @s ~ ~ ~ ~ 0

# Danach wird ihnen das Etikett entfernt.
tag @e[distance=..18,tag=EtiSchwB.p2Ausrichten,sort=nearest,limit=3] remove EtiSchwB.p2Ausrichten

# Der Bahn-Markierer ruft die Bahn-Funktion auf und dabei wird ihm auch der Wert fürs Tempo auf eins gesetzt.
execute at @s[tag=EtiSchwB.p2Erstellen] as @e[distance=..1,type=minecraft:marker,tag=EtiSchwB.p2Bahn,sort=nearest,limit=1] at @s store success score @s PZSchwB.p2Wert run function schwebebahn:vp2bahn

# Anschließend wird der Rüstungsständer entfernt.
kill @s
