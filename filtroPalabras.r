library(tm)
library(proxy)
library(ggplot2)
library(RColorBrewer)
library(wordcloud)

#Leer ficheros de datos y crear un corpus:
twCor <-VCorpus(DirSource("txtbollera", encoding="UTF-8"), readerControl = list(language="es"))
#Hago una copia para que al extraer texto, este tenga sentido y sea el original.

twCorPuro  <- twCor
#Quitar acentos:
twCor <- tm_map(twCor, tolower)

#Quitar puntuación
twCor <- tm_map(twCor, removePunctuation)

#Quitar números
twCor <- tm_map(twCor, removeNumbers)

# remove stopwords
myStopwords <- c(stopwords("spanish"))
twCor <- tm_map(twCor, removeWords, myStopwords)



#Para crear la matriz
twCor <-tm_map(twCor, PlainTextDocument)
matrizTweets <- TermDocumentMatrix(twCor, control = list(minWordLength = 1))
matrizTweets <- removeSparseTerms(matrizTweets, 0.98) #Este valor va de 0 a 1, siendo 0,99 las más frecuentes


#Función para partir matrices (por defecto divide entre uno)
##muestreaTweets <- function(matriz, fraccion=1) {
#  muestra <- sample(1:ncol(matriz), ncol(matriz)/fraccion)
 # matriz[, muestra]
#}

# Reduce la matriz a la mitad de tweets, aleatoriamente pero de forma reproducible
#set.seed(1463068473)
#matrizTweets <- muestreaTweets(matrizTweets, 2) #Este número marca el número por el que dividimos la matriz


#Normalizar la matrix


#Para construir las matrices para el clustering:
m <- as.matrix(matrizTweets)
matrizTweets_dist <- dist(m, method = 'cosine')
#utilizar otra funcion para el coseno, dissimilarity(m, method = "cosine")

#Con esto creamos el cluster dendrogram por el metodo de la distancia del coseno de Ward
clust_h <- hclust(d = matrizTweets_dist, method = 'ward.D2')
plot(clust_h, main = ' maricon, Cluster Dendrogram: Ward Cosine Distance', xlab = '', ylab = '', sub = '')



#Para el wordcloud

v <- sort(rowSums(m), decreasing=TRUE)
myNames <- names(v)
k <- which(names(v)=="miners")
myNames[k] <- "mining"
d <- data.frame(word=myNames, freq=v)
wordcloud(d$word, d$freq, min.freq=200, max.words = 50)

