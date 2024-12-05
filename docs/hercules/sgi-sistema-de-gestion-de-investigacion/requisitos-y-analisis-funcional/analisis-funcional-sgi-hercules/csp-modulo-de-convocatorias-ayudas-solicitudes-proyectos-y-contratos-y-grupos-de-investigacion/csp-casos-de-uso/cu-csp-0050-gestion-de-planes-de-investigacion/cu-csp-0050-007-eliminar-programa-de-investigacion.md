# Hércules : CU\-CSP\-0050\-007 \- Eliminar programa de investigación



### Descripción

Eliminación del programa del plan de investigación

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que las convocatorias y proyectos estén categorizados de acuerdo a los programas bajo los que se enmarcan.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El  programa/subprograma/modalidad/submodalidad, etc. ha sido eliminado y no aparece en el árbol de programas del plan para ser incluido en la creación/modificación de convocatorias/proyectos.

### Escenario principal (flujo básico)

1. El usuario accede a la opción Eliminar de un ítem desde desde el árbol de programas de un plan de investigación
2. Se muestra un mensaje de confirmación al usuario: el ítem y todos sus hijos del árbol de programas dejarán de poder ser seleccionado para la creación/modificación de convocatorias y proyectos
3. El usuario confirma el mensaje
4. El usuario pulsa Guardar
5. El ítem se guarda con el campo Activo a false
6. El usuario es informado del resultado positivo de la acción.
7. Se muestra el árbol del programa con sus datos actualizados

### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede a la opción Eliminar de un ítem desde desde el árbol de programas de un plan de investigación
2. Se muestra un mensaje de confirmación al usuario: el ítem y todos sus hijos del árbol de programas dejarán de poder ser seleccionado para la creación/modificación de convocatorias y proyectos
3. El usuario acepta el mensaje de confirmación
4. No se realiza ninguna operación en base de datos
5. Se muestra el árbol del programa con sus datos actualizados

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





