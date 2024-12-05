# Hércules : CU\-ETI\-0060\-003 \- Alta Petición de evaluación \- Guardar



### Descripción

Las peticiones de evaluación de ética pueden venir de un proyecto de investigación o bien crearse desde cero sin estar asociado a ningún proyecto.

En el caso de venir desde el botón de añadir una nueva solicitud de petición de evaluación, se mostrarán los siguientes datos en la pantalla de Datos generales:

* Título del proyecto: caja de texto
* Tipo de actividad: desplegable con los valores:
	+ Proyecto de investigación
	+ Práctica docente
	+ Tesis doctoral
	+ Trabajo Fin de Máster
	+ Trabajo Fin de Grado
* Financiación: caja de texto
* Fecha inicio: calendario para marcar el día
* Fecha fin: calendario para marcar el día
* Resumen del proyecto: caja de texto
* Valor social del proyecto: caja de texto
* Objetivos científicos del proyecto: caja de texto
* Diseño metodológico del proyecto: caja de texto

Existe otras tres pestañas para crear el equipo de trabajo, asignar tareas a las memorias y para crear memorias pero que no son necesarias para crear una nueva petición de evaluación. Dichos datos no se necesitan informar en la creación, aunque puede hacerse si se desea.

Una vez que se da al botón Guardar, se crea la petición de evaluación en el sistema y se vuelve a la pantalla del listado.

Internamente al crear una nueva petición se almacenará el investigador o solicitante como el usuario de creación y se añade al equipo de trabajo.

  


### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Mis peticiones de evaluación y pulsar sobre el botón de Nueva petición de evaluación.

Sólo se informan los datos de la pestaña de "Datos generales".

### Garantías de éxito (postcondiciones)

Se da de alta una nueva petición de evaluación.

Se almacenará el investigador o solicitante como el usuario de creación.

Se añade al investigador o solicitante como persona del equipo de trabajo.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las  peticiones de evaluación dadas de alta en el sistema y creadas por la persona logada en el sistema.
2. El usuario pulsa sobre el botón de Nueva petición de evaluación
3. Se presenta la pantalla de nueva petición de evaluación en la pestaña de Datos Generales con todos los datos a cumplimentar.
4. El usuario rellena los campos obligatorios y, de forma opcional, los campos no obligatorios.
5. El usuario selecciona la acción Guardar.
6. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
7. Se crea la petición de evaluación.
8. Se añade al usuario como persona del equipo de trabajo.
9. El usuario es informado del resultado positivo de la acción.
10. Se presenta el listado de Mis peticiones de evaluación.

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la creación de la petición de evaluación.
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se presenta el listado de Mis peticiones de evaluación.




