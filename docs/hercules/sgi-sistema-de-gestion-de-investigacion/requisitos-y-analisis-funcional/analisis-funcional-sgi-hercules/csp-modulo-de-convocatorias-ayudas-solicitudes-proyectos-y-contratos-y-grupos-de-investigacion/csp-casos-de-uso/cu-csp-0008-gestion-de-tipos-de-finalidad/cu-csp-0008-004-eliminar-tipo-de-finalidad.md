# Hércules : CU\-CSP\-0008\-004 \- Eliminar tipo de finalidad



### Descripción

Eliminación de un tipo de finalidad.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

Personal gestor (ACT\-CSP\-003\-Gestor) de las unidades de gestión con acceso al módulo CSP, que requieren disponer de los tipos de finalidad para poder clasificar de acuerdo al tipo de acción a  desarrollar las convocatorias y proyectos.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere que ver toda la información de las convocatorias  y proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de Borrado.

### Garantías de éxito (postcondiciones)

El tipo de finalidad se desactiva correctamente y no está disponible para la configuración de los modelos de ejecución, de las convocatorias y de los proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de finalidad del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Tipos de finalidad para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de finalidad dejará de estar disponible para la configuración de modelos de ejecución, convocatorias y proyectos.
4. El usuario confirma la acción
5. El usuario es informado del resultado positivo de la acción
6. Se vuelve al listado de Tipos de finalidad

  


### Escenario principal (flujo básico) \- No se confirma la acción

1. El usuario accede al apartado de Tipos de finalidad del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Tipos de finalidad para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de finalidad dejará de estar disponible para la configuración de modelos de ejecución, convocatorias y proyectos.
4. El usuario no confirma la acción
5. Se vuelve al listado de Tipos de finalidad

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





