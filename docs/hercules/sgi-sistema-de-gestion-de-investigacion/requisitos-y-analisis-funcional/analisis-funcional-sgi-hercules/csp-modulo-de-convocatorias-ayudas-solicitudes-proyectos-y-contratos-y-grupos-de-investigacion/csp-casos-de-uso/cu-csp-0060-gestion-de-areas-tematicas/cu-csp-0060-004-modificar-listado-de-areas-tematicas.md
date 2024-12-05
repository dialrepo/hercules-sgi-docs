# Hércules : CU\-CSP\-0060\-004 \- Modificar listado de áreas temáticas



### Descripción

Se modifican los datos de un Listado de áreas temáticas. 

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

1. El usuario accede a la opción Modificar listado de áreas desde el Buscador y listado de Listados de áreas de temáticas.
2. El usuario modifica el Nombre para el Listado, indicando un nuevo nombre que no figure aún en la tabla de áreas temáticas, entre los elementos que estén activos y sean de tipo "listado". Dentro de la tabla "área temática" los Listados se corresponderán con los registros que tengan el campo "padre" a null (son nodos raíz de árbol).
3. El usuario introduce una Descripción para el Listado
4. El usuario pulsa Guardar
5. El usuario es informado del resultado positivo de la acción.
6. Se muestra la tabla con los Listados de áreas incluyendo el Listado con los datos actualizados

### Extensiones (flujo alternativo) \- Error de unicidad

1. El usuario ha introducido un Nombre para el Listado que ya existía en la tabla de "áreas temáticas" para un elemento activo y de tipo "listado".  Dentro de la tabla "área temática" los Listados se corresponderán con los registros que tengan el campo "padre" a null (son nodos raíz de árbol).
2. El usuario introduce el resto de datos del Listado
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo Nombre para el Listado
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra la tabla con los Listados de áreas incluyendo el Listado con los datos actualizados

### Extensiones (flujo alternativo) \- Añadir área temática al Listado

1. El usuario accede a la opción Modificar listado de áreas desde el Buscador y listado de Listados de áreas de temáticas.
2. El usuario modifica el Nombre para el Listado indicando un nuevo nombre que no figure aún en la tabla de áreas temáticas, entre los elementos que estén activos y sean de tipo "listado". Dentro de la tabla "área temática" los Listados se corresponderán con los registros que tengan el campo "padre" a null (son nodos raíz de árbol).
3. El usuario introduce una Descripción para el Listado
4. El usuario accede al apartado de Árbol de áreas del Listados y crea el primer área ([CU\-CSP\-0060\-003 \- Añadir área temática a un Listado de áreas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-003-anadir-area-tematica-a-un-listado-de-areas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-003-anadir-area-tematica-a-un-listado-de-areas.md"))
5. El usuario pulsa Guardar
6. El usuario es informado del resultado positivo de la acción.
7. Se permanece en la pantalla de modificación del Listado de áreas para que el usuario pueda seguir construyendo el árbol de áreas temáticas

### Extensiones (flujo alternativo) \- Añadir nuevo ítem al árbol de áreas temáticas

1. El usuario accede a la opción Modificar listado de áreas desde el Buscador y listado de Listados de áreas de temáticas.
2. El usuario modifica el Nombre para el Listado indicando un nuevo nombre que no figure aún en la tabla de áreas temáticas, entre los elementos que estén activos y sean de tipo "listado". Dentro de la tabla "área temática" los Listados se corresponderán con los registros que tengan el campo "padre" a null (son nodos raíz de árbol).
3. El usuario introduce una Descripción para el Listado
4. El usuario accede al apartado de Árbol de áreas del Listado
5. El usuario accede a uno de los casos de uso [CU\-CSP\-0060\-003 \- Añadir área temática a un Listado de áreas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-003-anadir-area-tematica-a-un-listado-de-areas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-003-anadir-area-tematica-a-un-listado-de-areas.md") o [CU\-CSP\-0060\-005 \- Modificar área temática](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-005-modificar-area-tematica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-005-modificar-area-tematica.md")
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se permanece en la pantalla de modificación del Listado de áreas para que el usuario pueda seguir construyendo el árbol de áreas temáticas

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





