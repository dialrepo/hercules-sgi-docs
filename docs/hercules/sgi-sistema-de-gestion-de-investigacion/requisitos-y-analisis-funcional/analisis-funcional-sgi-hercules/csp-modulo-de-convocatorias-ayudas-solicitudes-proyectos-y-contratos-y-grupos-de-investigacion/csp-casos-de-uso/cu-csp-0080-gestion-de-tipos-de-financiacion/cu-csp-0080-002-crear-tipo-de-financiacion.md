# Hércules : CU\-CSP\-0080\-002 \- Crear tipo de financiación



### Descripción

Se crea el nuevo tipo de financiación pasando a estar disponible en los listados para la creación y modificación de convocatorias y proyectos (asociación de entidades financiadoras).

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor que requiere que los tipos de financiación esté correctamente configurados para poder registrar la información de financiación de convocatorias y proyectos.

ACT\- CSP\-001\-Investigador que requiere ver el detalle de información sobre la financiación de convocatorias y proyectos .

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de EDICION.

### Garantías de éxito (postcondiciones)

El tipo de financiación se crea correctamente y está disponible para la configuración de convocatorias y proyectos (asociación de entidades financiadoras).

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona Añadir nuevo tipo de financiación
3. El usuario introduce un Nombre, con un valor que aún no figure en el tabla de Tipos de financiación sobre un elemento activo (campo "activo" \= "true")
4. El usuario introduce una Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Tipos de financiación

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el Tipo de financiación que ya existe en la tabla de Tipos de financiación sobre un elemento activo (campo "activo" \= "true")
2. El usuario introduce el resto de datos del Tipo de financiación
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el Tipo de financiación
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Tipos de financiación

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  




