library(twitteR)

# hemos creado una tabla con un archivo donde tenemos nuestras propias contrasenas que tendran que generar cada persona para utilizarlo.
api_key <- read.csv("tweetTok")
setup_twitter_oauth(api_key[["key"]],api_key[["secret"]],api_key[["token"]],api_key[["toksecret"]])

#Creamos una variable que almacena la busqueda. Esta variable es una lista
#
fecha <-  as.character(Sys.Date())
#Creamos variables  que almacena los distintos  terminos de busqueda.

busqueda2 <- "lesbiana"
busqueda6 <- "maricon"
busqueda7 <- "bollera"
busqueda8 <- "gay"
busqueda9 <- "maricón"
busqueda10 <- "transexual"
#Buscar tweets con fecha de hoy
# los almacenamos en una variable, que es una lista de objetos

searchTwitteR(busqueda2, since="2016-05-12", until=fecha, n=20000, lang="es") -> twits2
searchTwitteR(busqueda6, since="2016-05-12", until=fecha, n=20000, lang="es") -> twits6
searchTwitteR(busqueda7, since="2016-05-12", until=fecha, n=20000, lang="es") -> twits7
searchTwitteR(busqueda8, since="2016-05-12", until=fecha, n=20000, lang="es") -> twits8
searchTwitteR(busqueda9,  since="2016-05-12", until=fecha, n=20000, lang="es") -> twits9
searchTwitteR(busqueda10, since="2016-05-12", until=fecha, n=20000, lang="es") -> twits10
#Ahora se filtran los retweet con la funcion NoRetweet.

no_retweets2 = strip_retweets(twits2)
no_retweets6 = strip_retweets(twits6)
no_retweets7 = strip_retweets(twits7)
no_retweets8 = strip_retweets(twits8)
no_retweets9 = strip_retweets(twits9)
no_retweets10 = strip_retweets(twits10)
#Graba twits en fichero, ya filtrados sin retweets
nombreFichero2 <- sprintf("lesbiana/%s_%s.rds", fecha, "lesbiana")
saveRDS(no_retweets2, nombreFichero2)
nombreFichero6 <- sprintf("maricon/%s_%s.rds", fecha, "maricon")
saveRDS(no_retweets6, nombreFichero6)
nombreFichero7 <- sprintf("bollera/%s_%s.rds", fecha, "bollera")
saveRDS(no_retweets7, nombreFichero7)
nombreFichero8 <- sprintf("gay/%s_%s.rds", fecha, "gay")
saveRDS(no_retweets8, nombreFichero8)
nombreFichero9 <- sprintf("maricon/%s_%s.rds", fecha, "maricoon")
saveRDS(no_retweets9, nombreFichero9)
nombreFichero10 <- sprintf("transexual/%s_%s.rds", fecha, "transexual")
saveRDS(no_retweets10, nombreFichero10)



#Para recuperar la base de datos: ttt <- readRDS(sprintf("Datos/%s.rds", fecha))
#Para que devuelva un twit: ttt[[1]]






# iconv("Ã©tat", "latin1", "UTF-8")"

#Graba twits en fichero






