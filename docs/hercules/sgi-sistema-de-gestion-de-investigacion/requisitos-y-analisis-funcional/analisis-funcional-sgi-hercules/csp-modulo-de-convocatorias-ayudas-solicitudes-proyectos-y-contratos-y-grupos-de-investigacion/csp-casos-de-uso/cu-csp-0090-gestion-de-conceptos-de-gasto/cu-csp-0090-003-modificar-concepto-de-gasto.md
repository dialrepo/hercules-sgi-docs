# Hércules : CU\-CSP\-0090\-003 \- Modificar concepto de gasto



### Descripción

Modificación de un concepto de gasto.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor que requiere que los conceptos de gasto esté correctamente configurados para poder registrar la información de convocatorias y proyectos (elegibilidad y presupuestto).

ACT\- CSP\-001\-Investigador que requiere ver el detalle de información de convocatorias y proyectos .

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

### Garantías de éxito (postcondiciones)

El concepto de gasto se modifica correctamente y está disponible para la gestión de las convocatorias y de los proyectos, con sus nuevos valores.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Conceptos de gasto del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Conceptos de gasto para un registro concreto
3. El usuario modificar el Nombre del Concepto de gasto, poniéndole un valor que aún no figura en el tabla de Conceptos de gasto para un elemento con el campo "activo" a "true"
4. El usuario introduce o modifica la Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Conceptos de gasto

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario accede al apartado de Conceptos de gasto del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Conceptos de gasto para un registro concreto
3. El usuario ha introducido un Nombre para el Concepto de gasto que ya existe en la tabla de Conceptos de gasto para un elemento con el campo "activo" a "true"
4. El usuario introduce el resto de datos del Concepto de gasto
5. El usuario pulsa Guardar
6. Se muestra un error al usuario
7. El usuario introduce un nuevo Nombre para el Concepto de gasto
8. El usuario pulsa Guardar
9. El usuario es informado del resultado positivo de la acción.
10. Se muestra el listado de Conceptos de gasto

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





