# Hércules : REQ\-INT\-0010\-SGE\-0103 \- Detalle gasto







### Definición y objetivos

Detalle de todos los campos de un gasto, proporcionado por el SGE. Los campos devueltos serán una listado de campos formado por nombre \- valor, donde nombre será el nombre del campo a mostrar y el valor, el propio valor del campo.

  








### Descripción técnica integración

Parámetros de entrada:

* Identificador gasto

Parámetros de salida:

* Identificador del gasto
* Identificador del proyecto SGE
* Partida presupuestaria a la que esta asignado el gasto
* Fecha
* Clasificación SGE
* Código económico asignado al gasto
* Anualidad
* Listado de campos con su nombre y valor
* Listado de documentos (identificador, nombre del documento y nombre del fichero, sin el contenido)

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la Ejecución económica de proyectos: [SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md").

El servicio concreto del API que cubre este requisito es: [SGI \- ESB \- SGE \- Ejecución económica \- Consultar detalle de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-consultar-detalle-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-consultar-detalle-de-gasto.md").

  








### Interfaces de usuario relacionados



  






### Informes relacionados







### Casos de uso relacionados








