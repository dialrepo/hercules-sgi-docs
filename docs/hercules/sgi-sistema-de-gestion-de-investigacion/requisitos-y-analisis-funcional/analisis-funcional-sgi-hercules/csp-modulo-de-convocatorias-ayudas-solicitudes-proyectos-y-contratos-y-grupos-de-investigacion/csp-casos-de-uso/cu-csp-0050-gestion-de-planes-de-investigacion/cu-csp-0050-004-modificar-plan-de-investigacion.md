# Hércules : CU\-CSP\-0050\-004 \- Modificar plan de investigación



### Descripción

Modificación de plan de investigación

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que las convocatorias y proyectos estén categorizados de acuerdo a los programas bajo los que se enmarcan.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y la unidad de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El  plan de investigación ha sido modificado y figura con los nuevos datos en el listado de planes de investigación.

### Escenario principal (flujo básico)

1. El usuario accede a la opción Modificar plan de investigación desde el listado de planes de investigación.
2. El usuario modifica el nombre para el plan indicando un nuevo nombre que no figure aún en la tabla de planes de investigación activos (siendo los planes aquellos elementos de la tabla "Programa" con "padre" a "null")
3. El usuario introduce una descripción para el plan
4. El usuario pulsa Guardar
5. El usuario es informado del resultado positivo de la acción.
6. Se muestra el listado de planes de investigación con los datos actualizados

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el plan que ya existe dentro de los planes activos (siendo los planes aquellos elementos de la tabla "Programa" con "padre" a "null")
2. El usuario introduce el resto de datos del Plan
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el Plan
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de planes de investigación

### Extensiones (flujos alternativos) \- Añadir programa al árbol del plan de investigación

1. El usuario accede a la opción Modificar plan de investigación desde el listado de planes de investigación.
2. El usuario modifica el nombre para el plan indicando un nuevo nombre que no figure aún entre los planes activos (tabla "Programa" con padre a null)
3. El usuario introduce una descripción para el plan
4. El usuario accede al apartado de Programas del plan y crea el primer programa
5. El usuario pulsa Guardar
6. El usuario es informado del resultado positivo de la acción.
7. Se permanece en la pantalla de modificación del plan de investigación para que el usuario pueda seguir construyendo el árbol de programas del plan

### Extensiones (flujos alternativos) \- Añadir nuevo ítem al árbol del plan

1. El usuario accede a la opción Modificar plan de investigación desde el listado de planes de investigación.
2. El usuario modifica el nombre para el plan indicando un nuevo nombre que no figure aún entre los planes activos (tabla "Programa" con padre a null)
3. El usuario introduce una descripción para el plan
4. El usuario accede al apartado de Programas del plan
5. El usuario accede a uno de los casos de uso [CU\-CSP\-0050\-003 \- Añadir programa al plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-003-anadir-programa-al-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-003-anadir-programa-al-plan-de-investigacion.md") o [CU\-CSP\-0050\-005 \- Modificar programa al plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-005-modificar-programa-al-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-005-modificar-programa-al-plan-de-investigacion.md")
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se permanece en la pantalla de modificación del plan de investigación para que el usuario pueda seguir construyendo el árbol de programas del plan

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





