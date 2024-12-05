# Hércules : CU\-CSP\-0020\-001 \- Buscar y listar modelos de ejecución



### Descripción

Búsqueda y listado de los "modelo de ejecución". Desde este listado se podrán modificar los datos del modelo de ejecución y/o proceder a su eliminación ("desactivación")

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador.  Deberá pertenecer a una unidad de gestión que tenga habilitada esta funcionalidad. Normalmente se tratará de las unidades UGI, OTRI, OPE.

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor de las unidades que tengan habilitadas las funcionalidades de EDICION sobre Convocatorias y proyectos. Ver [CU\-USR\-0020\-003 \- Asignar funcionalidad a unidad de gestión y perfil de usuario](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-USR-0020-003+-++Asignar+funcionalidad+a+unidad+de+gesti%C3%B3n&linkCreation=true&fromPageId=597852680 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-USR-0020-003+-++Asignar+funcionalidad+a+unidad+de+gesti%C3%B3n&linkCreation=true&fromPageId=597852680"). Normalmente se tratará de las unidades UGI, OTRI, OPE.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere que se creen las convocatorias para presentar solicitudes sobre las mismas.

### Precondiciones

El administrador de datos (ACT\-CSP\-004\-Administrador) se autentica a través del usuario de dominio corporativo. A través del servicio de integración con el directorio activo y la información del usuario, se obtiene su rol en el SGI y las unidades de gestión a las que pertenece. El usuario está autorizado sobre la funcionalidad asociada a este CU.

### Garantías de éxito (postcondiciones)

Se presenta el listado de modelos de ejecución de acuerdo a los filtros introducidos. Para cada elemento del listado se proporcionan sus acciones, limitadas en función del rol del usuario.

### Escenario principal (flujo básico) \- No se aplican filtros de búsqueda

1. El usuario accede a la opción Modelos de ejecución de fases del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, sin modificar los filtros por defecto del buscador
3. Se muestra el listado de tipos de Modelos de ejecución incluyendo solamente aquellos que tengan el campo "activo" a "true".

  


### Extensiones (flujos alternativos) \- Se aplican filtros de búsqueda

1. El usuario accede a la opción Modelos de ejecución de fases del menú de configuración del módulo CSP
2. El usuario pulsa Buscar, indicando algún valor en los campos disponibles
3. Se muestra el listado de Modelos de ejecución de acuerdo a los filtros introducidos

  


### Requisitos especiales

No aplica

### Lista de tecnología y variaciones de datos

No aplica

  


  





