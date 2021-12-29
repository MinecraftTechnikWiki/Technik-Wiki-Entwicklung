
scoreboard objectives remove PZBuRezM.1Buend

data remove storage buendel-rezeptmaschine:v1daten "EigBuRezM.1Buendel"

clear @a minecraft:bundle{EigBuRezM.1Alle:true}
clear @a minecraft:stone{EigBuRezM.1Alle:true}
clear @a minecraft:cobblestone{EigBuRezM.1Alle:true}
clear @a minecraft:coal{EigBuRezM.1Alle:true}
clear @a minecraft:gold_ingot{EigBuRezM.1Alle:true}
clear @a minecraft:gold_block{EigBuRezM.1Alle:true}

tag @a[tag=EtiBuRezM.1Auswahl] remove EtiBuRezM.1Auswahl

tag @e[type=minecraft:item,nbt={EigBuRezM.1Alle:true}] add EtiBuRezM.1Alle
kill @e[tag=EtiBuRezM.1Alle]
