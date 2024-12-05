# Hércules : CU\-CSP\-0050\-003 \- Añadir programa al plan de investigación



### Descripción

Se añade un programa, subprograma, modalidad o submodalidad al plan de investigación. El plan de investigación tendrá una estructura jerárquica de árbol. Los nodos de primer nivel, bajo la raíz, serán los programas. Las ramas del árbol (programas) podrán tener diferentes profundidades. No existirá límite de anidamiento. No se distinguirá el nombre en función del nivel, por lo que genéricamente lo que hará este caso de uso será Añadir un ítem al árbol del plan de investigación.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que las convocatorias y proyectos estén categorizados de acuerdo a los programas bajo los que se enmarcan.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El programa se ha añadido al plan conformando parte de su árbol de programas, subprogramas, modalidad, submodalid, etc. de acuerdo al nivel de profundidad en el que haya sido incluido.

### Escenario principal (flujo básico) \- Creación de primer programa

1. El usuario accede al apartado de Programas de un Plan
2. El plan no tiene ningún programa
3. El usuario introduce el Nombre del programa
4. El usuario introduce la Descripción del programa
5. El usuario pulsa Guardar
6. Se muestra un mensaje de acción positiva
7. Se  vuelve a la pantalla de Modificación del Plan de investigación para que el usuario puede seguir añadiendo elementos al árbol

### Extensiones (flujos alternativos) \- Creación de ítem

1. El usuario selecciona la opción Añadir nuevo ítem al árbol de programas desde la pantalla de Modificación del plan de investigación
2. El usuario introduce el Nombre del ítem, no coincidente con ninguno de los nombres de los ítems activos del árbol del plan de investigación (la unicidad de los elementos no raíz aplica solamente dentro del propio árbol al que pertenezcan)
3. El usuario introduce la Descripción
4. Se muestra la estructura de árbol que conforman ya todos los programas del plan
5. El usuario selecciona un ítem del árbol como elemento padre del nuevo elemento a introducir
6. El usuario pulsa Guardar
7. Se muestra un mensaje de acción positiva
8. Se  permanece en el apartado de Programas del Plan de investigación para que el usuario puede seguir añadiendo elementos al árbol

  


### Extensiones (flujos alternativos) \- Creación de ítem \- Error de unicidad

1. El usuario ha introducido un nombre que ya existía entre los ítems activos del árbol de un plan (la unicidad de los elementos no raíz aplica solamente dentro del propio árbol al que pertenezcan)
2. El usuario introduce el resto de datos del ítem
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el ítem
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se permanece en el apartado de Programas del Plan de investigación para que el usuario puede seguir añadiendo elementos al árbol

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





