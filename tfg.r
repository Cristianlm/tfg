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



#Graba twits en fichero
nombreFichero1 <- sprintf("Datos/%s_%s.rds", fecha, "zorra")
saveRDS(twListToDF(twits1), nombreFichero1)
nombreFichero2 <- sprintf("Datos/%s_%s.rds", fecha, "puta")
saveRDS(twListToDF(twits2), nombreFichero2)
nombreFichero3 <- sprintf("Datos/%s_%s.rds", fecha, "friki")
saveRDS(twListToDF(twits3), nombreFichero3)
nombreFichero4 <- sprintf("Datos/%s_%s.rds", fecha, "maricon")
saveRDS(twListToDF(twits4), nombreFichero4)
nombreFichero5 <- sprintf("Datos/%s_%s.rds", fecha, "trucha")
saveRDS(twListToDF(twits5), nombreFichero5)
nombreFichero6 <- sprintf("Datos/%s_%s.rds", fecha, "marimacho")
saveRDS(twListToDF(twits6), nombreFichero6)
nombreFichero7 <- sprintf("Datos/%s_%s.rds", fecha, "gordo")
saveRDS(twListToDF(twits7), nombreFichero7)
nombreFichero8 <- sprintf("Datos/%s_%s.rds", fecha, "gorda")
saveRDS(twListToDF(twits8), nombreFichero8)
nombreFichero9 <- sprintf("Datos/%s_%s.rds", fecha, "piojoso")
saveRDS(twListToDF(twits9), nombreFichero9)
nombreFichero10 <- sprintf("Datos/%s_%s.rds", fecha, "piojosa")
saveRDS(twListToDF(twits10), nombreFichero10)
nombreFichero11 <- sprintf("Datos/%s_%s.rds", fecha, "pardillo")
saveRDS(twListToDF(twits11), nombreFichero11)
nombreFichero12 <- sprintf("Datos/%s_%s.rds", fecha, "pardilla")
saveRDS(twListToDF(twits12), nombreFichero12)
#Para recuperar la base de datos: ttt <- readRDS(sprintf("Datos/%s.rds", fecha))
#Para que devuelva un twit: ttt[[1]]






# iconv("état", "latin1", "UTF-8")"

#Graba twits en fichero




