# Hércules : CU\-CSP\-0005\-003 \- Modificar tipo de fase



### Descripción

Modificación de un tipo de fase.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\- CSP\-003\-Gestor que requiere que los tipos de fase estén configurados y vinculados a los modelos de ejecución para poder realizar la gestión de convocatorias y proyectos

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de EDICION.

### Garantías de éxito (postcondiciones)

El tipo de fase se modifica correctamente y está disponible para la configuración de los modelos de ejecución, de las convocatorias y de los proyectos, con sus nuevos valores.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de fase del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Tipos de fases para un registro concreto
3. El usuario modifica el Nombre del Tipo de fase, poniéndole un valor que aún no figure en el tabla de Tipos de fase entre aquellos elementos activos (campo "activo"  a "true")
4. El usuario introduce o modifica la Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Tipos de fase

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el Tipo de fase que ya existían en la tabla de Tipos de fase entre aquellos elementos activos (campo "activo" a "true")
2. El usuario introduce el resto de datos del Tipo de fase
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo Nombre para el Tipo de fase
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de fases

### Extensiones (flujos alternativos) \- Desactivar tipo de fase

1. El usuario accede al apartado de Tipos de fase del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de tipos de fases para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de fase dejará de estar disponible para la configuración de modelos de ejecución, convocatorias y proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El tipo de fase deja de estar disponible en todas las opciones de creación y modificación de configuración de modelos de ejecución, convocatorias y proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de tipos de fases

### Extensiones (flujos alternativos) \- Reactivar tipo de fase

1. El usuario accede al apartado de Tipos de fase del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Reactivar del listado de tipos de fases para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de fase volverá a estar disponible para la configuración de modelos de ejecución, convocatorias y proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El tipo de fase vuelve a estar disponible en todas las opciones de creación y modificación de configuración de modelos de ejecución, convocatorias y proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de fases

  


### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede al apartado de Tipos de fase del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar o Reactivar del listado de tipos de fases
3. Se muestra un mensaje de confirmación al usuario (el correspondiente a la activación o desactivación)
4. El usuario no confirma la acción
5. No se realiza ninguna operación en base de datos
6. Se muestra el listado de tipos de fases

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





