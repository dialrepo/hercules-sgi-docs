# Hércules : CU\-CSP\-0005\-004 \- Eliminar tipo de fase



### Descripción

Eliminación de un tipo de fase.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\- CSP\-003\-Gestor que requiere que los tipos de fase estén configurados y vinculados a los modelos de ejecución para poder realizar la gestión de convocatorias y proyectos

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociad a esta operación con permisos de EDICION.

### Garantías de éxito (postcondiciones)

El tipo de fase se desactiva correctamente y no está disponible para la configuración de los modelos de ejecución, de las convocatorias y de los proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de fase del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del Listado de tipos de fases
3. Se muestra un mensaje de confirmación al usuario: el tipo de fase dejará de estar disponible para la configuración de de modelos de ejecución, convocatorias y proyectos.
4. El usuario confirma la acción
5. El usuario es informado del resultado positivo de la acción
6. Se vuelve al listado de tipos de fase

  


### Escenario principal (flujo básico) \- No se confirma la acción

1. El usuario accede al apartado de Tipos de fase del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del Listado de tipos de fases
3. Se muestra un mensaje de confirmación al usuario: el tipo de fase dejará de estar disponible para la configuración de de modelos de ejecución, convocatorias y proyectos.
4. El usuario no confirma la acción
5. Se vuelve al listado de tipos de fase

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





