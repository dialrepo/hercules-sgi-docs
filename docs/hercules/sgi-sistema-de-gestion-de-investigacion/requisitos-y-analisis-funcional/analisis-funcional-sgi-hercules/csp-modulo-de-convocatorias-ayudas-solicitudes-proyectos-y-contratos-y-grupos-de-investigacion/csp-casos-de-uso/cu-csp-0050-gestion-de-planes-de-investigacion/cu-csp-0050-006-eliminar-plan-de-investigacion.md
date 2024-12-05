# Hércules : CU\-CSP\-0050\-006 \- Eliminar plan de investigación



### Descripción

Eliminación de plan de investigación

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que las convocatorias y proyectos estén categorizados de acuerdo a los programas bajo los que se enmarcan.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El  plan de investigación ha sido eliminado y ya no figura en el listado de planes de investigación para la gestión de convocatorias y proyectos.

### Escenario principal (flujo básico)

1. El usuario accede a la opción Eliminar plan de investigación desde el listado de planes de investigación.
2. Se muestra un mensaje de confirmación al usuario: el plan y todo su árbol de programas dejarán de poder ser seleccionados para la creación/modificación de convocatorias y proyectos
3. El usuario confirma el mensaje
4. El plan se guarda con el campo Activo a "false"
5. El usuario es informado del resultado positivo de la acción.
6. Se muestra el listado de planes de investigación con los datos actualizados

### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede a la opción Eliminar plan de investigación desde el listado de planes de investigación.
2. Se muestra un mensaje de confirmación al usuario: el plan y todo su árbol de programas dejarán de poder ser seleccionado para la creación/modificación de convocatorias y proyectos
3. El usuario no confirma el mensaje
4. No se realiza ninguna acción en base de datos
5. Se permanece en la pantalla de modificación del plan de investigación

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





