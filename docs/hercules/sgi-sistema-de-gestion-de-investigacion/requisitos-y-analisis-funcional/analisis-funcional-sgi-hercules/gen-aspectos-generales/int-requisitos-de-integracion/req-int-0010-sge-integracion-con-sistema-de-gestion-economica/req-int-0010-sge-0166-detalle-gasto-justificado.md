# Hércules : REQ\-INT\-0010\-SGE\-0166 \- Detalle gasto justificado







### Definición y objetivos

Detalle de todos los campos de un justificante/factura, proporcionado por el SGE perteneciente a un periodo de justificación del SGE. Los campos devueltos serán una listado de campos formado por nombre \- valor, donde nombre será el nombre del campo a mostrar y el valor, el propio valor del campo.

  








### Descripción técnica integración

Parámetros de entrada:

* Identificador gasto
* Identificador del proyecto SGE
* Identificador justificación

Parámetros de salida:

* Identificador del gasto
* Identificador del proyecto SGE
* Identificador justificación
* Listado de campos con su nombre y valor
* Listado de documentos (identificador, nombre del documento y nombre del fichero, sin el contenido)

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del  Sistema de Gestión Económica para el seguimiento de la justificación: [SGI \- ESB \- SGE \- Seguimiento justificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=140641365 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=140641365").

El servicios del API que cubre este requisito es: [SGI \- ESB \- SGE \- Seguimiento justificación \- Detalle gasto justificado](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-seguimiento-justificacion/sgi-esb-sge-seguimiento-justificacion-consultar-detalle-gasto-justificado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-seguimiento-justificacion/sgi-esb-sge-seguimiento-justificacion-consultar-detalle-gasto-justificado.md")

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









