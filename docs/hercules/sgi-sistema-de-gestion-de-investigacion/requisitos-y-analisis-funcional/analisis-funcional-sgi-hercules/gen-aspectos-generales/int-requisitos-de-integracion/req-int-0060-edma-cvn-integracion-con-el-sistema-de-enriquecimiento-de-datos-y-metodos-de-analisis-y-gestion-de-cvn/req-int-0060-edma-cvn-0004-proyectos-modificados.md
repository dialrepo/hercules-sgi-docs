# Hércules : REQ\-INT\-0060\-EDMA\-CVN\-0004 \- Proyectos modificados







### Definición y objetivos

El SGI deberá disponer de una función que permita al módulo de CVN (parte del sistema EDMA) consultar los proyectos creados o modificados desde una fecha dada.

### Descripción integración

Parámetros de entrada:

* Fecha. Es la fecha que debe considerar el SGI para filtrar los proyectos a remitir a CVN: serán todos los proyectos cuya fecha de modificación sea igual o superior a la fecha recibida como parámetro de entrada.
* Estado. Es el estado que debe considerar el SGI para filtrar los proyectos a remitir a CVN: debería de ser siempre el  estado "Concedido"
* Clasificacion CVN: Es el campo  que debe considerar el SGI para filtrar los proyectos a remitir a CVN: si se desea que se envíen los proyectos competitivos este campo debe de tomar el valor "COMPETITIVOS". Si se desea que se envíen los proyecto no competitivos, es decir, contratos este campo debe de tomar el valor "NO\_COMPETITIVOS" y si se desea que se envíen proyectos de Ayuda este campo debe de tomar el valor "AYUDAS"

Parámetros de salida:

* Listado de Identificadores de proyectos

  


### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño del AP [ESB \- SGI \- Proyectos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-proyectos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-proyectos.md")  


  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









  








