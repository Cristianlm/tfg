#para usar paquete twitter

library(twitteR)

# hemos creado una tabla con un archivo donde tenemos nuestras propias contrasenas que tendran que generar cada persona para utilizarlo.
api_key <- read.csv("tweettok")
setup_twitter_oauth(api_key[["key"]],api_key[["secret"]],api_key[["token"]],api_key[["toksecret"]])

#Creamos una variable que almacena la busqueda. Esta variable es una lista
fecha <- as.character(Sys.Date())
#Creamos variables  que almacena los distintos  terminos de busqueda.
busqueda1 <- "zorra"
busqueda2 <- "puta"
busqueda3 <- "friki"
busqueda4 <- "maricon"
busqueda5 <- "trucha"
busqueda6 <- "marimacho"
busqueda7 <- "gordo"
busqueda8 <- "gorda"
busqueda9 <- "piojoso"
busqueda10 <- "piojosa"
busqueda11 <- "pardillo"
busqueda12 <- "pardilla"

#Buscar tweets con fecha de hoy
# los almacenamos en una variable, que es una lista de objetos
searchTwitteR(busqueda1, since=fecha, n=5000, lang="es") -> twits1
searchTwitteR(busqueda2, since=fecha, n=5000, lang="es") -> twits2
searchTwitteR(busqueda3, since=fecha, n=5000, lang="es") -> twits3
searchTwitteR(busqueda4, since=fecha, n=5000, lang="es") -> twits4
searchTwitteR(busqueda5, since=fecha, n=5000, lang="es") -> twits5
searchTwitteR(busqueda6, since=fecha, n=5000, lang="es") -> twits6
searchTwitteR(busqueda7, since=fecha, n=5000, lang="es") -> twits7
searchTwitteR(busqueda8, since=fecha, n=5000, lang="es") -> twits8
searchTwitteR(busqueda9, since=fecha, n=5000, lang="es") -> twits9
searchTwitteR(busqueda10, since=fecha, n=5000, lang="es") -> twits10
searchTwitteR(busqueda11, since=fecha, n=5000, lang="es") -> twits11
searchTwitteR(busqueda12, since=fecha, n=5000, lang="es") -> twits12


#Ahora se filtran los retweet con la funcion NoRetweet.
no_retweets1 = strip_retweets(twits1)
no_retweets2 = strip_retweets(twits2)
no_retweets3 = strip_retweets(twits3)
no_retweets4 = strip_retweets(twits4)
no_retweets5 = strip_retweets(twits5)
no_retweets6 = strip_retweets(twits6)
no_retweets7 = strip_retweets(twits7)
no_retweets8 = strip_retweets(twits8)
no_retweets9 = strip_retweets(twits9)
no_retweets10 = strip_retweets(twits10)
no_retweets11 = strip_retweets(twits11)
no_retweets12 = strip_retweets(twits12)


#Graba twits en fichero, ya filtrados sin retweets
nombreFichero1 <- sprintf("Datos/%s_%s.rds", fecha, "zorra")
saveRDS(twListToDF(no_retweets1), nombreFichero1)
nombreFichero2 <- sprintf("Datos/%s_%s.rds", fecha, "puta")
saveRDS(twListToDF(no_retweets2), nombreFichero2)
nombreFichero3 <- sprintf("Datos/%s_%s.rds", fecha, "friki")
saveRDS(twListToDF(no_retweets3), nombreFichero3)
nombreFichero4 <- sprintf("Datos/%s_%s.rds", fecha, "maricon")
saveRDS(twListToDF(no_retweets4), nombreFichero4)
nombreFichero5 <- sprintf("Datos/%s_%s.rds", fecha, "trucha")
saveRDS(twListToDF(no_retweets5), nombreFichero5)
nombreFichero6 <- sprintf("Datos/%s_%s.rds", fecha, "marimacho")
saveRDS(twListToDF(no_retweets6), nombreFichero6)
nombreFichero7 <- sprintf("Datos/%s_%s.rds", fecha, "gordo")
saveRDS(twListToDF(no_retweets7), nombreFichero7)
nombreFichero8 <- sprintf("Datos/%s_%s.rds", fecha, "gorda")
saveRDS(twListToDF(no_retweets8), nombreFichero8)
nombreFichero9 <- sprintf("Datos/%s_%s.rds", fecha, "piojoso")
saveRDS(twListToDF(no_retweets9), nombreFichero9)
nombreFichero10 <- sprintf("Datos/%s_%s.rds", fecha, "piojosa")
saveRDS(twListToDF(no_retweets10), nombreFichero10)
nombreFichero11 <- sprintf("Datos/%s_%s.rds", fecha, "pardillo")
saveRDS(twListToDF(no_retweets11), nombreFichero11)
nombreFichero12 <- sprintf("Datos/%s_%s.rds", fecha, "pardilla")
saveRDS(twListToDF(no_retweets12), nombreFichero12)
#Para recuperar la base de datos: ttt <- readRDS(sprintf("Datos/%s.rds", fecha))
#Para que devuelva un twit: ttt[[1]]






# iconv("état", "latin1", "UTF-8")"

#Graba twits en fichero




