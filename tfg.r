#para usar paquete twitter

library(twitteR)

# hemos creado una tabla con un archivo donde tenemos nuestras propias contrasenas que tendran que generar cada persona para utilizarlo.
api_key <- read.csv("tweettok")
setup_twitter_oauth(api_key[["key"]],api_key[["secret"]],api_key[["token"]],api_key[["toksecret"]])

#Creamos una variable que almacena la busqueda. Esta variable es una lista
busqueda <- "puton"

#fecha de hoy
fecha <- as.character(Sys.Date())
# busquedad con fecha de hoy
searchTwitteR(busqueda, since=fecha, n=5000) -> twits

# iconv("état", "latin1", "UTF-8")"

#Graba twits en fichero
nombreFichero <- sprintf("Datos/%s.rds", fecha)
saveRDS(twits, nombreFichero)




