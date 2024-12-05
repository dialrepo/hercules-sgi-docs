# Hércules : REQ\-INT\-0010\-SGE\-0101 \- Validar gasto







### Definición y objetivos

El apartado de validación de gastos está destinado a que los funcionales del SGI validen, de acuerdo a la elegibilidad y estado de las partidas económicas del proyecto, las imputaciones de gastos realizadas sobre las mismas. Los gastos objetivo de este apartado son aquellos que aún no han entrado en fase de contabilización, aún no han desencadenado la contabilización del documento contable asociado. Las imputaciones de gasto deberán haber sido realizadas en el SGE a una de las aplicaciones presupuestarias configuradas en el presupuesto del proyecto y la información disponible en el SGI será extraída desde el SGE.

Para cada gasto los funcionales podrán cambiar el estado, pasando el cargo del gasto a "Validado", "Rechazado" o "Bloqueado" y recoger un comentario asociado al cambio de estado. La información del cambio de estado a Validado se tendrá que notificar al SGE. Serán ya los procedimientos y flujos del SGE los que operen con el estado de validación remitidos desde el SGI para realizar la contabilización. Una vez que el gasto avance en el flujo de registro propio del SGE ya no cumplirá los filtros para ser mostrado en este apartado de Validación de gastos.

  








### Descripción técnica integración

Parámetros de entrada: 

* Identificador del gasto
* Comentario asociado al cambio de estado de validar

Parámetros de salida: 

* No aplica

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la Ejecución económica de proyectos: [SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md").

El servicio concreto del API que cubre este requisito es: [SGI \- ESB \- SGE \- Ejecución económica \- Validar gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-validar-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-validar-gasto.md").

  








### Interfaces de usuario relacionados



  






### Informes relacionados







### Casos de uso relacionados









