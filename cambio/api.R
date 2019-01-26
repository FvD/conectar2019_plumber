
#* @get /
function(monto_crc) {
  cambio_usd <- 570
  monto_crc <- as.numeric(monto_crc)
  respuesta <- monto_crc / cambio_usd
  return(respuesta)
}

#* @post /
function(monto_crc) {
  cambio_usd <- 570
  respuesta <- monto_crc / cambio_usd
  return(respuesta)
}

