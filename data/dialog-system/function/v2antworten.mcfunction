# Dem Spieler wird angezeigt welche Antwort er angeklickt hatte.
$tellraw @s ["Dialog-System.2:\n",{text:"Du hast mit ",color:"gray"},{text:"[",color:"gray",bold:true},{storage:"dialog-system:v2daten",nbt:'"EigDiaLS.2Antworten"[{ZurID:$(ZurID)}].Text',color:"yellow",bold:true,interpret:true},{text:"]",color:"gray",bold:true},{text:" geantwortet.",color:"gray"}]
