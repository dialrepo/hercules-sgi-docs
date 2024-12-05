# Hércules : CU\-CSP\-0090\-001 \- Buscar y listar conceptos de gasto



### Descripción

Se aplica búsqueda y se listan los conceptos de gasto.

  


Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor que requiere que los conceptos de gasto se encuentren correctamente configurados para poder registrar la Elegibilidad y Presupuesto de convocatorias y proyectos.

ACT\- CSP\-001\-Investigador que requiere los conceptos de gasto para ver la Elegibilidad de convocatorias y proyectos e incorporar el desglose del Presupuesto en las solicitudes.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

### Garantías de éxito (postcondiciones)

Los conceptos de gasto se listan correctamente de acuerdo al filtro/filtros de búsqueda introducidos. A través del listado se da opción a las acciones permitidas sobre cada registro.

### Escenario principal (flujo básico) \- No se aplican filtros de búsqueda

1. El usuario accede a la opción Conceptos de gasto del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, sin modificar los filtros por defecto del buscador
3. Se muestra el listado de Conceptos de gasto incluyendo solamente aquellos que tengan el campo "activo" a True.

  


### Extensiones (flujos alternativos) \- Se aplican filtros de búsqueda

1. El usuario accede a la opción Conceptos de gasto del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, indicando algún valor en los campos disponibles
3. Se muestra el listado de Conceptos de gasto de acuerdo a los filtros introducidos

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





