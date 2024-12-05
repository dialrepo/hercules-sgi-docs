# Hércules : REQ\-INT\-0060\-EDMA\-CVN\-0008 \- Modificación item producción científica







### Definición y objetivos

El SGI deberá disponer de una función que permita al módulo de CVN (parte del sistema EDMA) enviar la información de un item modificado del módulo de CVN para su posible validación en el módulo de Producción científica por parte de los Responsables de los Grupos de Investigación o de las personas de la Unidad de gestión.

### Descripción integración

Parámetros de entrada:

* Identificador del item de producción científica en el módulo CVN
* Código de la Fecyt que sirve para identificar el apartado
* Estado del item de producción científica (Validado o Pendiente)
* Lista con los campos definidos en el item de producción científica
* Lista con los autores del item de producción científica
* Lista con los índices de impacto del item de producción científica
* Lista con los identificadores de los proyectos SGI con los que se relaciona el item de producción científica
* Lista con las url y/o documentos que acreditan el item de producción científica

Parámetros de salida:

* No tiene

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del SGI para la gestión de la producción científica [ESB \- SGI \- Producción Científica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/index.md").

El servicio concreto del API que cubre este requisito es [ESB \- SGI \- Producción científica \- Modificar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/esb-sgi-produccion-cientifica-modificar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/esb-sgi-produccion-cientifica-modificar.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









  








