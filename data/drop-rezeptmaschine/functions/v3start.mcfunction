
scoreboard objectives add PZDrRezM.3Drop minecraft.custom:minecraft.drop ["Drop-Rezeptmaschine.3: ",{"text":"Nummer und Droppen","bold":true}]
scoreboard objectives add PZDrRezM.3Fort dummy ["Drop-Rezeptmaschine.3: ",{"text":"Fortschritt","bold":true}]
#scoreboard objectives add PZDrRezM.1Stapel dummy ["Drop-Rezeptmaschine.3: ",{"text":"Stapel","bold":true}]

give @a[distance=..15] minecraft:brewing_stand[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true}] 4

give @a[distance=..15] minecraft:blaze_powder[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true}] 64

give @a[distance=..15] minecraft:fermented_spider_eye[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true}] 64
give @a[distance=..15] minecraft:gunpowder[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true}] 64
give @a[distance=..15] minecraft:dragon_breath[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true}] 64

give @a[distance=..15] minecraft:potion[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true},minecraft:potion_contents={potion:"minecraft:night_vision"}] 2
give @a[distance=..15] minecraft:potion[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true},minecraft:potion_contents={potion:"minecraft:strength"}] 2
give @a[distance=..15] minecraft:potion[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true},minecraft:potion_contents={potion:"minecraft:luck"}] 2
give @a[distance=..15] minecraft:potion[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true},minecraft:potion_contents={potion:"minecraft:regeneration"}] 2
give @a[distance=..15] minecraft:potion[minecraft:lore=['"Wirf den Gegenstand mit Q"'],minecraft:custom_data={EigDrRezM.3Alle:true},minecraft:potion_contents={potion:"minecraft:swiftness"}] 2
