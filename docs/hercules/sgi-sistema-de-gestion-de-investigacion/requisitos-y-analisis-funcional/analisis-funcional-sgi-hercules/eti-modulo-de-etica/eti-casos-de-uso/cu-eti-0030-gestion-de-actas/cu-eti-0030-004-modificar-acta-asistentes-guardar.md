# Hércules : CU\-ETI\-0030\-004 \- Modificar Acta \- Asistentes \- Guardar



### Descripción

Formularios de datos generales, memorias  y asistentes.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Actas y seleccionado una acta del listado para su edición.

El acta debe de estar en estado "En elaboración"

Se selecciona una asistente para su modificación

### Garantías de éxito (postcondiciones)

No se modifican los datos de la pestaña de Datos generales.

Los datos de los asistentes son modificados.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Actas con el listado de todas las actas.
2. Se selecciona la acta.
3. Se presenta la pantalla de edición de acta.
4. El usuario va a la pestaña de Asistentes.
5. Se muestra el listado de todos los asistentes.
6. El usuario selecciona el editar de uno de los asistentes.
7. El usuario en la pantalla de Edición asistente, modifica el check de asistencia y le añade un motivo.
8. El usuario selecciona la acción Modificar.
9. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
10. Se actualiza el listado de asistentes.
11. El usuario selecciona la acción Guardar.
12. Se modifica el dato del asistente.

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la modificación de la Acta.
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se presenta el listado de Actas




