# Hércules : REQ\-INT\-0100\-SGDOC\-0050 \- Consultar documento







### Definición y objetivos

Recuperar los metadatos de un documento del Sistema de Gestión documental, esto es, la información disponible del documento a excepción del binario o el propio fichero en sí.

### Descripción técnica integración

Parámetros de entrada:

* Identificador del documento.

Parámetros de salida: se devolverá el registro del documento con sus metadatos, que contendrán la siguiente información:

* Número de documento.
* Nombre.
* Versión.
* Fecha de creación.
* Tipo de archivo.
* Identificador del autor del documento.
* Hash del documento.

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Documental [SGI \- ESB \- SGDOC](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgdoc/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgdoc/index.md").

El servicio del API que cubre este requisito es [ESB \- SGI \- Documentos \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgdoc/esb-sgi-documentos-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgdoc/esb-sgi-documentos-consultar-detalle.md").

  








### Interfaces de usuario relacionados







### Casos de uso relacionados









