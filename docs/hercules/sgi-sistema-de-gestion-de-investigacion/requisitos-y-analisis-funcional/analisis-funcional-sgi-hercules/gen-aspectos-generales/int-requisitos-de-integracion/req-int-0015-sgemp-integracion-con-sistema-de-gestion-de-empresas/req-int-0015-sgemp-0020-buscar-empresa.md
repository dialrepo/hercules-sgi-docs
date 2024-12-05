# Hércules : REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa













### Definición y objetivos

El SGI requiere disponer de información de las Empresas con las se requiera establecer algún tipo de relación. El SGI tratará la entidad Empresa de forma centralizada de manera que todos los módulos que requieran de la misma (CSP, RCL, PII, ETI, CAT, etc.) la utilicen de forma común. El SGI no dispondrá  de una gestión directa de Empresas sino que éstas deberán proceder de la integración con el o los sistemas universitarios correspondientes donde se centralice la gestión de las mismas. Como en el resto de integraciones, se persigue la gestión unificada de los datos de las empresas evitando así la duplicidad de la gestión y asegurando la integridad de los datos.

El ESB del SGI será el encargado de derivar la invocación del servicio de búsqueda a uno u otro sistema universitario si fuese necesario en función de alguna tipología concreta (que en este caso sería determinada por algún parámetro de identificación interno al SGI y ESB).

El mecanismo de operación en todos los módulos del SGI será homogéneo: se dispondrá de un buscador de Empresa, que a través del interface de integración con el SGEMP, devolverá los datos de la Empresa que estuviesen disponibles en el SGEMP. 

### Descripción técnica integración

Parámetros de entrada:

* Cadena de texto que podrá contener indistintamente:
	+ Nombre de la empresa
	+ Razón social
	+ Número de identificación fiscal

El SGI proveerá el interface gráfico para recoger los parámetros de búsqueda [IU\-GEN\-0100\-0080 \- Búsqueda de empresa.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md")

Salida: el resultado será el listado de todas las empresas que cumplan con los criterios establecidos, incluyendo para cada una de ellas:

* Identificador/Referencia (código interno entre ESB y SGI que permitirá referenciar de forma única a la empresa tanto en la comunicación SGI\-ESB como en el modelo de datos del SGI)
* Nombre
* Tipo de identificador fiscal (CIF, VAT, ...)
* Número de identificación fiscal
* Razón social

El SGI mostrará los resultados devueltos en un listado sobre el que se podrá seleccionar el registro concreto que vaya a ser utilizado en el caso de uso que invoca al buscador. Ver [IU\-GEN\-0080 \- Búsqueda de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"). El SGI facilitará el interface para recoger la solicitud de alta de una empresa en el sistema externo, a través de [IU\-GEN\-0081 \- Solicitar alta de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0081-solicitar-alta-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0081-solicitar-alta-de-empresa.md") que hará uso del servicio de integración [REQ\-INT\-0015\-SGEMP\-0040 \- Solicitar alta de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0040-solicitar-alta-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0040-solicitar-alta-de-empresa.md").

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Empresas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGEMP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGEMP \- Empresas \- Buscar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/sgi-esb-sgemp-empresas-buscar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-basicos/sgi-esb-sgemp-empresas-buscar.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









