# Hércules : REQ\-INT\-0015\-SGEMP\-0032 \- Consultar datos de contacto de empresa













### Definición y objetivos

Obtener los datos de contacto de una empresa a partir de su identificador de referencia en el SGI. El ESB recibirá del SGI la solicitud de información de datos de contacto de una determinada empresa. El ESB a través de la referencia de la empresa derivará la solicitud al sistema universitario correspondiente.

### Descripción técnica integración

Parámetro de entrada: referencia de empresa (identificador de referencia entre SGI y ESB).

Salida: se devolverá un registro de datos de contacto de una empresa con la siguiente información:

* Dirección de contacto

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Empresas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGEMP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGEMP \- Empresas \- Consultar datos contacto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/sgi-esb-sgemp-empresas-consultar-datos-contacto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/sgi-esb-sgemp-empresas-consultar-datos-contacto.md").







### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









