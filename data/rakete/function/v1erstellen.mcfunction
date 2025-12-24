
summon minecraft:armor_stand ~ ~-0.66 ~-0.25 {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:furnace",count:1} },DisabledSlots:2039583,Pose:{Head:[90.0f,0.0f,0.0f]} }
summon minecraft:armor_stand ~-0.4 ~-1.15 ~ {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:iron_trapdoor",count:1} },DisabledSlots:2039583,Pose:{Head:[90.0f,0.0f,0.0f]} }
summon minecraft:armor_stand ~0.4 ~-1.15 ~ {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:iron_trapdoor",count:1} },DisabledSlots:2039583,Pose:{Head:[90.0f,0.0f,0.0f]} }
summon minecraft:armor_stand ~ ~-1.15 ~-0.4 {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:iron_trapdoor",count:1} },DisabledSlots:2039583,Pose:{Head:[90.0f,90.0f,0.0f]} }
summon minecraft:armor_stand ~ ~-1.15 ~0.4 {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:iron_trapdoor",count:1} },DisabledSlots:2039583,Pose:{Head:[90.0f,90.0f,0.0f]} }
summon minecraft:armor_stand ~ ~-0.28 ~ {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:iron_block",count:1} },DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~0.34 ~ {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:iron_block",count:1} },DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~1.8 ~-0.17 {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:dispenser",count:1} },DisabledSlots:2039583,Small:true,Pose:{Head:[90.0f,0.0f,0.0f]} }
summon minecraft:armor_stand ~ ~0.9 ~0.22 {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],equipment:{head:{id:"minecraft:end_rod",count:1} },DisabledSlots:2039583,Pose:{Head:[-60.0f,0.0f,0.0f]} }
summon minecraft:armor_stand ~ ~-2 ~ {NoGravity:true,Invisible:true,Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],DisabledSlots:2039583,Passengers:[{id:"minecraft:horse",NoAI:true,Tame:true,Silent:true,CustomName:{text:"Rakete"},DeathLootTable:"minecraft:empty",Tags:["EtiRakete.1Alle","EtiRakete.1Rakete"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:false}]}]}

scoreboard players add VarRakete.1Nummer PZRakete.1Wert 1

execute as @e[type=minecraft:armor_stand,tag=EtiRakete.1Rakete] unless score @s PZRakete.1Wert = @s PZRakete.1Wert run scoreboard players operation @s PZRakete.1Wert = VarRakete.1Nummer PZRakete.1Wert

kill @s
