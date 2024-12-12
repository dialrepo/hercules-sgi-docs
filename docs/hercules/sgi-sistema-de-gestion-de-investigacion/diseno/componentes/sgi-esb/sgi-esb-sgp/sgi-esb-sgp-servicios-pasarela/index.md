# Hércules : SGI \- ESB \- SGP \- Servicios Pasarela



##### Métodos donde el SGI solo hace de pasarela entre Universidad y el sistema de terceros llamante (No son necesarios para el funcionamiento del SGI)







| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGP \- Personas \- Actividad docente \- Consultar detalle](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Actividad+docente+-+Consultar+detalle "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Actividad+docente+-+Consultar+detalle") | GET | /actividad\-docente/{id} | * tipoActividad: tipo de actividad docente que se quiere recuperar, usando los códigos de CVN | Lista\[Actividad docente (del tipo solicitado)]Ver entidades en [https://confluence.um.es/confluence/display/HERCULES/Actividad\+docente\+\-\+CVN](https://confluence.um.es/confluence/display/HERCULES/Actividad+docente+-+CVN "https://confluence.um.es/confluence/display/HERCULES/Actividad+docente+-+CVN") | Detalle sobre los datos de la Actividad Docente, dependiendo del ID de la persona y el tipo de actividad.Ejemplo:* actividad\-docente/23019512?tipoActividad\="030\.040\.000\.000" |
| [SGI \- ESB \- SGP \- Personas \- Consultar personas con modificaciones en actividad docente](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+personas+con+modificaciones+en+actividad+docente "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+personas+con+modificaciones+en+actividad+docente") | GET | /actividad\-docente/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion: fecha a partir de la cual se quieren ver los cambios * tipoActividad: tipo de actividad docente que se quiere recuperar, usando los códigos de CVN | Lista\[String] | Listado de identificadores de las personas que han tenido modificaciones en la actividad docente.Ejemplo:* actividad\-docente/modificados\-ids?q\=fechaModificacion\=ge\="2022\-01\-01T00:00:00Z";tipoActividad\="030\.040\.000\.000" |
| [SGI \- ESB \- SGP \- Personas \- Consultar personas modificadas](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+personas+modificadas "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+personas+modificadas") | GET | /personas/modificadas\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[String] | Listado de los identificadores de personas que han sufrido cambios en los datos identificativos (nombre, apellidos, sexo, número de documento y tipo de documento) y/o en los datos personales (fecha de nacimiento, país de nacimiento, comunidad autónoma de nacimiento y ciudad de nacimiento) y/o en datos de contacto (país de contacto, comunidad autónoma de contacto, provincia de contacto, ciudad de contacto, dirección de contacto, código postal, listado de teléfonos y listado de emails) y/o en la fotografía a partir de la fecha de modificación pasada por parámetro y/o en los sexenios. |
| [SGI \- ESB \- SGP \- Personas \- Formación \- Consultar detalle](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853222 "/confluence/pages/viewpage.action?pageId=597853222") | GET | /formacion/{id} | * tipoFormacion: tipo de formación que se quiere recuperar, usando los códigos de CVN | Lista\[Formación (del tipo solicitado)]Ver entidades en [https://confluence.um.es/confluence/pages/viewpage.action?pageId\=397534658](https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534658 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534658") | Detalle sobre los datos de la Formación Recibida, dependiendo del ID de la persona y el tipo de formación.Ejemplo:* /formacion/22468643?tipoFormacion\="020\.050\.000\.000" |
| [SGI \- ESB \- SGP \- Personas \- Consultar personas con modificaciones en formación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853218 "/confluence/pages/viewpage.action?pageId=597853218") | GET | /formacion/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion: fecha a partir de la cual se quieren ver los cambios * tipoFormacion: tipo de formación que se quiere recuperar, usando los códigos de CVN | Lista\[String] | Listado de identificadores de las personas que han tenido modificaciones en formación realizada.Ejemplo:* /formacion/modificados\-ids?q\=fechaModificacion\=ge\="2022\-01\-01T00:00:00Z";tipoFormacion\="020\.010\.020\.000" |
| [SGI \- ESB \- SGP \- Personas \- Consultar número de sexenios](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853220 "/confluence/pages/viewpage.action?pageId=597853220") | GET | /sexenios/persona/{id} | fecha | [Sexenio](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Sexenio "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Sexenio") | Devuelve el número de sexenios de la persona. Si se le pasa el parámetro de la fecha devuelve el número de sexenios en esa fecha, sino se devuelve el número de sexenios a la fecha actual.Ejemplo:* fecha\="2021\-08\-18T22:00:00Z" |



