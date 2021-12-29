
execute if score VarBuRezM.1Rezept PZBuRezM.1Buend matches 1.. run item replace entity @s container.0 from entity @p weapon.mainhand

execute if score VarBuRezM.1Rezept PZBuRezM.1Buend matches 1 run data modify entity @s Item.tag.Items prepend value {id:"minecraft:stone_bricks",Count:1b,tag:{EigBuRezM.1Alle:true,EigBuRezM.1Rezept:true} }

execute if score VarBuRezM.1Rezept PZBuRezM.1Buend matches 2 run data modify entity @s Item.tag.Items prepend value {id:"minecraft:coal_block",Count:1b,tag:{EigBuRezM.1Alle:true,EigBuRezM.1Rezept:true} }

execute if score VarBuRezM.1Rezept PZBuRezM.1Buend matches 3 run data modify entity @s Item.tag.Items prepend value {id:"minecraft:gold_block",Count:1b,tag:{EigBuRezM.1Alle:true,EigBuRezM.1Rezept:true} }

item replace entity @p weapon.mainhand from entity @s container.0
