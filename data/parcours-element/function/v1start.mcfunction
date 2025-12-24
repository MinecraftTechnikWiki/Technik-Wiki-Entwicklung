
scoreboard objectives add PZParEl.1Klick minecraft.used:minecraft.carrot_on_a_stick ["Parcours-Element.1: ",{text:"Mausklick mit einer Karottenrute",bold:true}]
give @a[distance=..15] minecraft:carrot_on_a_stick[minecraft:custom_name={text:"Kletterangel",color:"aqua",bold:true},minecraft:custom_data={EigParEl.1Alle:true}] 1

give @a[distance=..15] minecraft:iron_bars[minecraft:custom_name={text:"Bauelement",color:"gold",bold:true},minecraft:custom_data={EigParEl.1Alle:true}] 64
give @a[distance=..15] minecraft:oak_fence[minecraft:custom_name={text:"Bauelement",color:"gold",bold:true},minecraft:custom_data={EigParEl.1Alle:true}] 64
give @a[distance=..15] minecraft:cobblestone_wall[minecraft:custom_name={text:"Bauelement",color:"gold",bold:true},minecraft:custom_data={EigParEl.1Alle:true}] 64

setblock ~-5 ~ ~ minecraft:structure_block{mode:"LOAD",mirror:"NONE",rotation:"NONE",posX:-3,posY:0,posZ:-3,name:"parcours-element:v1parcours"} replace
setblock ~-5 ~ ~1 minecraft:redstone_block replace
