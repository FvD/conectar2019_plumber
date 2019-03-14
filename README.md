# ConectaR 2019

## Taller: Crear API's con código R usando plumber

[La presentación está aqui](https://speakerdeck.com/fvd/taller-crear-apis-con-codigo-r-usando-plumber)

Para poder integrar nuestros resultados de análisis en la organización, tenemos
que poder interoperar con sistemas y procesos existentes. Además ocurre
regularmente que el equipo de TI dentro de la empresa no trabaja con R pero con
otros lenguajes. En otros casos nuestro producto de datos tiene que interactuar
con sistemas existentes que no se dejan cambiar tan fácilmente.

Una excelente solución para estas circunstancias es presentar el producto de
datos como un REST API. Esto significa que cualquier otro sistema puede consumir
los resultados del producto como, por ejemplo, datos en JSON en una dirección
HTTP.

Estas direcciones HTTP se llaman endpoints, y pueden no solamente ofrecer
resultados, pero también recibir datos, que después podemos procesar para
devolver un resultado. Es muy común llevar a producción modelos de predicción de
esta forma, que están escritas en R, pero accesible desde cualquier lenguaje o
sistema a través de un API. El paquete plumber permite convertir código R a un
REST API.

En este taller de 2 horas vamos a ver de forma muy práctica cómo traducir un
modelo, desarrollado en R, a un API. Además hablaremos de como hacer documentar
el API con Swagger, como hacer pruebas, y como verificar que el API tiene
suficiente desempeño para los requisitos de la organización. Al final de este
curso serás capaz de levantar tu propio servicio de datos como un API, y cómo
usar mejores prácticas de documentación y testeo para entregarlo a tu
organización.
