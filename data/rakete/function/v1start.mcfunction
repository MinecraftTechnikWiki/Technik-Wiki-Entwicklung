
scoreboard objectives add PZRakete.1Wert dummy ["Rakete.1: ",{text:"Wert der Rakete",bold:true}]

scoreboard players set KonstRakete.1ZWEI PZRakete.1Wert 2
scoreboard players set VarRakete.1Zeit PZRakete.1Wert 0

bossbar add rakete:v1zaehler ["",{text:"Zeit == ",bold:true},{score:{name:"VarRakete.1Zeit",objective:"PZRakete.1Wert"},color:"dark_purple",bold:true}]
bossbar set rakete:v1zaehler max 10

give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={CustomName:{text:"Rakete",color:"gold",bold:true},CustomNameVisible:true,Small:true,Tags:["EtiRakete.1Alle","EtiRakete.1Erstellen"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","um die Rakete dort zu erzeugen"],minecraft:custom_name={text:"Rakete",color:"gold",bold:true},minecraft:custom_data={EigRakete.1Alle:true,EigRakete.1Rakete:true}]

give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={CustomName:{text:"Start-Rampe",color:"blue",bold:true},CustomNameVisible:true,Small:true,Tags:["EtiRakete.1Alle","EtiRakete.1Bauwerk"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","um die Start-Rampe dort zu errichten"],minecraft:custom_name={text:"Start-Rampe",color:"blue",bold:true},minecraft:custom_data={EigRakete.1Alle:true,EigRakete.1Rampe:true}]
