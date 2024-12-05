# Hércules : CU\-CSP\-0007\-003 \- Modificar tipo de enlace



### Descripción

Modificación de un tipo de enlace.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\- CSP\-003\-Gestor que requiere que los tipos de enlace estén configurados y vinculados a los modelos de ejecución para poder realizar la gestión de convocatorias y proyectos

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de edición.

### Garantías de éxito (postcondiciones)

El tipo de enlace se modifica correctamente y está disponible para la configuración de los modelos de ejecución, de las convocatorias y de los proyectos, con sus nuevos valores.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de enlace del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Tipos de enlace para un registro activo concreto
3. El usuario modifica el Nombre del Tipo de enlace, poniéndole un valor que aún no figure en el tabla "tipo enlace" para ningún elemento activo
4. El usuario introduce o modifica la Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Tipos de enlace

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el Tipo de enlace que ya existe en la tabla de Tipos de enlace para un elemento activo
2. El usuario introduce el resto de datos del Tipo de enlace
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo Nombre para el Tipo de enlace que no aún no exista en la tabla "tipo enlace" sobre un elemento activo
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de enlace

### Extensiones (flujos alternativos) \- Eliminar (desactivar) tipo de enlace

1. El usuario accede al apartado de Tipos de enlace del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Tipos de enlace para un registro activo concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de enlace dejará de estar disponible para la configuración de modelos de ejecución, convocatorias y proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El tipo de enlace deja de estar disponible en todas las opciones de creación y modificación de configuración de modelos de ejecución, convocatorias y proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de enlace

### Extensiones (flujos alternativos) \- Reactivar tipo de enlace

1. El usuario accede al apartado de Tipos de enlace del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Reactivar del listado de Tipos de enlaces para un registro inactivo concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de enlace volverá a estar disponible para la configuración de modelos de ejecución, convocatorias y proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El tipo de enlace vuelve a estar disponible en todas las opciones de creación y modificación de configuración de modelos de ejecución, convocatorias y proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de enlace

  


### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede al apartado de Tipos de enlace del menú de configuración del módulo de CSP
2. El usuario selecciona una de las acciones Eliminar o Reactivar del Listado de tipos de enlaces para un registro concreto
3. Se muestra un mensaje de confirmación al usuario (el correspondiente a la activación o desactivación)
4. El usuario no confirma la acción
5. No se realiza ninguna operación en base de datos
6. Se muestra el listado de Tipos de enlace

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





