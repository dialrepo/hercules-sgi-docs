# Hércules : CU\-CSP\-0008\-001 \- Buscar y listar de tipos de finalidad



### Descripción

Se listan los tipos de finalidad de acuerdo a los valores introducidos en el buscador.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

Personal gestor (ACT\-CSP\-003\-Gestor) de las unidades de gestión con acceso al módulo CSP, que requieren disponer de los tipos de finalidad para poder clasificar de acuerdo al tipo de acción a desarrollar las convocatorias y proyectos.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere que ver toda la información de las convocatorias  y proyectos.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

### Garantías de éxito (postcondiciones)

El listado de tipos de finalidad se muestra correctamente de acuerdo a los filtros introducidos. Para cada registro se muestran las acciones permitidas sobre el mismo.

### Escenario principal (flujo básico) \- No se aplican filtros de búsqueda

1. El usuario accede a la opción Tipos de finalidad del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, sin modificar los filtros por defecto del buscador
3. Se muestra el listado de Tipos de finalidad incluyendo solamente aquellas que tengan el campo "activo" a "true".

  


### Extensiones (flujos alternativos) \- Se aplican filtros de búsqueda

1. El usuario accede a la opción Tipos de finalidad del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, indicando algún valor en los campos disponibles
3. Se muestra el listado de Tipos de finalidad de acuerdo a los filtros introducidos

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





