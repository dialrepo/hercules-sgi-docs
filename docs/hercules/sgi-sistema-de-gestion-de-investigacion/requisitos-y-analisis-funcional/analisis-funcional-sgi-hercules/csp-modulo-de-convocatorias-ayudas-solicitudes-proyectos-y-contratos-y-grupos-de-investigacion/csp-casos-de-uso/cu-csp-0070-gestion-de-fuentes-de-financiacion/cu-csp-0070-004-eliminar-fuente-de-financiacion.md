# Hércules : CU\-CSP\-0070\-004 \- Eliminar fuente de financiación



### Descripción

Eliminación de una fuente de financiación. La fuente de financiación dejará de estar disponible para la configuración de convocatorias y proyectos.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en convocatorias y proyectos se identifiquen las fuentes de financiación.

  


### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de EDICION.

  


### Garantías de éxito (postcondiciones)

La fuente de financiación se desactiva correctamente y no está disponible para la configuración de los modelos de ejecución, de las convocatorias y de los proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Fuentes de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Fuentes de financiación para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: la fuente de financiación dejará de estar disponible para la configuración de convocatorias y proyectos.
4. El usuario confirma la acción
5. El usuario es informado del resultado positivo de la acción
6. Se vuelve al listado de Fuentes de financiación

  


### Escenario principal (flujo básico) \- No se confirma la acción

1. El usuario accede al apartado de Fuentes de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Fuentes de financiación para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: la fuente de financiación dejará de estar disponible para la configuración de convocatorias y proyectos.
4. El usuario no confirma la acción
5. Se vuelve al listado de Fuentes de financiación

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





