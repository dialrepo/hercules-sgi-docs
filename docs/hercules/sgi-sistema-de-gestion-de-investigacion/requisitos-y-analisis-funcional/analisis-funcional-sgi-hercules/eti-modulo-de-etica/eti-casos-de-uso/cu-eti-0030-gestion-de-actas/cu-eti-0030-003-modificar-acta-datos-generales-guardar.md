# Hércules : CU\-ETI\-0030\-003 \- Modificar Acta \- Datos generales \- Guardar



### Descripción

Formularios de datos generales, memorias  y asistentes.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Actas y seleccionado una acta del listado para su edición.

El acta debe de estar en estado "En elaboración"

Una vez en la edición  de la acta se mantiene en la pestaña de Datos generales y sólo hace cambios en esta pestaña.

### Garantías de éxito (postcondiciones)

Se modifican los datos generales de la acta seleccionada.

No se modifican los datos de la pestaña de Asistentes.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Actas con el listado de todas las actas dadas de alta en el sistema.
2. Se selecciona la acta.
3. Se presenta la pantalla de edición de la acta.
4. El usuario se mantiene en la pestaña de Datos generales.
5. Se modifican los datos de la acta.
6. El usuario selecciona la acción Guardar.
7. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
8. El usuario es informado del resultado positivo de la acción.
9. Se presenta el listado de Actas.

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la creación de la Acta.
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se presenta el listado de Actas




