library(dplyr)

# Carga datos
padron <- read.csv("padron/datos/padron.csv",
                   stringsAsFactors = FALSE)


#* @get /
function() {

  respuesta <- data.frame(nombre = "padron_api",
                          version = "0.1")
  return(respuesta)

}

#* @get /cedula
#* @param cedula cedula que estas buscando
function(cedula) {

  cedula <- as.numeric(cedula)
  respuesta <- padron %>%
    filter(cedula == !!cedula)

  return(respuesta)
}

#* @post /cedula
#* @param cedula cedula que estas buscando
function(cedula) {

  respuesta <- padron %>%
    filter(cedula %in% !!cedula)

  return(respuesta)
}
