# Hércules : CU\-CSP\-0005\-001 \- Buscar y listar tipos de fase



### Descripción

Se listan los tipos de fase de acuerdo a los valores introducidos en el buscador.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\- CSP\-003\-Gestor que requiere que los tipos de fase estén configurados y vinculados a los modelos de ejecución para poder realizar la gestión de convocatorias y proyectos

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

### Garantías de éxito (postcondiciones)

El listado de tipos de fase se muestra correctamente de acuerdo a los filtros introducidos. Para cada registro se muestran las acciones permitidas sobre el mismo.

### Escenario principal (flujo básico) \- No se aplican filtros de búsqueda

1. El usuario accede a la opción Tipos de fases del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, sin modificar los filtros por defecto del buscador
3. Se muestra el listado de tipos de fase incluyendo solamente aquellas que tengan el campo "activo" a True.

  


### Extensiones (flujos alternativos) \- Se aplican filtros de búsqueda

1. El usuario accede a la opción Tipos de fases del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, indicando algún valor en los campos disponibles
3. Se muestra el listado de tipos de fases de acuerdo a los filtros introducidos

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





