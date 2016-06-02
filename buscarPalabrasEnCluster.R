## Se busca en la matriz palabras que aparezcan conjuntas para sacar tweeets ofensivos como ejemplo.
##matrizT
m["imperio", ] != 0 & m["cañizares", ] != 0 -> ind1
##ind
##sum(ind)
##twCor[ind][[1]]$content
##twCor[ind]
## esta sapply me aparecen elcontenidode los tweets que tienen  esos terminos
sapply(twCorPuro[ind1], function(x) x[["content"]])

##para Encontrar los terminos mas frecuentes.
frq1 <- findFreqTerms(myTdm, lowfreq=50)
#Encontrar el nº exacto deveces que aparecen los terminos
data("crude")
myTdm <- TermDocumentMatrix(crude)[1:10, 1:10]
temp <- inspect(matrizTweets)
FreqMat <- data.frame(ST = rownames(temp), Freq = rowSums(temp))
row.names(FreqMat) <- NULL
FreqMat
#       

#Para encontrar las asociaciones con respecto a un termino
findAssocs(matrizTweets,"gay", 0.001)


