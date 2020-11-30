
scoreboard objectives add PZKaefigZ.4Tote totalKillCount ["Käfigzone.4: ",{"text":"Besiegte","bold":true}]
scoreboard objectives add PZKaefigZ.4Zeit dummy ["Käfigzone.4: ",{"text":"Gefangenschaft","bold":true}]

summon minecraft:falling_block ~ ~10 ~ {Time:0,Tags:["EtiKaefigZ.4Alle"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiKaefigZ.4Alle","EtiKaefigZ.4Zone","EtiKaefigZ.4Kugel"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiKaefigZ.4Alle","EtiKaefigZ.4Zone","EtiKaefigZ.4Kugel"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiKaefigZ.4Alle","EtiKaefigZ.4Zone","EtiKaefigZ.4Quader"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b} ] },{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiKaefigZ.4Alle","EtiKaefigZ.4Zone","EtiKaefigZ.4Quader"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b} ] } ] }
execute at @e[type=minecraft:falling_block,tag=EtiKaefigZ.4Alle] run spreadplayers ~ ~ 20 25 false @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone]

execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run summon minecraft:falling_block ~ ~ ~ {Time:0,Tags:["EtiKaefigZ.4Alle"],Passengers:[{id:"minecraft:villager",Tags:["EtiKaefigZ.4Alle"],Offers:{Recipes:[] } },{id:"minecraft:villager",Tags:["EtiKaefigZ.4Alle"],Offers:{Recipes:[] } },{id:"minecraft:villager",Tags:["EtiKaefigZ.4Alle"],Offers:{Recipes:[] } } ] }
execute at @e[type=minecraft:armor_stand,tag=EtiKaefigZ.4Zone] run spreadplayers ~ ~ 5 10 false @e[type=minecraft:villager,tag=EtiKaefigZ.4Alle,sort=nearest,limit=3]

give @a[distance=..25] minecraft:diamond_sword{EigKaefigZ.4Alle:true,display:{Lore:['"Besiege mit dem Schwert"','"die Dorfbewohner um"','"deine Strafe zu erhalten"'] } }
give @a[distance=..25] minecraft:tripwire_hook{EigKaefigZ.4Alle:true,display:{Name:'{"text":"Schlüssel","color":"gold","bold":true}',Lore:['"Wähle den Schlüssel aus,"','"um aus den Käfig-Zonen"','"zu entkommen"'] } }
