# Hércules : REQ\-INT\-0010\-SGE\-0153 \- Buscar facturas previstas emitidas







### Definición y objetivos

Recuperar las facturas previstas emitidas del SGE para su visualización desde el Calendario de facturación (se necesita visualizar el número de factura del SGE). Se devolverán todas las facturas que tiene el SGE con los datos número de previsión y número de factura.  


  








### Descripción técnica integración

Parámetros de entrada:

* Identificador del proyecto SGI.
* Número Previsión
* Número Factura

Parámetros de salida: listado de facturas emitidas donde para cada una se muestra la siguiente información

* Identificador de la factura emitida
* Identificador del proyecto SGI
* Número factura
* Número previsión

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, del Calendario de facturación: [SGI \- ESB \- SGE \- Calendario facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/index.md").

El servicio concreto del API que cubre este servicio es [SGI \- ESB \- SGE \- Calendario facturación \- Consultar facturas previstas emitidas](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/sgi-esb-sge-calendario-facturacion-facturas-previstas-emitidas-buscar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/sgi-esb-sge-calendario-facturacion-facturas-previstas-emitidas-buscar.md") pasando por parámetro:

* proyectoIdSGI (identificador del proyecto SGI)

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









