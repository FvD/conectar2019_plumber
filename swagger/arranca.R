library(plumber)
router <- plumb("swagger/api.R")
router$run(host = "0.0.0.0", swagger = TRUE, port = 8080)
