# Hércules : CU\-CSP\-0060\-007 \- Eliminar área temática



### Descripción

Eliminación de un ítem del árbol de áreas temáticas de un Listado de áreas concreto.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en las convocatorias se identifiquen las áreas temáticas para las que pudieran  estar restringidos, así como indicar el área temática seleccionada en sus solicitudes y proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El área y todos sus hijos dejarán de mostrarse en el árbol de áreas temáticas del Listado correspondiente.

### Escenario principal (flujo básico)

1. El usuario accede a la opción Eliminar de un ítem desde el árbol de Áreas temáticas de un Listado concreto
2. Se muestra un mensaje de confirmación al usuario: el ítem y todos sus hijos del árbol dejará de poder ser seleccionado para la creación/modificación de convocatorias
3. El usuario confirma el mensaje
4. El usuario pulsa Guardar
5. Se actualiza el registro tomando el campo activo el valor false. El ítem y todos sus hijos dejarán de mostrarse en el árbol de áreas temáticas.
6. El usuario es informado del resultado positivo de la acción.
7. Se muestra el árbol de áreas visualizando el árbol de acuerdo a las modificaciones incluidas

### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede a la opción Eliminar de un ítem desde el Árbol de áreas temáticas de un Listado concreto
2. Se muestra un mensaje de confirmación al usuario: el ítem y todos sus hijos del árbol  dejará de poder ser seleccionado para la creación/modificación de convocatorias
3. El usuario no acepta el mensaje de confirmación
4. No se realiza ninguna operación en base de datos
5. Se permanece en el árbol de áreas sin ningún cambio

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





