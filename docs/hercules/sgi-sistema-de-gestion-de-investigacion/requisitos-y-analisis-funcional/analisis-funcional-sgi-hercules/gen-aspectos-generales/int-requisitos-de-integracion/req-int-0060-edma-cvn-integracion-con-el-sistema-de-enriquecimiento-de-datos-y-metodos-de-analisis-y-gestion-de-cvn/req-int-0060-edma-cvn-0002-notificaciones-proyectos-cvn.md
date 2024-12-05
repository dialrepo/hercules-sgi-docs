# Hércules : REQ\-INT\-0060\-EDMA\-CVN\-0002 \- Notificaciones proyectos CVN







### Definición y objetivos

El SGI deberá disponer de una función que permita recibir desde el módulo de CVN (parte del sistema EDMA) la información de los proyectos que el personal investigador haya introducido en su CVN. El SGI visualizará esta información para que las unidades de gestión decidan o no crear un nuevo proyecto/contrato en el apartado proyectos del módulo CSP. El módulo CVN junto con los datos registrados deberá remitir el vínculo con la solicitud de autorización que previamente el SGI informó a través de [REQ\-INT\-0060\-EDMA\-CVN\-0001 \- Autorizaciones modificadas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0060-edma-cvn-integracion-con-el-sistema-de-enriquecimiento-de-datos-y-metodos-de-analisis-y-gestion-de-cvn/req-int-0060-edma-cvn-0001-autorizaciones-modificadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0060-edma-cvn-integracion-con-el-sistema-de-enriquecimiento-de-datos-y-metodos-de-analisis-y-gestion-de-cvn/req-int-0060-edma-cvn-0001-autorizaciones-modificadas.md")

### Descripción integración

Parámetros de entrada:

* No se requieren parámetros de entrada.

Parámetros de salida:

* Referencia de persona. Referencia de la persona dentro del sistema de gestión de personas corporativo a la que pertenece el ítem proyecto/contrato registrado en CVN.
* Documento acreditativo de la concesión del proyecto: identificador en el SGDOC del documento que contenga la acreditación de la concesión del proyecto/contrato.
* URL acreditativa: url donde está contenida la acreditación de la concesión del proyecto/contrato.
* Título del proyecto. Campo título del ítem proyecto/contrato registrado en CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.010 \- Nombre del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.010 \- Nombre del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Referencia en entidad convocante.  Referencia que se le ha dado el proyecto en la entidad convocante/financiadora recogida en CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.260 \- Código de proyecto según la entidad financiadora, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.110 \- Código de proyecto según la entidad financiadora, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Fecha inicio. Fecha de inicio del proyecto/contrato recogido en CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.270 \- Fecha de inicio del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.180 \- Fecha de inicio del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Fecha fin. Fecha de fin del proyecto/contrato recogido en CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.410 \- Fecha de finalización, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas. En el caso de que el proyecto se registre bajo el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas, este campo no estará disponible, al no estar contemplado en la norma CVN.
* Ámbito geográfico. Ámbito geográfico del proyecto/contrato recogido en CVN. La correspondencia con la norma FECYT de CVN es: se corresponde con el campo 050\.020\.010\.040 \- Ámbito del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.040 Ámbito del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Grado de contribución. Tipo de participación en el proyecto/contrato. La correspondencia con la norma FECTY de CVN es: se corresponde con el campo 050\.020\.010\.170 \- Grado de contribución, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas y con el campo 050\.020\.020\.280 \- Grado de contribución, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Referencia Responsable (IP). El módulo de CVN remitirá la referencia a la persona dentro del Sistema de gestión de personas corporativo asociado al dato recogido sobre el campo IP de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.140 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.250 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Datos responsable (IP). Nombre de la persona que ocupa el cargo de IP del proyecto, recogida en CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.140 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.250 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Referencia de la entidad de participación. El módulo de CVN remitirá la referencia a la entidad dentro del Sistema de gestión de empresas corporativo asociado al dato recogido sobre el campo Entidad donde se desarrolla del CVN. La correspondencia con la norma FECYT será: campo  050\.020\.010\.100 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.370 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Datos de la entidad de participación.  Nombre de la entidad recogido sobre el campo Entidad donde se desarrolla del CVN. La correspondencia con la norma FECYT será: campo  050\.020\.010\.100 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.370 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Listado de referencias de entidades financiadoras. El módulo de CVN remitirá un listado incluyendo la referencia de las entidades dentro del Sistema de gestión de empresas corporativo asociado al dato recogido sobre el campo Entidades financiadoras del CVN. Se corresponde con el campo 050\.020\.010\.190 Entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.120 Nombre/s entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Listado entidades financiadoras. Listado con el nombre de las entidades recogido sobre el campo Entidades financiadoras del CVN. Se corresponde con el campo 050\.020\.010\.190 Entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.120 Nombre/s entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Nombre del programa. Nombre del programa de financiación recogido en el CVN. Se corresponde con el campo 050\.020\.010\.250 Nombre del programa de financiación, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.170 Nombre del programa asociado al proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Importe total. Importe total del proyecto/programa recogido en el CVN. Se corresponde con el campo 050\.020\.010\.290 Financiación del proyecto, cuantía total, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.200 Financiación del proyecto, cuantía total, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Porcentaje subvencionado. Porcentaje subvencionado recogido en el CVN. Se corresponde con el campo 050\.020\.010\.310 Financiación del proyecto, porcentaje en subvención, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.220 Financiación del proyecto, porcentaje en subvención, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.
* Identificador de la solicitud de autorización previamente remitido por el SGI a través de [REQ\-INT\-0060\-EDMA\-CVN\-0001 \- Autorizaciones modificadas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0060-edma-cvn-integracion-con-el-sistema-de-enriquecimiento-de-datos-y-metodos-de-analisis-y-gestion-de-cvn/req-int-0060-edma-cvn-0001-autorizaciones-modificadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0060-edma-cvn-integracion-con-el-sistema-de-enriquecimiento-de-datos-y-metodos-de-analisis-y-gestion-de-cvn/req-int-0060-edma-cvn-0001-autorizaciones-modificadas.md")
* Identificador del ítem en el sistema de CVN. Dato obligatorio

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del SGI para la gestión de autorizaciones y proyectos externos [ESB \- SGI \- Autorizaciones y notificaciones Proyectos externos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-autorizaciones-y-notificaciones-proyectos-externos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-autorizaciones-y-notificaciones-proyectos-externos/index.md").

El servicio concreto del API que cubre este requisito es [ESB \- SGI \- Notificaciones Proyectos externos \- Dar de alta](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-autorizaciones-y-notificaciones-proyectos-externos/esb-sgi-notificaciones-proyectos-externos-dar-de-alta.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-autorizaciones-y-notificaciones-proyectos-externos/esb-sgi-notificaciones-proyectos-externos-dar-de-alta.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









