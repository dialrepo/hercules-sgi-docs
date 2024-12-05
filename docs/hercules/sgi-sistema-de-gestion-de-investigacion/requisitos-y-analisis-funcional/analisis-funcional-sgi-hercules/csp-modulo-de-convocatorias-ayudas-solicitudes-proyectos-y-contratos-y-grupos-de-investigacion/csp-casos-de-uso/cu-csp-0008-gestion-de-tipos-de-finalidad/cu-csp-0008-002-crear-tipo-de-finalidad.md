# Hércules : CU\-CSP\-0008\-002 \- Crear tipo de finalidad



### Descripción

Se crea el nuevo tipo de finalidad pasando a estar disponible en los listados de gestión para la creación y modificación de modelos de ejecución, convocatorias y proyectos.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

Personal gestor (ACT\-CSP\-003\-Gestor) de las unidades de gestión con acceso al módulo CSP, que requieren disponer de los tipos de finalidad para poder clasificar de acuerdo al tipo de acción a desarrollar las convocatorias y proyectos.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere ver toda la información de las convocatorias y proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de Creación.

### Garantías de éxito (postcondiciones)

El tipo de finalidad se crea correctamente y está disponible para la configuración de los modelos de ejecución, de las convocatorias y de los proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de finalidad del menú de configuración del módulo de CSP
2. El usuario selecciona Añadir nuevo tipo de finalidad
3. El usuario introduce un Nombre, con un valor que aún no figure en el tabla de Tipos de finalidad para un elemento activo
4. El usuario introduce una Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Tipos de finalidad

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el Tipo de finalidad que ya existe en la tabla de Tipos de finalidad para un elemento activo
2. El usuario introduce el resto de datos del Tipo de finalidad
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el Tipo de finalidad
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de finalidad

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





