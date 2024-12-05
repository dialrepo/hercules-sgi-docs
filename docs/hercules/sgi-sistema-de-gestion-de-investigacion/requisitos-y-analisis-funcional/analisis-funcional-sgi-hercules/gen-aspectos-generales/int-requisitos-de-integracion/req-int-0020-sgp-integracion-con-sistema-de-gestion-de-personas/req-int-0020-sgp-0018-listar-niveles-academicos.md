# Hércules : REQ\-INT\-0020\-SGP\-0018 \- Listar niveles académicos







### Definición y objetivos

Recuperación del nivel académico de una persona. El listado será utilizado en [IU\-GEN\-0061\- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md"). El objetivo de este requisito de integración es alinear la recogida de datos desde el SGI para solicitar el alta de una persona con el sistema de gestión universitario correspondiente donde se materializará el registro.

### Descripción integración

Parámetros de entrada: sin parámetros de entrada.

Párametros de salida: listado de niveles académicos

* Identificador del nivel académico
* Nombre del nivel académico

El listado devuelto será presentado al usuario, por norma general, en un componente selector (combo).

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Niveles académicos \- Listar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-niveles-academicos-listar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-niveles-academicos-listar.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









