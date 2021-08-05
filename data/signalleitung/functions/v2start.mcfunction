
scoreboard objectives add PZSigLe.2Wert dummy ["Signalleitung.2: ",{"text":"Wert der Signale","bold":true}]

give @a[distance=..15] minecraft:stick{EigSigLe.2Alle:true,EigSigLe.2Stock:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Signal","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um unter dir den"','"Block zu aktivieren."'] } }

give @a[distance=..15] minecraft:yellow_concrete{EigSigLe.2Alle:true} 64

forceload add ~ ~
