
execute positioned ^5 ^-1 ^ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_orthogonal_x
execute rotated ~90 ~ positioned ^5 ^-1 ^ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_orthogonal_x
execute rotated ~180 ~ positioned ^5 ^-1 ^ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_orthogonal_x
execute rotated ~270 ~ positioned ^5 ^-1 ^ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_orthogonal_x

execute rotated ~ -90 positioned ^ ^ ^7 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_orthogonal_y
execute rotated ~180 90 positioned ^ ^ ^9 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_orthogonal_y
