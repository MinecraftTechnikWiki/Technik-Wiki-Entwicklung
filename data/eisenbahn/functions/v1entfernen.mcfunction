
kill @s

fill ^-2 ^1 ^-1 ^2 ^8 ^32 minecraft:air replace #eisenbahn:v1drop-bloecke
fill ^-2 ^1 ^-1 ^2 ^8 ^32 minecraft:air replace

tellraw @a[distance=..15] ["Eisenbahn.1: ",{"text":"Die Eisenbahn wurde durch das Schleichen und das Droppen des Eisenbahn-Rüstungsständers entfernt.","color":"red","bold":true}]
