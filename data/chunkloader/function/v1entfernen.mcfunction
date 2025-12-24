
forceload remove ~ ~
summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:paper",components:{"minecraft:custom_name":{text:"Überreste des Chunksloaders",color:"red"},"minecraft:lore":["Du hast den Chunkloader abgebaut,","wende dich an einen Moderator","um erneut einen Chunkloader","aufstellen zu lassen!"]} },PickupDelay:10s}
particle minecraft:smoke ~ ~0.5 ~ 0.25 1 0.25 0.02 150
playsound minecraft:block.respawn_anchor.deplete block @a[distance=..15] ~ ~ ~ 1 0.5
kill @s
