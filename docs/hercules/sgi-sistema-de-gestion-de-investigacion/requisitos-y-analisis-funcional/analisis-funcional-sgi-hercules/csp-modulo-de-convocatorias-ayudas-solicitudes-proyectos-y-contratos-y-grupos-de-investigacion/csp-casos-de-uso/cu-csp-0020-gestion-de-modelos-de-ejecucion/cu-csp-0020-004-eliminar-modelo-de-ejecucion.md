# Hércules : CU\-CSP\-0020\-004 \- Eliminar modelo de ejecución



### Descripción

Eliminación de un modelo de ejecución.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador.  Deberá pertenecer a una unidad de gestión que tenga habilitada la acción de EDITAR sobre esta funcionalidad. Normalmente se tratará de las unidades UGI, OTRI, OPE.

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor de las unidades que tengan habilitadas las funcionalidades de EDICION sobre Convocatorias y proyectos. Ver [CU\-USR\-0020\-003 \- Asignar funcionalidad a unidad de gestión y perfil de usuario](https://confluence.um.es/confluence/pages/viewpage.action?pageId=81841613 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=81841613"). Normalmente se tratará de las unidades UGI, OTRI, OPE.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere que se creen las convocatorias para presentar solicitudes sobre las mismas.

  


Precondiciones

El administrador de datos (ACT\-CSP\-004\-Administrador) se autentica a través del usuario de dominio corporativo. A través del servicio de integración con el directorio activo y la información del usuario, se obtiene su rol en el SGI y las unidades de gestión a las que pertenece. el usuario está autorizado sobre la funcionalidad asociad a esta operación con permisos de Borrado.

  


### Garantías de éxito (postcondiciones)

El modelo de ejecución se desactiva correctamente y no está disponible para la configuración de las convocatorias y de los proyectos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Modelos de ejecución del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Modelos para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el Modelo dejará de estar disponible para la configuración de convocatorias y proyectos.
4. El usuario confirma la acción
5. El usuario es informado del resultado positivo de la acción
6. Se vuelve al listado de Modelos de ejecución

  


### Escenario principal (flujo básico) \- No se confirma la acción

1. El usuario accede al apartado de Modelos de ejecución del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Modelos  para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el Modelo dejará de estar disponible para la configuración de convocatorias y proyectos.
4. El usuario no confirma la acción
5. Se vuelve al listado de Modelos de ejecución

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





