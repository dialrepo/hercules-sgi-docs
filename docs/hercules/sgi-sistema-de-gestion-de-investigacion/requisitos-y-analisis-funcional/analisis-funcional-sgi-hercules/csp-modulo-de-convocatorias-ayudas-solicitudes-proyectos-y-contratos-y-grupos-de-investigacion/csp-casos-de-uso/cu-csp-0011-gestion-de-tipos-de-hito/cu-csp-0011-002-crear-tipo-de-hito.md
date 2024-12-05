# Hércules : CU\-CSP\-0011\-002 \- Crear tipo de hito



### Descripción

Se crea el nuevo tipo de hito pasando a estar disponible en los listados de gestión para la creación y modificación de modelos de ejecución y convocatorias/solicitudes/proyectos.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

Personal gestor (ACT\-CSP\-003\-Gestor) de las unidades de gestión con acceso al módulo CSP, que requieren disponer de los tipos para poder registrar hitos en las convocatorias/solicitudes/proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de Creación.

### Garantías de éxito (postcondiciones)

El tipo de hito se crea correctamente y está disponible para la configuración de los modelos de ejecución y de las convocatorias/solicitudes/proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de hito del menú de configuración del módulo de CSP.
2. El usuario selecciona Añadir  tipo de hito.
3. El usuario introduce un Nombre, con un valor que aún no figure en el tabla de Tipos de hito entre los elementos activos
4. El usuario introduce una Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Tipos de hito

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el Tipo de hito que ya existe en la tabla de Tipos de hito como un elemento activo
2. El usuario introduce el resto de datos del Tipo de hito
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el Tipo de hito
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de hito

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





