
execute if entity @s[tag=!EtiBankA.2Werkbank] if entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiBankA.2Werkbank] run tag @s add EtiBankA.2Werkbank
execute if entity @s[tag=!EtiBankA.2Werkbank] unless block ~ ~ ~ minecraft:crafting_table run setblock ~ ~ ~ minecraft:crafting_table replace
execute if entity @s[tag=!EtiBankA.2Werkbank] if block ~ ~ ~ minecraft:crafting_table run tag @s add EtiBankA.2Werkbank

execute if entity @s[tag=EtiBankA.2Werkbank] unless block ~ ~ ~ minecraft:crafting_table run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EigBankA.2Alle:true,display:{Name:'{"text":"Bankautomat","color":"dark_purple","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Bankautomat"','"zu erstellen"'] },EntityTag:{NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Bankautomat","color":"dark_purple","bold":true}',Tags:["EtiBankA.2Alle","EtiBankA.2Bankautomat"]} } },Motion:[0.0d,0.3d,0.0d]}
execute if entity @s[tag=EtiBankA.2Werkbank] unless block ~ ~ ~ minecraft:crafting_table run kill @s
