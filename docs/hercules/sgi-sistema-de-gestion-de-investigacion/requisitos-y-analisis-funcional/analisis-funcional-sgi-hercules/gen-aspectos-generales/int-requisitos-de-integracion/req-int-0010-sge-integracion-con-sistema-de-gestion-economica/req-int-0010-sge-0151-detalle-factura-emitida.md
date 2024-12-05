# Hércules : REQ\-INT\-0010\-SGE\-0151 \- Detalle factura emitida







### Definición y objetivos

Detalle de todos los campos de una factura emitida proporcionados por el SGE. Los campos devueltos serán una listado de campos formado por nombre \- valor, donde nombre será el nombre del campo a mostrar y el valor, el propio valor del campo.

  








### Descripción técnica integración

Parámetros de entrada:

* Identificador factura

Parámetros de salida:

* Identificador de la factura
* Identificador del proyecto SGE
* Anualidad
* Número de la factura en el SGE
* Listado de campos con su nombre y valor
* Listado de documentos (identificador, nombre del documento y nombre del fichero, sin el contenido)

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, del Calendario de facturación: [SGI \- ESB \- SGE \- Calendario facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/index.md").

El servicio concreto del API que cubre este servicio es [SGI \- ESB \- SGE \- Calendario facturación \- Consultar detalle factura emitida](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/sgi-esb-sge-calendario-facturacion-facturas-emitidas-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/sgi-esb-sge-calendario-facturacion-facturas-emitidas-consultar-detalle.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









