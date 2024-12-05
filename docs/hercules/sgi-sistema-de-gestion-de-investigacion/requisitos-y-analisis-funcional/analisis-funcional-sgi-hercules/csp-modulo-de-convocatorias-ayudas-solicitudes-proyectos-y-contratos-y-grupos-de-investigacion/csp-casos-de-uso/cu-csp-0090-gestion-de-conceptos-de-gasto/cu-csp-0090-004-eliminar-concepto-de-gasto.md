# Hércules : CU\-CSP\-0090\-004 \- Eliminar concepto de gasto



### Descripción

Eliminación de un concepto de gasto.

  


Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor que requiere que los conceptos de gasto esté correctamente configurados para poder registrar la información de convocatorias y proyectos.

ACT\- CSP\-001\-Investigador que requiere ver el detalle de información de convocatorias y proyectos .

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El concepto de gasto se desactiva correctamente y no está disponible para la gestión de las convocatorias y de los proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Concepto de gasto del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Concepto de gasto para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el concepto de gasto dejará de estar disponible para la gestión de convocatorias y proyectos.
4. El usuario confirma la acción
5. El usuario es informado del resultado positivo de la acción
6. Se vuelve al listado de Conceptos de gasto

### Escenario principal (flujo básico) \- No se confirma la acción

1. El usuario accede al apartado de Conceptos de gasto del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de conceptos de gasto para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el concepto de gasto dejará de estar disponible para la gestión de convocatorias y proyectos.
4. El usuario no confirma la acción
5. No se realiza ninguna operación en base de datos
6. Se vuelve al listado de Concepto de gasto

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





