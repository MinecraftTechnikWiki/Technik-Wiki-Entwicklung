
$execute if data storage vokabel-lerner:v1daten "EigVokLe.1Worte"[3] run data modify storage vokabel-lerner:v1daten "EigVokLe.1Wort" set from storage vokabel-lerner:v1daten "EigVokLe.1Worte"[$(Index)]

$execute unless data storage vokabel-lerner:v1daten "EigVokLe.1Worte"[3] run data modify storage vokabel-lerner:v1daten "EigVokLe.1Worte" append from storage vokabel-lerner:v1daten "EigVokLe.1Woerter"[$(Index)]
