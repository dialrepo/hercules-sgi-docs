# Hércules : REQ\-INT\-0030\-SGO\-0030 \- Listar clasificaciones













### Definición y objetivos

El ESB debe proporcionar al SGI el listado de clasificaciones vigentes en la Universidad con su estructura jerárquica. Será el ESB el encargado de redirigir esta petición al sistema universitario de gestión correspondiente.

Si no existe ningún sistema externo que proporcione este listado, se configurará el listado en tiempo de implantación de forma que éste resida de forma independiente en el ESB, tomando como fuente para cada una de las tres clasificaciones identificadas en el SGI las siguientes:

* Para la clasificación UNESCO: [https://www.ciencia.gob.es/portal/site/MICINN/menuitem.8ce192e94ba842bea3bc811001432ea0/?vgnextoid\=363ac9487fb02210VgnVCM1000001d04140aRCRD](https://www.ciencia.gob.es/portal/site/MICINN/menuitem.8ce192e94ba842bea3bc811001432ea0/?vgnextoid=363ac9487fb02210VgnVCM1000001d04140aRCRD "https://www.ciencia.gob.es/portal/site/MICINN/menuitem.8ce192e94ba842bea3bc811001432ea0/?vgnextoid=363ac9487fb02210VgnVCM1000001d04140aRCRD")
* Para la clasificación CNAE: [https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura\_cnae2009\.xls](https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura_cnae2009.xls "https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura_cnae2009.xls")
* Para la clasificación NABS: [https://www.ciencia.gob.es/stfls/MICINN/Ayudas/PN\_2008\_2011/LIA\_Infraestructuras\_CCyTec/FICHERO/FEDER\_2010/Nueva\_clasificacion\_NABS\-2007\.pdf](https://www.ciencia.gob.es/stfls/MICINN/Ayudas/PN_2008_2011/LIA_Infraestructuras_CCyTec/FICHERO/FEDER_2010/Nueva_clasificacion_NABS-2007.pdf "https://www.ciencia.gob.es/stfls/MICINN/Ayudas/PN_2008_2011/LIA_Infraestructuras_CCyTec/FICHERO/FEDER_2010/Nueva_clasificacion_NABS-2007.pdf")

Esta lista de clasificaciones podrá ser extendida por parte de la Universidad con otras adicionales en tiempo de implantación.

### Descripción técnica

Parámetros de entrada:

* Tipo de clasificación
* Identificador del nivel padre

El SGI proveerá de un interface gráfico donde permitir al usuario seleccionar uno o varios elementos de clasificación para asociarlos a una entidad [IU\-GEN\-0120 \- Selección de clasificaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0120-seleccion-de-clasificaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0120-seleccion-de-clasificaciones.md"). Las clasificaciones entre las que poder elegir elementos a asociar podrán ser potencialmente todas las del árbol. Si adicionalmente se quisiera restringir la lista de clasificaciones a las que tengan un padre concreto, que no tengan padre (que sean de nivel raíz) o las pertenecientes a uno o varios tipos de clasificación concretos, estos filtros han de venir informados desde el formulario que invoque al formulario de selección de clasificaciones, por lo que estos parámetros irán implícitos de acuerdo al caso de uso que provoque la invocación del mismo. Estos filtros no serán visibles por pantalla.

Parámetros de salida: listado de clasificaciones del tipo y con el identificador de nivel padre indicado. Si se especifica que el nivel padre sea nulo o vacío, se devolverán las áreas de conocimiento de nivel raíz, esto es, que no tienen padre, y que además cumplan el criterio de filtrado indicado en el parámetro Tipo de clasificación (en caso de venir informado).  


Para cada elemento se devolverá:

* Identificador
* Código
* Nombre
* Identificador del elemento padre. Para los elementos raíz tomará valor nulo.

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de la estructura Orgánica [SGI \- ESB \- SGO](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGO \- Clasificaciones \- Buscar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/sgi-esb-sgo-clasificaciones-buscar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/sgi-esb-sgo-clasificaciones-buscar.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









