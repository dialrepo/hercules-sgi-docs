# Hércules : REQ\-INT\-0060\-EDMA\-CVN\-0010 \- Listar estado de items







### Definición y objetivos

El SGI deberá disponer de una función que permita al módulo de CVN (parte del sistema EDMA) consultar el estado de los items enviados a Producción científica para su validación. La función devuelve el identificador CVN y el estado (Validado o Rechazado) de aquellos items almacenados en producción científica que han cambiado al estado Validado o Rechazado en una fecha igual o superior a la fecha de estado pasada por parámetro

### Descripción integración

Parámetros de entrada:

* Fecha a partir de la cuál se quiere saber si ha habido cambios de estado

Parámetros de salida:

* Listado de entidades de Producción Científica Estado. Cada Producción Científica Estado estará formado el identificación del item de producción científica en el módulo CVN y el estado (VALIDADO o RECHAZADO)

  


### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del SGI para la gestión de la producción científica [ESB \- SGI \- Producción Científica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/index.md").

El servicio concreto del API que cubre este requisito es [ESB \- SGI \- Producción científica \- Buscar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/esb-sgi-produccion-cientifica-buscar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/esb-sgi-produccion-cientifica-buscar.md").







### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









  








