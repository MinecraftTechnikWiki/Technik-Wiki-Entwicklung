# Das Team für Piloten wird erstellt und der nächstgelegene Spieler wird in dieses gesteckt. Das Team sorgt außerdem dafür dass die Mitglieder nicht kollidieren.
team add TMFlugz.2Pilot ["Flugzeug.2: ",{"text":"Piloten","bold":true}]
team modify TMFlugz.2Pilot collisionRule never
team join TMFlugz.2Pilot @p[distance=..5,team=!TMFlugz.2Pilot]

# Der Flugzeug-Rüstungsständer mit einem zweiten huckepack, wird 25 Meter über der Befehlsquelle erzeugt.
summon minecraft:armor_stand ~ ~25.5 ~ {Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Westen","color":"gold","bold":true}',Tags:["EtiFlugz.2Alle","EtiFlugz.2Flugzeug","EtiFlugz.2Richtung"],Rotation:[90.0f,0.0f],Passengers:[{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Geradeaus","color":"aqua","bold":true}',Tags:["EtiFlugz.2Alle","EtiFlugz.2Neigung"]}]}

# Einen Block unter dem Flugzeug-Rüstungsständer wird ein Eichenholzbrett platziert, damit der Spieler bei der Teleportation auf festen Untegrund steht.
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run setblock ~-1 ~-1 ~ minecraft:red_concrete replace
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run teleport @p[team=TMFlugz.2Pilot] ~-1 ~ ~

# Ein Rüstungsständer mit Lore wird erzeugt, in die der Spieler steigen kann um die Aussenansicht zu nutzen.
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run summon minecraft:armor_stand ~-1 ~ ~ {Invulnerable:true,Invisible:true,NoGravity:true,Marker:true,Tags:["EtiFlugz.2Alle","EtiFlugz.2Halter"],Passengers:[{id:"minecraft:minecart",NoGravity:true,Invulnerable:true,Tags:["EtiFlugz.2Alle","EtiFlugz.2Sitz"]}]}

# Ein Dorfbewohner wird erzeugt, der als Copilot fungiert. Immer wenn der Spieler in der Aussenansicht sich gerade befindet, lenkt er den Copiloten um so das Flugzeug zu lenken.
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run summon minecraft:villager ~-1 ~ ~ {Invulnerable:true,Silent:true,NoGravity:true,PersistenceRequired:true,CustomName:'{"text":"Copilot","bold":true}',Team:"TMFlugz.2Pilot",Tags:["EtiFlugz.2Alle","EtiFlugz.2PilotenSteuer"],Offers:{Recipes:[]},ActiveEffects:[{Id:2b,Amplifier:100b,Ambient:false,ShowParticles:false,Duration:2147483647},{Id:14b,Amplifier:0b,Ambient:false,ShowParticles:false,Duration:2147483647}],Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"}]}

# Dem Piloten wird ein Holzschwert mit dem Namen Steuerkreuz gegeben. Damit lässt sich das Flugzeug steuern. Der Spieler bekommt außerdem ein Etikett, das dafür sorgt dass er im nächsten Tick das Flugzeug erstellt.
give @p[team=TMFlugz.2Pilot] minecraft:wooden_sword{flugzeug:"v2gegenstand",AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Name:"Extraschaden",Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"}],Unbreakable:true,Enchantments:[{id:-1}],HideFlags:6,display:{Name:'{"text":"Steuerkreuz","color":"gold","bold":true}',Lore:['"Wähle das Steuerkreuz"','"aus, um das Flugzeug zu fliegen"']} }
tag @p[team=TMFlugz.2Pilot] add EtiFlugz.2Steuer

# Eine Nachricht an den Piloten, damit dieser weiss was er machen muss um das Flugzeug zu fahren.
tellraw @p[team=TMFlugz.2Pilot] ["Flugzeug.2: ",{"text":"Wähle das Steuerkreuz aus und laufe in die gewünschte Richtung um das Flugzeug zu fliegen. Klicke auf die Lore, um das Flugzeug von außen zu betrachten. Man kann das Flugzeug auch während man in der Lore ist steuern. Wenn man die Lore verlässt befindet man sich wieder im Flugzeug.","bold":true}]
