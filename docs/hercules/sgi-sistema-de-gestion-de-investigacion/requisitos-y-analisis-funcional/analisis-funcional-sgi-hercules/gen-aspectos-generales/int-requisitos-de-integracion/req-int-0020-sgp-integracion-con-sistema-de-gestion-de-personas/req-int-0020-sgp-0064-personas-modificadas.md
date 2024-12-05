# Hércules : REQ\-INT\-0020\-SGP\-0064 \- Personas modificadas







### Definición y objetivos

El ESB deberá disponer de una función que permita consultar las personas creadas o modificadas desde una fecha dada. Devolverá el listado de los identificadores de personas que han sufrido cambios en los datos identificativos (nombre, apellidos, sexo, número de documento y tipo de documento) y/o en los datos personales (fecha de nacimiento, país de nacimiento, comunidad autónoma de nacimiento y ciudad de nacimiento) y/o en datos de contacto (país de contacto, comunidad autónoma de contacto, provincia de contacto, ciudad de contacto, dirección de contacto, código postal, listado de teléfonos y listado de emails) y/o en la fotografía a partir de la fecha de modificación pasada por parámetro y/o en los sexenios.







### Descripción integración

Parámetros de entrada:

* Fecha modificación: Es la fecha que se debe considerar para filtrar las persona a remitir

Parámetros de salida:

* Listado de Identificadores de personas

  
### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Pasarela: [SGI \- ESB \- SGP \- Servicios Pasarela](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Consultar personas modificadas](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-consultar-personas-modificadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-consultar-personas-modificadas.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









