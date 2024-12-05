# Hércules : REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa













### Definición y objetivos

Obtener los datos generales de una empresa a partir de su identificador de referencia en el SGI. El ESB recibirá del SGI la solicitud de los datos generales de una determinada empresa. El ESB a través de la referencia de la empresa derivará la solicitud al sistema universitario correspondiente.

  


Descripción técnica

Parámetro de entrada: referencia de empresa (identificador de referencia entre SGI y ESB)

Salida: se devolverá un registro de una empresa con la siguiente información:

* Identificador/Referencia
* Nombre
* Tipo de identificador fiscal
* Número de identificación fiscal
* Razón social
* Indicador de si se trata de una empresa con datos económicos o no en la Universidad
* Identificador/Referencia de la entidad padre (en caso de que sea una subentidad)

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Empresas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGEMP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGEMP \- Empresas \- Consultar detalle (Datos generales)](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/sgi-esb-sgemp-empresas-consultar-detalle-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/sgi-esb-sgemp-empresas-consultar-detalle-datos-generales.md").







### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









