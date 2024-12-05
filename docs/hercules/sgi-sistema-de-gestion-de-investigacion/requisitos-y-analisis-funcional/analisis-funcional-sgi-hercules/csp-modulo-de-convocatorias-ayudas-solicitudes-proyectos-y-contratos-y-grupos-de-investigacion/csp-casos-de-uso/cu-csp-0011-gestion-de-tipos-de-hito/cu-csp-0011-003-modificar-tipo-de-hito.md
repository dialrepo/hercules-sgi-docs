# Hércules : CU\-CSP\-0011\-003 \- Modificar tipo de hito



### Descripción

Modificación de un tipo de hito.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

Personal gestor (ACT\-CSP\-003\-Gestor) de las unidades de gestión con acceso al módulo CSP, que requieren disponer de los tipos  para poder registrar hitos en las convocatorias/solicitudes/proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

### Garantías de éxito (postcondiciones)

El tipo de hito se modifica correctamente y está disponible para la configuración de los modelos de ejecución y de las convocatorias/solicitudes/proyectos, con sus nuevos valores.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de hito del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Tipos de hito para un registro concreto
3. El usuario modifica el Nombre del Tipo de hito, poniéndole un valor que aún no figure en el tabla de Tipos de hito entre los elementos activos
4. El usuario introduce o modifica la Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Tipos de hito

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un Nombre para el Tipo de hito que ya existe en la tabla de Tipos de hito como un elemento activo
2. El usuario introduce el resto de datos del Tipo de hito
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo Nombre para el Tipo de hito
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de hito

### Extensiones (flujos alternativos) \- Desactivar tipo de hito

1. El usuario accede al apartado de Tipos de hito del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Tipos de hito para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de hito dejará de estar disponible para la configuración de modelos de ejecución y de convocatorias/solicitudes/proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El tipo de hito deja de estar disponible en todas las opciones de creación y modificación de configuración de modelos de ejecución y de convocatorias/solicitudes/proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de hito

### Extensiones (flujos alternativos) \- Reactivar tipo de hito

1. El usuario accede al apartado de Tipos de hito del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Reactivar del listado de Tipos de hito para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de hito volverá a estar disponible para la configuración de modelos de ejecución y de convocatorias/solicitudes/proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El tipo de hito vuelve a estar disponible en todas las opciones de creación y modificación de configuración de modelos de ejecución y de convocatorias/solicitudes/proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de hito

  


### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede al apartado de Tipos de hito del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar o Reactivar del listado de Tipos de hito para un registro concreto
3. Se muestra un mensaje de confirmación al usuario (el correspondiente a la activación o desactivación)
4. El usuario no confirma la acción
5. No se realiza ninguna operación en base de datos
6. Se muestra el listado de Tipos de hito

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





