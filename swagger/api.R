padron <- data.frame(cedula = numeric(0))

#* @apiTitle Este es mi API
#* @apiVersion 0.1
#* @apiDescription Accesso a los datos del Padron Electoral de Costa Rica
#*   a travez de un API
#* @apiTag cedula padron

#* Especifica la version de la API
#* @get /
function() {

  respuesta <- data.frame(nombre = "padron_api",
                          version = "0.1")
  return(respuesta)

}

#* Devuelve los datos de la persona en e padron basado en numero de cedula
#* @get /cedula
#* @param cedula cedula que estas buscando
function(cedula) {

  cedula <- as.numeric(cedula)
  respuesta <- padron %>%
    filter(cedula == !!cedula)

  return(respuesta)
}

#* Devuelve los datos de la persona en e padron basado en numero de cedula
#* @post /cedula
#* @param cedula cedula que estas buscando
function(cedula) {

  respuesta <- padron %>%
    filter(cedula %in% !!cedula)

  return(respuesta)
}
