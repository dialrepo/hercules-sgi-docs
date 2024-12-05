# Hércules : CU\-CSP\-0005\-002 \- Crear tipo de fase



### Descripción

Se crea el nuevo tipo de fase pasando a estar disponible en los listados de gestión para la creación y modificación de modelos de ejecución, convocatorias y proyectos.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\- CSP\-003\-Gestor que requiere que los tipos de fase estén configurados y vinculados a los modelos de ejecución para poder realizar la gestión de convocatorias y proyectos

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de Creación.

### Garantías de éxito (postcondiciones)

El tipo de fase se crea correctamente y está disponible para la configuración de los modelos de ejecución, de las convocatorias y de los proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de fase del menú de configuración del módulo de CSP
2. El usuario selecciona Añadir nuevo tipo de fase
3. El usuario introduce un Nombre, con un valor que aún no figure en el tabla de Tipos de fase como elemento activo (campo "activo" a "true")
4. El usuario introduce una Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de tipos de fase

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el Tipo de fase que ya existe en la tabla de Tipos de fase como elemento activo (campo "activo" a "true")
2. El usuario introduce el resto de datos del Tipo de fase
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el Tipo de fase
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de tipos de fase

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





