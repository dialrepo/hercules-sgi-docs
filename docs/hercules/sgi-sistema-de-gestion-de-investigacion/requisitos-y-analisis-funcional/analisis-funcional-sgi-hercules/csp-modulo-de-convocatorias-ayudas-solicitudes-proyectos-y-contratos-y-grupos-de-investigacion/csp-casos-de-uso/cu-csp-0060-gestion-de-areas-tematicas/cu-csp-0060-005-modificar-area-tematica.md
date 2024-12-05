# Hércules : CU\-CSP\-0060\-005 \- Modificar área temática



### Descripción

Se modifican los datos de un área o subárea temática perteneciente al árbol de un Listado de áreas. Las áreas tendrán una estructura jerárquica de árbol. El nodo raíz será el propio Listado de áreas. Los nodos de primer nivel serán las áreas. Las ramas del árbol podrán tener diferentes profundidades. No existirá límite de anidamiento.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en las convocatorias se identifiquen las áreas temáticas para las que pudieran  estar restringidos, así como indicar el área temática seleccionada en sus solicitudes y proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El área/subárea se ha actualizado en el árbol de áreas de acuerdo a los nuevos valores introducidos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Árbol de áreas dentro de un Listado de áreas temáticas
2. El usuario selecciona un ítem (de cualquiera de los niveles del árbol: área o subárea)
3. El usuario modifica la Abreviatura indicando un valor que aún no estuviera presente entre ninguno de los ítems activos del árbol del Listado (independientemente de su nivel)
4. El usuario modifica el Nombre indicando un valor que aún no estuviera presente en ninguno de los ítems activos del árbol del Listado (independientemente de su nivel)
5. El usuario pulsa Guardar
6. Se muestra un mensaje de acción positiva
7. Se permanece en la pantalla del Árbol de áreas para que el  usuario puede seguir realizando la gestión del mismo

### Extensiones (flujo alternativo) \- Modificación de ítem \- Error de unicidad

1. El usuario ha introducido una Abreviatura o Nombre que ya existían entre los ítems activos del árbol del Listado de áreas (independientemente de su nivel)
2. El usuario pulsa Guardar
3. Se muestra un error al usuario informando de la duplicidad sobre el campo correspondiente
4. El usuario introduce una nueva Abreviatura o Nombre para el ítem
5. El usuario pulsa Guardar
6. El usuario es informado del resultado positivo de la acción.
7. Se permanece en la pantalla del Árbol de áreas para que el  usuario puede seguir realizando la gestión del mismo

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





