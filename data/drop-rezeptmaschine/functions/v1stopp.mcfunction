# Die beiden Punkte-Ziele werden entfernt.
scoreboard objectives remove PZDrRezM.1Drop
scoreboard objectives remove PZDrRezM.1Stap

#Die Rezept-Gegenstände werden gelöscht.
clear @a minecraft:paper{EigDrRezM.1Alle:true}
clear @a minecraft:string{EigDrRezM.1Alle:true}
clear @a minecraft:bow{EigDrRezM.1Alle:true}
clear @a minecraft:iron_ingot{EigDrRezM.1Alle:true}
clear @a minecraft:tripwire_hook{EigDrRezM.1Alle:true}
clear @a minecraft:name_tag{EigDrRezM.1Alle:true}
clear @a minecraft:crossbow{EigDrRezM.1Alle:true}

# Falls man die Rezept-Gegenstände gedroppt hat, werden sie ebenfalls gelöscht.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigDrRezM.1Alle:true} } }]

# Da auch Drops die nichts mit dieser Maschine zu tun haben, das Etikett besitzen können, wird ihnen das entfernt.
tag @e[type=minecraft:item,tag=EtiDrRezM.1Drop] remove EtiDrRezM.1Drop
