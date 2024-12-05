# Hércules : CU\-CSP\-0060\-002 \- Crear listado de áreas temáticas



### Descripción

Se añade un listado de áreas temáticas. Se entiende por listado una clasificación o agrupación de áreas temáticas. Normalmente, existirá un listado de áreas temáticas independiente por cada convocatoria, sin embargo, se independiza su gestión para que, si así fuera necesario, se puedan compartir los listados/clasificaciones entre varias convocatorias. Las áreas tendrán una estructura jerárquica de árbol. La raíz del árbol será quien dé nombre al Listado. Los nodos de primer nivel serán las áreas. Las ramas del árbol, áreas,  podrán tener diferentes profundidades. No existirá límite de anidamiento. No se distinguirá el nombre en función del nivel, por lo que genéricamente lo que hará este caso de uso será Añadir un ítem al árbol de áreas temáticas.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en las convocatorias se identifiquen las áreas temáticas para las que pudieran  estar restringidos, así como indicar el área temática seleccionada en sus solicitudes y proyectos..

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El listado de áreas se ha añadido correctamente y puede ser utilizado en la creación/modificación de convocatorias.

  


### Escenario principal (flujo básico)

1. El usuario accede a la opción Añadir nuevo listado de áreas temáticas
2. El usuario introduce, en el apartado Datos generales, un Nombre para el listado que no figure aún en la tabla de áreas temáticas entre aquellos listados que estén activos. Dentro de la tabla área temática los listados se identifican como aquellos elementos que sean raíz de un árbol, es decir, cuyo campo "padre" figure a null.
3. El usuario introduce, en el apartado Datos generales, una descripción para el listado
4. El usuario pulsa Guardar
5. El usuario es informado del resultado positivo de la acción.
6. Se muestra la tabla de Listados de áreas temáticas

### Extensiones (flujos alternativos) \- Añadir área temática

1. El usuario accede a la opción Añadir nuevo listado de áreas temáticas
2. El usuario introduce, en el apartado Datos generales, un Nombre para el listado que no figure aún en la tabla de áreas temáticas entre aquellos listados que estén activos. Dentro de la tabla área temática los listados se identifican como aquellos elementos que sean raíz de un árbol, es decir, cuyo campo "padre" figure a null.
3. El usuario introduce, en el apartado Datos generales, una descripción para el listado
4. El usuario accede al apartado de Árbol de áreas y crea el primer área temática ([CU\-CSP\-0060\-003 \- Añadir área temática a un Listado de áreas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-003-anadir-area-tematica-a-un-listado-de-areas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-003-anadir-area-tematica-a-un-listado-de-areas.md"))
5. El usuario pulsa Guardar
6. El usuario es informado del resultado positivo de la acción.
7. Se permanece en la pantalla del nuevo listado de áreas temáticas para que el usuario pueda seguir construyendo el árbol de áreas temáticas.

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un Nombre para el Listado de áreas temáticas que ya existía en la tabla de áreas temáticas, es decir, introduce un Nombre que ya está siendo utilizado para un listado de áreas temáticas en estado activo. Dentro de la tabla área temática los listados se identifican como aquellos elementos que sean raíz de un árbol, es decir, cuyo campo "padre" figure a null.
2. El usuario introduce el resto de datos del Listado de áreas
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el Listado
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra la tabla de  Listados de áreas temáticas

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





