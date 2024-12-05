# Hércules : REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos







### Definición y objetivos

Realizar la búsqueda, a partir de unos filtros, de una persona sobre el conjunto de personas dentro de uno o varios colectivos. La disponibilidad de uno o varios colectivos será  dependiente de las posibilidades que ofrezcan los sistemas universitarios de gestión de personas para la distinción de las mismas. El o los sistema/s universitario/s implicados en esta integración deberá ser capaz de realizar la búsqueda de la persona solamente dentro del conjunto que definan los colectivos. Sirvan como ejemplos de colectivos "personal de investigación", "personal de administración" ,"alumnos".

El ESB del SGI será el encargado de derivar la invocación del servicio de búsqueda a uno u otro sistema universitario si fuese necesario en función de los colectivos (en aquellos casos que la gestión de personas pudiera no estar centralizada en un único sistema universitario), tomando siempre el colectivo como único parámetro distribuidor.

  








### Descripción integración

Parámetros de entrada:

* Tipo de colectivo o listado de colectivos
* Cadena de texto que podrá contener indistintamente:
	+ Nombre
	+ Apellidos
	+ Nombre \+ Apellidos
	+ Email

El SGI proveerá el interface gráfico para recoger los parámetros de búsqueda [IU\-GEN\-0100\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). El parámetro "tipo de colectivo" o "listado de colectivos" irá implícito de acuerdo al caso de uso que provoque la invocación del buscador. Se podrá buscar por un tipo de colectivo (ejemplo pantalla de nuevo evaluador de ética) , que luego internamente el ESB transformará a un listado de colectivos o directamente que el SGI ya envíe el listado de colectivos (ejemplo pantalla de nuevo miembro de equipo al proyecto).

Salida: el resultado serán todas las personas  que cumplan con los criterios establecidos. La información a devolver para cada persona es:

* Identificador/Referencia (código interno entre ESB y SGI que permitirá referenciar de forma única a la persona tanto en la comunicación SGI\-ESB como en el modelo de datos del SGI)
* Nombre
* Apellidos
* Sexo
* Tipo de  documento de identificación personal (DNI, NIE, pasaporte)
* Nº de documento de identificación personal
* Identificador de la entidad/empresa externa a la que pertenece (en caso de que tenga vinculación con una entidad externa)
* Indicador (sí/no) de personal propio (es personal laboral de la Universidad en el momento actual)
* Identificador de la entidad propia/universidad (en caso de que tenga vinculación con la universidad, esto es, si es personal propio)
* Lista de direcciones de email
* Indicador (sí/no) de la vigencia de la persona (en el momento actual)

El SGI mostrará los resultados devueltos en un listado sobre el que se podrá seleccionar el registro concreto que vaya a ser utilizado en el caso de uso que invoca al buscador.  Ver [IU\-GEN\-0100\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md").

El SGI facilitará el interface para recoger la solicitud de alta de una persona en el sistema externo, a través de [IU\-GEN\-0061\- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md") que hará uso del servicio de integración [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md")

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md").

Los servicios concretos del API que cubren este requisito son: 

* [SGI \- ESB \- SGP \- Personas \- Buscar (Búsqueda rápida)](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-buscar-busqueda-rapida.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-buscar-busqueda-rapida.md")
	+ A utilizar desde los componentes autocomplete comunes que existen en las pantallas desde las que es necesario buscar personas (descrito en [IU\-GEN\-0100\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md")).
* [SGI \- ESB \- SGP \- Personas \- Buscar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-buscar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-buscar.md")
	+ Será utilizado por la pantalla buscador común de personas(descrito en [IU\-GEN\-0100\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md")).

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









