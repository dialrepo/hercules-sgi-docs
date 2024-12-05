# Hércules : CU\-ETI\-0080\-002 \- Volver a estado anterior



### Descripción

Desde el listado de memorias de una petición de evaluación, el gestor puede cambiar el estado de las memorias a su estado anterior dependiendo del estado actual de las memorias. No se puede hacer con todos los estados

Únicamente se pueden hacer los siguientes cambios de estado:

* Si el estado de la memoria es  "En secretaría" al pulsar sobre la acción *Volver estado anterior* se volverá al estado "Completada" (si no tiene evaluaciones asociadas),  "Pendiente de correcciones" (si la última evaluación tiene un dictamen "Pendiente de correcciones"), o "No procede evaluar" (si la última evaluación tiene un dictamen "No procede evaluar")
* Si el estado de la memoria es "En secretaría revisión mínima" al pulsar sobre la acción *Volver estado anterior* se volverá al estado "Favorable pendiente de revisión mínima"
* Si el estado de la memoria es "Archivada" al pulsar sobre la acción *Volver estado anterior* se volverá al estado "Pendiente de correcciones" (si la última evaluación tiene un dictamen "Pendiente de correcciones"),  o "No procede evaluar" (si la última evaluación tiene un dictamen "No procede evaluar") o "Favorable pendiente de revisión mínima" (si la última evaluación tiene un dictamen "Favorable pendiente de revisión mínima")
* Si el estado de la memoria es  "En evaluación" al pulsar sobre la acción *Volver estado anterior* se volverá al estado "En secretaría". Habrá que eliminar la evaluación creada.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de menú Peticiones de evaluación y seleccionado una petición del listado para su consulta o bien desde la opción de menú Memorias.

La petición de evaluación tiene una memoria en estado "Enviar secretaría".

### Garantías de éxito (postcondiciones)

Se cambia al estado "Completada" (si no tiene evaluaciones asociadas), "Pendiente de correcciones" (si la última evaluación tiene un dictamen "Pendiente de correcciones"), o "No procede evaluar" (si la última evaluación tiene un dictamen "No procede evaluar")

### Escenario principal (flujo básico)

1. Se presenta la pantalla Peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema.
2. Se selecciona la petición de evaluación.
3. El usuario va a la pestaña de Memorias.
4. El usuario selecciona la acción de Volver a estado anterior en una memoria que está en estado "En secretaría".
5. El sistema hace todos los cambios que tienen que hacer (los comentados en las postcondiciones).
6. El usuario es informado del resultado positivo de la acción.
7. Se mantienen en la pantalla de listado de memoria, donde puede verse el cambio de estado de la memoria.




