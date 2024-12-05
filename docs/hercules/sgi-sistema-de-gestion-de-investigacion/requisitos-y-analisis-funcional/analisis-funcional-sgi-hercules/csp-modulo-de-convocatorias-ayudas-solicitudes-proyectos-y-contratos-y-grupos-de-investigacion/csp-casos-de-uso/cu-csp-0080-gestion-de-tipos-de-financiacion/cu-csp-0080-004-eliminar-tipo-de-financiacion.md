# Hércules : CU\-CSP\-0080\-004 \- Eliminar tipo de financiación



### Descripción

Eliminación de un tipo de financiación.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor que requiere que los tipos de financiación esté correctamente configurados para poder registrar la información de financiación de convocatorias y proyectos.

ACT\- CSP\-001\-Investigador que requiere ver el detalle de información sobre la financiación de convocatorias y proyectos .

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El tipo de financiación se desactiva correctamente y no está disponible para la gestión de las convocatorias y de los proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del Listado de tipos de financiación para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de financiación dejará de estar disponible para la gestión de convocatorias y proyectos.
4. El usuario confirma la acción
5. El usuario es informado del resultado positivo de la acción
6. Se vuelve al listado de tipos de financiación

  


### Escenario principal (flujo básico) \- No se confirma la acción

1. El usuario accede al apartado de Tipos de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del Listado de tipos de financiación para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de financiación dejará de estar disponible para la gestión de convocatorias y proyectos.
4. El usuario no confirma la acción
5. No se realiza ninguna operación en base de datos
6. Se vuelve al listado de tipos de financiación

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





