# Hércules : CU\-ETI\-0010\-006 \- Modificar Convocatoria reunión \- Asignación de memorias \- Guardar



### Descripción

Formularios de datos generales  y  de asignación de memorias a una convocatoria.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Convocatorias reunión y seleccionado una convocatoria del listado para su edición.

Una vez en la edición  de la convocatoria se va a la pestaña de Asignación de memorias y sólo hace cambios en esta pestaña.

Existen memorias en el listado de memorias a revaluar.

### Garantías de éxito (postcondiciones)

No se modifican los datos de la pestaña de Datos generales.

Las memorias asignadas nuevas se cambian de estado a "En evaluación", "En evaluación seguimiento anual" o "En evaluación seguimiento final" dependiendo del tipo de convocatoria y del estado de la memoria y las eliminadas a "En secretaría".

### Escenario principal (flujo básico)

1. Se presenta la pantalla Convocatorias reunión con el listado de todas las Convocatorias de reunión dadas de alta en el sistema y que no se hayan borrado.
2. Se selecciona la convocatoria de reunión.
3. Se presenta la pantalla de edición de convocatoria de reunión.
4. El usuario va a la pestaña de Asignación de memorias.
5. El usuario elimina una de las memorias que existen en el listado.
6. Se comprueba que la fecha de la reunión es posterior a la fecha
7. El usuario selecciona Añadir nueva memoria.
8. El usuario en la pantalla de Nueva memoria selecciona una memoria, un evaluador 1 y un evaluador 2
9. El usuario selecciona la acción Añadir.
10. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
11. Se presentan la memoria añadida en el  listado de memorias de la reunión de convocatoria.
12. El usuario selecciona la acción Guardar.
13. Se añade la nueva memoria a la reunión de convocatoria y se modifican su estado a "En evaluación" o "En evaluación seguimiento anual" o "En evaluación seguimiento final".
14. Se notifica  al investigador/solicitante de la fecha de convocatoria de su evaluación [CU\-COM\-0020 \- Generar comunicado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado").

### Extensiones (flujos alternativos) \- Error en negocio

1. Si se ha producido algún error de validación en negocio:  

	* Nueva memoria: Conflicto de intereses
	* Eliminar memoria: Fecha actual igual o posterior a la fecha de evaluación
2. El usuario modifica la información necesaria para realizar de forma correcta la asignación de memorias
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se presenta el listado de Convocatorias de reunión.




