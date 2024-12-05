# Hércules : Gestión de errores en el API Rest



Para la gestión de errores REST, seguiremos la especificación [RFC 7807](https://tools.ietf.org/html/rfc7807 "https://tools.ietf.org/html/rfc7807"), que define cómo devolver la información de errores al cliente.

Este estándar define un media type **application/problem\+json** así como unos campos estándar:

* **type**: una URI que identifica el tipo de problema.  Idealmente debería ser una URL estable a la documentación con los detalles de este tipo de error pero también puede ser una URN como **urn:problem\-type:not\-allowed\-payment\-method**.  En cualquier caso, la modificación del type se considera una rotura de API.
* **title**: una pequeña descripción informal del tipo general del problema, por ejemplo, **Your are not allowed to use this payment method**.  Se puede modificar sin romper el API.
* **status**: repite el status code de la respuesta, por ejemplo, **403** para **Forbidden**.  Podrían existir diferencias entre lo que el servidor lanzó y lo que recibe el cliente debido a que un proxy cambie el http status code.  Solamente sirve de ayuda para la depuración, de modo que se puede cambiar sin rotura de API.
* **detail**: descripción completa acerca del problema, por ejemplo, **Customer 12345 has only GOLD status but needs PLATINUM to be allowed to order the sum of US 1,234\.56 on account**.  Se puede modificar sin romper el API.
* **instance**: una URI que identifica la aparición específica del problema.  Si es una URL, debería proporcionar detalles relativos a lo ocurrido, por ejemplo, podría apuntar al log correspondiente.  Que sea una URL no significa que deba ser accesible para todo el mundo.  Si no se desea proporcionar detalles acerca del sistema de log se puede utilizar una URN con UUID similar a **urn:uuid:d294b32b\-9dda\-4292\-b51f\-35f65b4bf64**.  Se puede modificar sin romper el API.
* Cualquier otro campo son extensiones, es decir, campos que una máquina puede leer.  Por ejemplo, customer\-status u order\-sum.  Las extensiones también pueden ser tipos complejos como listas u objetos que contienen múltiples campos, siempre que sean (de)serializables.  El cliente podría mostrar estos campos al usuario.  Se pueden añadir nuevas extensiones sin romper el API, pero la eliminación de extensiones (o el cambio de semántica) se considera una rotura de API.

Los campos **title** y **detail**, así como cualquier extensión donde se devuelvan mensajes destinados al usuario final, serán internacionalizables.  El idioma en el que se devuelven los mensajes vendrá determinado por la cabecera HTTP **accept\-language** recibida en la petición HTTP.

### Algunos enlaces de interés

* [HTTP Status Codes](https://httpstatuses.com/ "https://httpstatuses.com/")
* [When HTTP status code is not enough: tackling web APIs error reporting](https://www.javacodegeeks.com/2019/05/http-status-code-enough-tackling-web-apis-error-reporting.html "https://www.javacodegeeks.com/2019/05/http-status-code-enough-tackling-web-apis-error-reporting.html")




