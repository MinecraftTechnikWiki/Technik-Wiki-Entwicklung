# Ein Punktestand-Ziel für das Klicken auf die Chat-Auslöser wird erstellt.
scoreboard objectives add PZZeiEin.2Klick minecraft.custom:minecraft.talked_to_villager ["Zeichen-Eingabe.2: ",{"text":"Rechtsklick auf Dorfbewohner","bold":true}]

# Das Team wird erstellt, damit keine Kollision mit dem Esel und Dorfbewohner zu stande kommt.
team add TMZeiEin.2Kol ["Zeichen-Eingabe.2: ",{"text":"Kollisionsfrei","bold":true}]
team modify TMZeiEin.2Kol collisionRule never

# Der unsichtbare Esel wird erstellt, auf dem sich der Spieler draufsetzen kann, welcher in sich eine Eichenholztreppe hat. Über ihn wird ein unsichtbarer Dorfbewohner erzeugt. Alle befinden sich in dem Team.
summon minecraft:donkey ~ ~-1 ~-10 {ChestedHorse:true,NoAI:true,Silent:true,Tame:true,Invulnerable:true,NoGravity:true,Rotation:[270.0f,0.0f],Team:"TMZeiEin.2Kol",Tags:["EtiZeiEin.2Alle","EtiZeiEin.2Sitz"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:0b,Ambient:false,ShowParticles:false,Duration:2147483647},{Id:10b,Amplifier:10b,Ambient:false,ShowParticles:false,Duration:2147483647}]}
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run setblock ~ ~1 ~ minecraft:oak_stairs[facing=west]
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:villager ~0.5 ~0.5 ~ {NoAI:true,Silent:true,Invulnerable:true,NoGravity:true,Offers:{Recipes:[]},Rotation:[270.0f,0.0f],Team:"TMZeiEin.2Kol",Tags:["EtiZeiEin.2Alle","EtiEing:1Klick"],ActiveEffects:[{Id:14b,Amplifier:0b,Ambient:false,ShowParticles:false,Duration:2147483647},{Id:10b,Amplifier:10b,Ambient:false,ShowParticles:false,Duration:2147483647}]}

# Vor dem Esel werden zwei unsichtbare Partikelwolken erzeugt, die die Zeichen speichern werden.
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:area_effect_cloud ~2 ~1 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiZeiEin.2Alle","EtiZeiEin.2Zeichen"],CustomName:'{"text":"","color":"gray"}'}
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:area_effect_cloud ~2 ~1 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiZeiEin.2Alle","EtiZeiEin.2Zeichenkette"],CustomName:'{"text":"","color":"gray"}'}

# An der Position der Zeichen-Partikelwolke wird ein Schild platziert, dass die Zeichen der Partikelwolken verbinden kann.
execute at @e[tag=EtiZeiEin.2Zeichen] run setblock ~ ~ ~ minecraft:oak_sign[rotation=4]{Text1:'[{"text":""}]'} replace

# Alle Zeichen die eintippbar sind, werden als unsichtbare Rüstungsständer ohne Schwerkraft mit ihren Namen angezeigt, an der Stell des Esels erzeugt.
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~-1.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Q","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~-1 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"W","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~-0.75 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"E","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~-0.5 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"R","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~-0.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"T","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~ {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Z","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~0.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"U","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~0.5 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"I","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~0.75 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"O","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~1 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"P","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~1 ~1.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Ü","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~-1.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"A","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~-1 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"S","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~-0.75 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"D","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~-0.5 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"F","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~-0.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"G","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~ {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"H","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~0.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"J","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~0.5 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"K","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~0.75 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"L","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~1 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Ö","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.75 ~1.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Ä","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~-1.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Y","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~-1 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"X","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~-0.75 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"C","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~-0.5 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"V","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~-0.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"B","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~ {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"N","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~0.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"M","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~0.5 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":", ","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~0.75 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":". ","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~1 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"-","bold":true}',Tags:["EtiZeiEin.2Alle"] }
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run summon minecraft:armor_stand ~2 ~0.5 ~1.25 {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"_","bold":true}',Tags:["EtiZeiEin.2Alle"] }
