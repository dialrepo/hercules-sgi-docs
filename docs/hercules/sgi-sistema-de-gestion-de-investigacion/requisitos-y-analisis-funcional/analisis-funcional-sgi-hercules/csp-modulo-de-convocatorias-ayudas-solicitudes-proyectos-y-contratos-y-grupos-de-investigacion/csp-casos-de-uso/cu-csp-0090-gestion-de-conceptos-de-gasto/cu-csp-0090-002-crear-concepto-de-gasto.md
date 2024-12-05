# Hércules : CU\-CSP\-0090\-002 \- Crear concepto de gasto



### Descripción

Se crea el nuevo concepto de gasto pasando a estar disponible en los listados para recoger la elegibilidad y presupuesto de convocatorias y proyectos.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor que requiere que los conceptos de gasto estén correctamente configurados para poder registrar la información de financiación de convocatorias y proyectos.

ACT\- CSP\-001\-Investigador que requiere ver el detalle de información sobre la financiación de convocatorias y proyectos .

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación con permisos de EDICION.

### Garantías de éxito (postcondiciones)

El concepto de gasto se crea correctamente y está disponible para la configuración de  convocatorias y de los proyectos (elegibilidad y presupuesto).

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Conceptos de gasto del menú de configuración del módulo de CSP
2. El usuario selecciona Añadir nuevo concepto de gasto
3. El usuario introduce un Nombre, con un valor que aún no figura en el tabla de Conceptos de gasto sobre un elemento con el campo "activo" a "true"
4. El usuario introduce una Descripción
5. El usuario pulsa el botón Guardar
6. El usuario es informado del resultado positivo de la acción
7. Se vuelve al listado de Conceptos de gasto

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un Nombre para el concepto de gasto que ya existe en la tabla de Conceptos de gasto con el campo "activo" a true
2. El usuario introduce el resto de datos del Concepto de gasto
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo Nombre para el Concepto de gasto
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Conceptos de gasto

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





