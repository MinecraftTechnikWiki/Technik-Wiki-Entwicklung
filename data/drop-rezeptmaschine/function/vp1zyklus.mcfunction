
execute if entity @p[scores={PZDrRezM.p1Drop=1..}] run scoreboard players set PZDrRezM.p1Zeit PZDrRezM.p1Drop 200
scoreboard players set @a[scores={PZDrRezM.p1Drop=1..}] PZDrRezM.p1Drop 0
execute if score PZDrRezM.p1Zeit PZDrRezM.p1Drop matches 1.. run scoreboard players remove PZDrRezM.p1Zeit PZDrRezM.p1Drop 1

execute if score PZDrRezM.p1Zeit PZDrRezM.p1Drop matches 1.. at @r as @n[distance=..5,type=minecraft:item,tag=EtiDrRezM.p1Handwerk,nbt={Item:{components:{"minecraft:custom_data":{EigDrRezM.p1Alle:true} } } },sort=random] at @s run function drop-rezeptmaschine:vp1rezept
