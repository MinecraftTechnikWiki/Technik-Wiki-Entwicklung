# Die beiden Teams "rot" und "blau" werden erstellt.
team add TMKontPS.3ROT ["Kontrollpunkt-System.3: ",{"text":"Team Rot","bold":true}]
team add TMKontPS.3BLAU ["Kontrollpunkt-System.3: ",{"text":"Team Blau","bold":true}]

# Entsprechend ihrer Namen erhalten die Teams ihre Farben.
team modify TMKontPS.3ROT color red
team modify TMKontPS.3BLAU color blue

# Das Punktestand für das Werfen von Totems wird erstellt.
scoreboard objectives add PZKontPS.3Wurf minecraft.dropped:minecraft.totem_of_undying ["Kontrollpunkt-System.3: ",{"text":"Wurf eines Totem","bold":true}]

# Alle Spieler im Umkreis von 25 Metern erhalten den Wert eins.
scoreboard players set @a[distance=..25] PZKontPS.3Wurf 1

# Ein Konstruktionsblock samt Redstone-Block werden platziert um einen Parcours zu erstellen.
setblock ~10 ~ ~-12 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-7,posY:0,posZ:-8,name:"kontrollpunkt-system:v3parcours"} replace
setblock ~10 ~ ~-11 minecraft:redstone_block replace

# Spielern im Umkreis von 25 Metern wird eine Nachricht in den Chat geschrieben.
tellraw @a[distance=..25] ["Kontrollpunkt-System.3:\n",{"text":"Für den Team-Mehrspieler","bold":true}]
