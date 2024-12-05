# Hércules : CU\-CSP\-0060\-006 \- Eliminar Listado de áreas temática



### Descripción

Eliminación de área temática

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en las convocatorias se identifiquen las áreas temáticas para las que pudieran  estar restringidos, así como indicar el área temática seleccionada en sus solicitudes y proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El área y todos sus hijos dejarán de mostrarse en el árbol de áreas temáticas.

  


### Escenario principal (flujo básico)

1. El usuario accede a la opción Eliminar desde la tabla de Listados de áreas temáticas.
2. Se muestra un mensaje de confirmación al usuario: el Listado y su árbol de áreas temáticas dejará de poder ser seleccionado para la creación/modificación de convocatorias
3. El usuario confirma el mensaje
4. El Listado  se actualiza sobre la tabla de áreas temáticas con el campo Activo a No
5. El usuario es informado del resultado positivo de la acción.
6. Se muestra la tabla de Listado de áreas visualizando los datos actualizados

### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede a la opción Eliminar desde la tabla de Listados de áreas temáticas.
2. Se muestra un mensaje de confirmación al usuario: el Listado y su árbol de áreas temáticas dejará de poder ser seleccionado para la creación/modificación de convocatorias
3. El usuario no confirma el mensaje
4. No se realiza ninguna acción en base de datos
5. Se muestra la tabla de Listado de áreas sin ningún cambio

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





