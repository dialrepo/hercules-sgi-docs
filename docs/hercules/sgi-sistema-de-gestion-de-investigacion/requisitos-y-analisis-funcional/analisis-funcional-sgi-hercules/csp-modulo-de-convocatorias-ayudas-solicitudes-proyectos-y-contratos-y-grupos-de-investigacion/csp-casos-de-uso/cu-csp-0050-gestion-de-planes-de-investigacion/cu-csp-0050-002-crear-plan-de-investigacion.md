# Hércules : CU\-CSP\-0050\-002 \- Crear plan de investigación



### Descripción

Creación de nuevo plan de investigación

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que las convocatorias y proyectos estén categorizados de acuerdo a los programas bajo los que se enmarcan.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

  


Garantías de éxito (postcondiciones)

El nuevo plan de investigación se ha creado y aparece en la búsqueda y listado.

### Escenario principal (flujo básico)

1. El usuario accede a la opción Añadir nuevo plan de investigación
2. El usuario introduce un nombre para el plan que no figure aún en la tabla de planes de investigación activos (tabla "Programa" con padre a null)
3. El usuario introduce una descripción para el plan
4. El usuario pulsa Guardar
5. El usuario es informado del resultado positivo de la acción.
6. Se muestra el listado de planes de investigación

### Extensiones (flujos alternativos) \- Añadir programa de investigación

1. El usuario accede a la opción Añadir nuevo plan de investigación
2. El usuario introduce un nombre para el plan que no figure aún en la tabla de planes de investigación activos (tabla "Programa" con padre a null)
3. El usuario introduce una descripción para el plan
4. El usuario accede al apartado de Programas del plan y crea el primer programa
5. El usuario pulsa Guardar
6. El usuario es informado del resultado positivo de la acción.
7. Se permanece en la pantalla del nuevo plan de investigación para que el usuario pueda seguir construyendo el árbol de programas del plan

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el plan que ya existían entre los planes activos (siendo plan aquel elemento de la tabla "Programa" con padre a null)
2. El usuario introduce el resto de datos del Plan
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el Plan
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de planes de investigación

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





