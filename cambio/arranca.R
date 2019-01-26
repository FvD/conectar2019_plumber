library(plumber)
router <- plumb("cambio/api.R")
router$run(host = "0.0.0.0", port = 8080)
