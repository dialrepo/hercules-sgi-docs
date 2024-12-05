# Hércules : API de Similitud



El API de Similitud y su documentación se mantienen en el repositorio GiitHub del proyecto:

[HerculesED/src/Hercules.ED.Enrichment/Similitud at main · HerculesCRUE/HerculesED (github.com)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Enrichment/Similitud "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Enrichment/Similitud")

Los métodos del API son:

### [add\_ro (POST)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Enrichment/Similitud#add_ro-post "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Enrichment/Similitud#add_ro-post")

Este método sirve para crear un nuevo RO en la base de datos. Se debe ejecutar cada vez que se quiera añadir un nuevo RO al sistema. En el caso de que se necesite incorporar un gran lote de ROs, como por ejemplo en el caso de una carga masiva inicial, se utilizará un script creado con ese propósito. Esta función se ejecuta de forma síncrona.

### [query\_similar (GET)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Enrichment/Similitud#query_similar-get "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Enrichment/Similitud#query_similar-get")

Este método devuelve los diez RO más similares al RO de entrada. Se puede limitar el tipo de ROs a devolver (solo artículos científicos, protocolos, …)




