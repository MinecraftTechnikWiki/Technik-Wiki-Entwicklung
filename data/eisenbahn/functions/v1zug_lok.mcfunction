
fill ^-2 ^1 ^-1 ^2 ^8 ^32 minecraft:air replace #eisenbahn:v1drop-bloecke
fill ^-2 ^1 ^-1 ^2 ^8 ^32 minecraft:air replace

setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",name:"eisenbahn:v1lok"} replace

execute if entity @s[name="Osten"] run data merge block ~ ~1 ~ {posX:-28,posY:0,posZ:-2,rotation:"NONE"}
execute if entity @s[name="Süden"] run data merge block ~ ~1 ~ {posX:2,posY:0,posZ:-28,rotation:"CLOCKWISE_90"}
execute if entity @s[name="Westen"] run data merge block ~ ~1 ~ {posX:28,posY:0,posZ:2,rotation:"CLOCKWISE_180"}
execute if entity @s[name="Norden"] run data merge block ~ ~1 ~ {posX:-2,posY:0,posZ:28,rotation:"COUNTERCLOCKWISE_90"}

setblock ~ ~2 ~ minecraft:redstone_block replace

execute if block ^ ^-1 ^-1 minecraft:magenta_glazed_terracotta run teleport @s ^ ^ ^-1

execute unless entity @s[name=!"Süden",name=!"Norden"] positioned ^ ^1 ^14 positioned ~-2 ~ ~-14 as @a[dx=5,dy=8,dz=26] positioned as @s run teleport @s ^ ^ ^-1
execute unless entity @s[name=!"Osten",name=!"Westen"] positioned ^ ^1 ^14 positioned ~-14 ~1 ~-2 as @a[dx=26,dy=7,dz=5] positioned as @s run teleport @s ^ ^ ^-1

execute at @s[name="Osten"] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tag @s add EtiEisenB.1Rechts
execute at @s[name="Osten"] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tag @s add EtiEisenB.1Links

execute at @s[name="Süden"] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tag @s add EtiEisenB.1Rechts
execute at @s[name="Süden"] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tag @s add EtiEisenB.1Links

execute at @s[name="Westen"] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tag @s add EtiEisenB.1Rechts
execute at @s[name="Westen"] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tag @s add EtiEisenB.1Links

execute at @s[name="Norden"] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tag @s add EtiEisenB.1Rechts
execute at @s[name="Norden"] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tag @s add EtiEisenB.1Links

execute unless entity @s[tag=!EtiEisenB.1Rechts,tag=!EtiEisenB.1Links] run fill ^-2 ^1 ^-1 ^2 ^8 ^32 minecraft:air replace #eisenbahn:v1drop-bloecke
execute unless entity @s[tag=!EtiEisenB.1Rechts,tag=!EtiEisenB.1Links] run fill ^-2 ^1 ^-1 ^2 ^8 ^32 minecraft:air replace

execute if entity @s[tag=EtiEisenB.1Rechts] run summon minecraft:armor_stand ^ ^ ^ {Invisible:true,NoGravity:true,Tags:["EtiEisenB.1Alle","EtiEisenB.1Mitte"]}
execute if entity @s[tag=EtiEisenB.1Links] run summon minecraft:armor_stand ^ ^ ^ {Invisible:true,NoGravity:true,Tags:["EtiEisenB.1Alle","EtiEisenB.1Mitte"]}

tag @e[type=minecraft:armor_stand,tag=rotate] add forward
execute as @e[type=minecraft:armor_stand,tag=rotate] at @s facing entity @e[type=minecraft:armor_stand,tag=center,sort=nearest,limit=1] feet run function rotation:rotieren
tag @e[type=minecraft:armor_stand,tag=rotate] remove forward

#playsound minecraft:entity.wither.shoot voice @a[distance=..50] ^ ^8 ^4 0.4 1 0.1
#playsound minecraft:entity.minecart.inside voice @a[distance=..50] ^ ^8 ^4 0.4 1 0.1

particle minecraft:large_smoke ^ ^9 ^-4 0.5 2 0.5 0 20 force @a[distance=..25]
particle minecraft:firework ^ ^9 ^-4 0.5 2 0.5 0 10 force @a[distance=..25]
