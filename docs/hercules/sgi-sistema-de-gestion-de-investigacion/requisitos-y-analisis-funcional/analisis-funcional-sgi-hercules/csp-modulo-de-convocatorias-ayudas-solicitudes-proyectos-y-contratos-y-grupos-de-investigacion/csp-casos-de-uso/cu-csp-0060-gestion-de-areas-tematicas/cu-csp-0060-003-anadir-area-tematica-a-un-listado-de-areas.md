# Hércules : CU\-CSP\-0060\-003 \- Añadir área temática a un Listado de áreas



### Descripción

Se añade un área o subarea temática a un Listado de áreas. Las áreas tendrán una estructura jerárquica de árbol. Los nodos de primer nivel serán las áreas. Las ramas del árbol, subáreas, podrán tener diferentes profundidades. No existirá límite de anidamiento. No se distinguirá el nombre en función del nivel, por lo que genéricamente lo que hará este caso de uso será Añadir un ítem al árbol de áreas temáticas.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en las convocatorias se identifiquen las áreas temáticas para las que pudieran  estar restringidos, así como indicar el área temática seleccionada en sus solicitudes y proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El área o subárea temática se ha añadido conformando parte del árbol de áreas de acuerdo al nivel de profundidad en el que haya sido incluido.

### Escenario principal (flujo básico) \- Creación de primer elemento (área temática)

1. El usuario accede a la opción Añadir área temática dentro de un Listado de áreas temáticas
2. El usuario introduce la Abreviatura del área, de forma que tome un valor que no exista en la tabla de áreas temáticas para ningún elemento activo del árbol de áreas del Listado concreto
3. El usuario introduce el nombre del área, de forma que tome un valor que no exista en la tabla de áreas temáticas para ningún elemento activo del árbol de áreas del Listado concreto
4. El usuario pulsa Guardar
5. Se muestra un mensaje de acción positiva
6. Se vuelve a la pantalla de creación/modificación del Listado de áreas temáticas

### Extensiones (flujos alternativos) \- Creación de ítem de primer nivel (área temática)

1. El usuario selecciona la opción Añadir área temática dentro de un Listado de áreas temáticas
2. El usuario introduce la Abreviatura del área, de forma que tome un valor que no exista en la tabla de áreas temáticas para ningún elemento activo del árbol de áreas del Listado concreto
3. El usuario introduce el nombre del área, de forma que tome un valor que no exista en la tabla de áreas temáticas para ningún elemento activo del árbol de áreas del Listado concreto
4. El usuario no selecciona ningún ítem del árbol como elemento padre del nuevo elemento a introducir
5. El usuario pulsa Guardar
6. Se muestra un mensaje de acción positiva
7. Se  vuelve a la pantalla de creación/modificación del Listado de áreas temáticas

  


### Extensiones (flujos alternativos) \- Creación de ítem de cualquier nivel inferior (subárea temática)

1. El usuario selecciona la opción Añadir área temática dentro de un Listado de áreas temáticas
2. El usuario introduce la Abreviatura del área, de forma que tome un valor que no exista en la tabla de áreas temáticas para ningún elemento activo del árbol de áreas del Listado concreto
3. El usuario introduce el nombre del área, de forma que tome un valor que no exista en la tabla de áreas temáticas para ningún elemento activo del árbol de áreas del Listado concreto
4. El usuario selecciona un ítem del árbol como elemento padre del nuevo elemento a introducir
5. El usuario pulsa Guardar
6. Se muestra un mensaje de acción positiva
7. Se  vuelve a la pantalla de creación/modificación del Listado de áreas temáticas

### Extensiones (flujos alternativos) \- Creación de ítem \- Error de unicidad

1. El usuario ha introducido una Abreviatura o un Nombre que ya existían entre las Abreviaturas o Nombre de alguno de los ítems activos del árbol de áreas del Listado concreto
2. El usuario introduce el resto de datos del ítem
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce una nueva Abreviatura o Nombre para el ítem
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción
8. Se  vuelve a la pantalla de creación/modificación del Listado de áreas temáticas

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





