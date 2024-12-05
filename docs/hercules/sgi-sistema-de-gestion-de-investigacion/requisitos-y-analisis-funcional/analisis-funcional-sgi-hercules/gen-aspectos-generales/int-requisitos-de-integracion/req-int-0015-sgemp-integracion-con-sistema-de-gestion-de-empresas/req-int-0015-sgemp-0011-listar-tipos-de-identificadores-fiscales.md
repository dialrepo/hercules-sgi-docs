# Hércules : REQ\-INT\-0015\-SGEMP\-0011 \- Listar tipos de identificadores fiscales







### Definición y objetivos

Recuperación del listado de tipos de identificadores fiscales recogidos por el sistema de gestión universitario correspondiente. El listado será utilizado en [IU\-GEN\-0100\-0082 \- Solicitar alta de empresa](https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0100-0082+-+Solicitar+alta+de+empresa "https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0100-0082+-+Solicitar+alta+de+empresa"). El objetivo de este requisito de integración es alinear la recogida de datos desde el SGI para solicitar el alta de una empresa con el sistema de gestión universitario correspondiente donde se materializará el registro.

  








### Descripción técnica integración

Parámetros de entrada: sin parámetros de entrada.

Parámetros de salida: listado de tipos de identificadores fiscales:

* Identificador del tipo de identificador fiscal
* Nombre de tipo de identificador fiscal

El listado devuelto será presentado al usuario, por norma general, en un componente selector (combo).

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Empresas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGEMP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGEMP \- Empresas \- Listar tipos de identificador](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/sgi-esb-sgemp-empresas-listar-tipos-de-identificador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/sgi-esb-sgemp-empresas-listar-tipos-de-identificador.md").

  








Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









