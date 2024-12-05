# Hércules : CU\-CSP\-0080\-001 \- Buscar y listar tipos de financiación



### Descripción

Se listan los tipos de financiación de acuerdo a los valores introducidos en el buscador.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\- CSP\-003\-Gestor que requiere que los tipos de financiación estén configurados y vinculados a los modelos de ejecución para poder realizar la gestión de convocatorias y proyectos

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

### Garantías de éxito (postcondiciones)

Los tipos de financiación se listan correctamente de acuerdo al filtro/filtros de búsqueda introducidos. A través del listado se da opción a las acciones permitidas sobre cada registro.

### Escenario principal (flujo básico) \- No se aplican filtros de búsqueda

1. El usuario accede a la opción Tipos de financiación del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, sin modificar los filtros por defecto del buscador
3. Se muestra el listado de Tipos de financiación incluyendo solamente aquellas que tengan el campo "activo" a "true".

  


### Extensiones (flujos alternativos) \- Se aplican filtros de búsqueda

1. El usuario accede a la opción Tipos de financiación del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, indicando algún valor en los campos disponibles
3. Se muestra el listado de Tipos de financiación de acuerdo a los filtros introducidos

### Requisitos especiales

N/A

  
  
  





