# Hércules : CU\-CSP\-0011\-004 \- Eliminar tipo de hito



### Descripción

Eliminación de un tipo de hito.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

Personal gestor (ACT\-CSP\-003\-Gestor) de las unidades de gestión con acceso al módulo CSP, que requieren disponer de los tipos  para poder registrar hitos sobre las convocatorias/solicitudes/proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de Borrado.

### Garantías de éxito (postcondiciones)

El tipo de hito se desactiva correctamente y no está disponible para la configuración de los modelos de ejecución y de las convocatorias/solicitudes/proyectos.

  


Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de hito del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Tipos de hito para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de hito dejará de estar disponible para la configuración de modelos de ejecución y de convocatorias/solicitudes/proyectos.
4. El usuario confirma la acción
5. El usuario es informado del resultado positivo de la acción
6. Se vuelve al listado de Tipos de hito

  


### Escenario principal (flujo básico) \- No se confirma la acción

1. El usuario accede al apartado de Tipos de hito del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Tipos de hito para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de hito dejará de estar disponible para la configuración de modelos de ejecución y convocatorias/solicitudes/proyectos
4. El usuario no confirma la acción
5. Se vuelve al listado de Tipos de hitos

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





