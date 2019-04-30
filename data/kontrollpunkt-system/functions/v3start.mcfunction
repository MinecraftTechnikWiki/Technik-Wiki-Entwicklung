
team add TMKontPS.3Team1 ["Kontrollpunkt-System.3 ",{"text":"Team 1","bold":true}]
team add TMKontPS.3Team2 ["Kontrollpunkt-System.3 ",{"text":"Team 2","bold":true}]
team join TMKontPS.3Team1 @r[distance=..25,team=]
team join TMKontPS.3Team2 @r[distance=..25,team=]
scoreboard objectives add PZKontPS.3Wurf minecraft.dropped:minecraft.dragon_breath ["Kontrollpunkt-System.3 ",{"text":"Wurf eines Drachenatems","bold":true}]
give @a[distance=..25,team=!] minecraft:dragon_breath{display:{Lore:["Kontrollpunkt-System.3","Wirf den Gegenstand mit Q","um zum letzten","Kontrollpunkt zurück zu kommen"]} }
