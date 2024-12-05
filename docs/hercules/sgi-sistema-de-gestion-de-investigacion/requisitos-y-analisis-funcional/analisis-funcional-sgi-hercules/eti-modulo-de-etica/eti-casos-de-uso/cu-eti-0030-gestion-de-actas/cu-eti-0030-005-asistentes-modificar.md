# Hércules : CU\-ETI\-0030\-005 \- Asistentes \- Modificar



### Descripción

Formulario de modificación de asistencia de un evaluador en una convocatoria de reunión.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Actas y seleccionado una acta del listado para su edición.

Una vez en la edición  de la acta se va a la pestaña de Asistentes.

Que existan asistentes en la convocatoria de reunión.

### Garantías de éxito (postcondiciones)

Se modifica la asistencia de un evaluador en la convocatoria de reunión asociada al acta.

Los cambios únicamente se realizan en memoria.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Actas con el listado de todas las actas dadas de alta en el sistema.
2. Se selecciona la acta.
3. Se presenta la pantalla de edición de acta.
4. El usuario va a la pestaña de Asistentes.
5. El usuario selecciona un asistente del listado
6. El usuario en la pantalla de Modificar asistente modifica el check de asistencia y le añade el motivo.
7. El usuario selecciona la acción Modificar.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
9. Se presenta el asistente seleccionado con los datos modificados en el  listado de asistentes de convocatoria de reunión asociada al acta..

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la modificación del asistente.
3. El usuario selecciona la acción Modificar.
4. Se presenta el listado de asistentes con los datos modificados




