# Hércules : REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación













### Definición y objetivos

El ESB debe proporcionar al SGI el detalle de una clasificación o elemento de clasificación concreta de entre las clasificaciones vigentes en la Universidad incluyendo la información relativa a su estructura jerárquica.

El SGI solamente almacenará referencias a las clasificaciones que se prevé estén gestionadas en alguno de los sistemas de gestión universitarios. A partir de esta referencia, el ESB debe encargarse de proporcionar al SGI la información de detalle de la misma. Será el ESB el encargado de redirigir esta petición al sistema universitario de gestión correspondiente.

Si no existe ningún sistema externo que proporcione este listado, se configurará el listado en tiempo de implantación de forma que éste resida de forma independiente en el ESB, tomando como fuente para cada una de las tres clasificaciones identificadas en el SGI las siguientes:

* Para la clasificación UNESCO: [https://www.ciencia.gob.es/portal/site/MICINN/menuitem.8ce192e94ba842bea3bc811001432ea0/?vgnextoid\=363ac9487fb02210VgnVCM1000001d04140aRCRD](https://www.ciencia.gob.es/portal/site/MICINN/menuitem.8ce192e94ba842bea3bc811001432ea0/?vgnextoid=363ac9487fb02210VgnVCM1000001d04140aRCRD "https://www.ciencia.gob.es/portal/site/MICINN/menuitem.8ce192e94ba842bea3bc811001432ea0/?vgnextoid=363ac9487fb02210VgnVCM1000001d04140aRCRD")
* Para la clasificación CNAE: [https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura\_cnae2009\.xls](https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura_cnae2009.xls "https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura_cnae2009.xls")
* Para la clasificación NABS: [https://www.ciencia.gob.es/stfls/MICINN/Ayudas/PN\_2008\_2011/LIA\_Infraestructuras\_CCyTec/FICHERO/FEDER\_2010/Nueva\_clasificacion\_NABS\-2007\.pdf](https://www.ciencia.gob.es/stfls/MICINN/Ayudas/PN_2008_2011/LIA_Infraestructuras_CCyTec/FICHERO/FEDER_2010/Nueva_clasificacion_NABS-2007.pdf "https://www.ciencia.gob.es/stfls/MICINN/Ayudas/PN_2008_2011/LIA_Infraestructuras_CCyTec/FICHERO/FEDER_2010/Nueva_clasificacion_NABS-2007.pdf")

Esta lista de clasificaciones podrá ser extendida por parte de la Universidad con otras adicionales en tiempo de implantación.

### Descripción técnica

Parámetros de entrada:

* Referencia de clasificación (código de identificación de la clasificación o elemento de clasificación para intercambio de información entre ESB y SGI).

Parámetros de salida:

* Identificador
* Código
* Nombre
* Identificador del elemento padre. Para los elementos raíz tomará valor nulo.

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de la estructura Orgánica [SGI \- ESB \- SGO](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGO \- Clasificaciones \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/sgi-esb-sgo-clasificaciones-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/sgi-esb-sgo-clasificaciones-consultar-detalle.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









