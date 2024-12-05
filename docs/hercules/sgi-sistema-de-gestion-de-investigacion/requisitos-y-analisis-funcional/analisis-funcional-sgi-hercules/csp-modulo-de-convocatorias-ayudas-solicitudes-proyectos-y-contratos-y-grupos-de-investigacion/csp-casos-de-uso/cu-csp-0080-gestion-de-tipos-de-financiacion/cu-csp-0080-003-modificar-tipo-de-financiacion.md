# Hércules : CU\-CSP\-0080\-003 \- Modificar tipo de financiación



### Descripción

Modificación de un tipo de financiación.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor que requiere que los tipos de financiación esté correctamente configurados para poder registrar la información de financiación de convocatorias y proyectos.

ACT\- CSP\-001\-Investigador que requiere ver el detalle de información sobre la financiación de convocatorias y proyectos .

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

### Garantías de éxito (postcondiciones)

El tipo de financiación se modifica correctamente y está disponible para la gestión de las convocatorias y de los proyectos, con sus nuevos valores.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Tipos de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Tipos de financiación para un registro concreto
3. El usuario modificar el Nombre del Tipo de financiación, poniéndole un valor que aún no figure en el tabla de Tipos de financiación sobre un elemento activo (campo "activo" \= "true")
4. El usuario introduce o modifica la Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Tipos de financiación

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario accede al apartado de Tipos de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Tipos de financiación para un registro concreto
3. El usuario ha introducido un nombre para el Tipo de financiación que ya existe en la tabla de Tipos de financiación sobre un elemento activo (campo "activo" \= "true")
4. El usuario introduce el resto de datos del Tipo de financiación
5. El usuario pulsa Guardar
6. Se muestra un error al usuario
7. El usuario introduce un nuevo Nombre para el Tipo de financiación
8. El usuario pulsa Guardar
9. El usuario es informado del resultado positivo de la acción.
10. Se muestra el listado de Tipos de financiación

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





