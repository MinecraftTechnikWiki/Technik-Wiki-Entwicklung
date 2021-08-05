
scoreboard objectives add PZDrRezM.3Drop minecraft.custom:minecraft.drop ["Drop-Rezeptmaschine.3: ",{"text":"Nummer und Droppen","bold":true}]
scoreboard objectives add PZDrRezM.3Fort dummy ["Drop-Rezeptmaschine.3: ",{"text":"Fortschritt","bold":true}]
#scoreboard objectives add PZDrRezM.1Stapel dummy ["Drop-Rezeptmaschine.3: ",{"text":"Stapel","bold":true}]

give @a[distance=..15] minecraft:brewing_stand{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"']} } 4

give @a[distance=..15] minecraft:blaze_powder{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64

give @a[distance=..15] minecraft:fermented_spider_eye{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64
give @a[distance=..15] minecraft:gunpowder{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64
give @a[distance=..15] minecraft:dragon_breath{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] } } 64

give @a[distance=..15] minecraft:potion{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] },Potion:"minecraft:night_vision"} 2
give @a[distance=..15] minecraft:potion{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] },Potion:"minecraft:strength"} 2
give @a[distance=..15] minecraft:potion{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] },Potion:"minecraft:luck"} 2
give @a[distance=..15] minecraft:potion{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] },Potion:"minecraft:regeneration"} 2
give @a[distance=..15] minecraft:potion{EigDrRezM.3Alle:true,display:{Lore:['"Wirf den Gegenstand mit Q"'] },Potion:"minecraft:swiftness"} 2
