# Für jede ID wird eine separate Nummer vergeben.
scoreboard players set @s[nbt={Item:{id:"minecraft:string"} }] PZDrRezM.1Drop 1
scoreboard players set @s[nbt={Item:{id:"minecraft:paper"} }] PZDrRezM.1Drop 2

scoreboard players set @s[nbt={Item:{id:"minecraft:bow"} }] PZDrRezM.1Drop 3
scoreboard players set @s[nbt={Item:{id:"minecraft:iron_ingot"} }] PZDrRezM.1Drop 4
scoreboard players set @s[nbt={Item:{id:"minecraft:tripwire_hook"} }] PZDrRezM.1Drop 5

scoreboard players set @s[nbt={Item:{id:"minecraft:oak_planks"} }] PZDrRezM.1Drop 6
scoreboard players set @s[nbt={Item:{id:"minecraft:oak_log"} }] PZDrRezM.1Drop 7
scoreboard players set @s[nbt={Item:{id:"minecraft:stick"} }] PZDrRezM.1Drop 8
scoreboard players set @s[nbt={Item:{id:"minecraft:smooth_stone_slab"} }] PZDrRezM.1Drop 9

# Dem Drop wird ein Etikett gegeben und alle Spieler werden wieder auf null gesetzt.
tag @s add EtiDrRezM.1Drop
scoreboard players set @a[scores={PZDrRezM.1Drop=1..}] PZDrRezM.1Drop 0
