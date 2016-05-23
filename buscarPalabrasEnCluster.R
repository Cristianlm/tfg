## Se busca en la matriz palabras que aparezcan conjuntas para sacar tweeets ofensivos como ejemplo.
##matrizTm["puta", ] != 0 & m["mierda", ] != 0 -> ind
##ind
##sum(ind)
##twCor[ind][[1]]$content
##twCor[ind]
## esta sapply me aparecen elcontenidode los tweets que tienen  esos terminos
##sapply(twCor[ind], function(x) x[["content"]])
