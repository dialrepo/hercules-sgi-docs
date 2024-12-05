# Hércules : CU\-CSP\-0060\-001 \- Buscar y listar listados de áreas temáticas



### Descripción

Búsqueda y listado de listados/grupos de áreas temáticas. Se entiende por listado una clasificación o agrupación de áreas temáticas. Normalmente, existirá un listado de áreas temáticas independiente por cada convocatoria, sin embargo, se independiza su gestión para que, si así fuera necesario, se puedan compartir los listados/clasificaciones entre varias convocatorias. Las áreas tendrán una estructura jerárquica de árbol. La raíz del árbol es el nombre del Listado de áreas. Los nodos de primer nivel del árbol serán las áreas. Las ramas del árbol, áreas,  podrán tener diferentes profundidades. No existirá límite de anidamiento. No se distinguirá el nombre en función del nivel, por lo que genéricamente lo que hará este caso de uso será Añadir un ítem al árbol de áreas temáticas.

### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en las convocatorias se identifiquen las áreas temáticas para las que pudieran  estar restringidos, así como indicar el área temática seleccionada en sus solicitudes y proyectos..

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

Se presenta la la tabla con los listados de áreas temáticas de acuerdo a los filtros introducidos.

### Escenario principal (flujo básico) \- No se aplican filtros de búsqueda

1. El usuario accede a la opción Áreas temáticas del módulo CSP
2. El usuario pulsa Buscar, sin modificar los filtros por defecto del buscador
3. Se muestra la tabla de resultados conteniendo los datos de los listados de áreas temáticas incluyendo solamente aquellos que tengan el campo "activo" a True.

  


### Extensiones (flujos alternativos) \- Se aplican filtros de búsqueda

1. El usuario accede a la opción Áreas temáticas del módulo CSP
2. El usuario pulsa Buscar, indicando algún valor en los campos disponibles
3. Se muestra  la tabla de resultados conteniendo los datos de los listados de áreas temáticas de acuerdo a los filtros introducidos.

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





