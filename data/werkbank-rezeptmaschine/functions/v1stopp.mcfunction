
gamerule doLimitedCrafting false

recipe take @a werkbank-rezeptmaschine:v1dreizack
recipe take @a werkbank-rezeptmaschine:v1elytren
recipe take @a werkbank-rezeptmaschine:v1herz_des_meeres
recipe take @a werkbank-rezeptmaschine:v1sattel

tag @a[tag=EtiHaRezM.1RezeptDreizack] remove EtiHaRezM.1RezeptDreizack
tag @a[tag=EtiHaRezM.1RezeptElytren] remove EtiHaRezM.1RezeptElytren
tag @a[tag=EtiHaRezM.1RezeptHerzDesMeeres] remove EtiHaRezM.1RezeptHerzDesMeeres
tag @a[tag=EtiHaRezM.1RezeptSattel] remove EtiHaRezM.1RezeptSattel
tag @a[tag=EtiHaRezM.1BuchDesWissens] remove EtiHaRezM.1BuchDesWissens

clear @a minecraft:crafting_table{EigHaRezM.1Alle:true}
clear @a minecraft:knowledge_book{EigHaRezM.1Alle:true}
clear @a #werkbank-rezeptmaschine:v1gegenstaende

kill @e[type=minecraft:item,nbt={Item:{tag:{EigHaRezM.1Alle:true} } }]
