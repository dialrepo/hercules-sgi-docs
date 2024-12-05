# Hércules : CU\-CSP\-0008\-003 \- Modificar tipo de finalidad



### Descripción

Modificación de un tipo de finalidad.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

Personal gestor (ACT\-CSP\-003\-Gestor) de las unidades de gestión con acceso al módulo CSP, que requieren disponer de los tipos de finalidad para poder clasificar de acuerdo al tipo de acción a desarrollar las convocatorias y proyectos.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere ver toda la información de las convocatorias  y proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

### Garantías de éxito (postcondiciones)

El tipo de finalidad se modifica correctamente y está disponible para la configuración de los modelos de ejecución, de las convocatorias y de los proyectos, con sus nuevos valores.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de finalidad del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Tipos de finalidad para un registro concreto
3. El usuario modificar el Nombre del Tipo de finalidad, poniéndole un valor que aún no figure en el tabla de Tipos de finalidad para un elemento activo
4. El usuario introduce o modifica la Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Tipos de finalidad

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el Tipo de finalidad que ya existe en la tabla de Tipos de finalidad para un elemento activo
2. El usuario introduce el resto de datos del Tipo de finalidad
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo Nombre para el Tipo de finalidad
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de finalidad

### Extensiones (flujos alternativos) \- Desactivar tipo de finalidad

1. El usuario accede al apartado de Tipos de finalidad del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Tipos de finalidad para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de finalidad dejará de estar disponible para la configuración de modelos de ejecución, convocatorias y proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El tipo de finalidad deja de estar disponible en todas las opciones de creación y modificación de configuración de modelos de ejecución, convocatorias y proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de finalidad

### Extensiones (flujos alternativos) \- Reactivar tipo de finalidad

1. El usuario accede al apartado de Tipos de finalidad del menú de configuración del módulo de CSP
2. El usuario selecciona la opción reactivar del listado de Tipos de finalidad para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el tipo de finalidad volverá a estar disponible para la configuración de modelos de ejecución, convocatorias y proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El tipo de finalidad vuelve a estar disponible en todas las opciones de creación y modificación de configuración de modelos de ejecución, convocatorias y proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de finalidad

  


### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede al apartado de Tipos de finalidad del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar o  Reactivar del listado de Tipos de finalidad para un registro concreto
3. Se muestra un mensaje de confirmación al usuario (el correspondiente a la activación o desactivación)
4. El usuario no confirma la acción
5. No se realiza ninguna operación en base de datos
6. Se muestra el listado de Tipos de finalidad

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





