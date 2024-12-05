# Hércules : CU\-CSP\-0070\-001 \- Buscar y listar fuentes de financiación



### Descripción

Búsqueda y listado de fuentes de financiación.

### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que las convocatorias y proyectos dispongan de la información de financiación correctamente configuradad.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

Se presenta el listado de fuentes de financiación de acuerdo a los filtros introducidos.

### Escenario principal (flujo básico) \- No se aplican filtros de búsqueda

1. El usuario accede a la opción Fuentes de financiación del módulo CSP
2. El usuario pulsa Buscar, sin modificar los filtros por defecto del buscador
3. Se muestra el listado de Fuentes de financiación incluyendo solamente aquellas que tengan el campo "activo" a "true".

  


### Extensiones (flujos alternativos) \- Se aplican filtros de búsqueda

1. El usuario accede a la opción Fuentes de financiación del módulo CSP
2. El usuario pulsa Buscar, indicando algún valor en los campos disponibles
3. Se muestra el listado de Fuentes de financiación de acuerdo a los filtros introducidos.

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





