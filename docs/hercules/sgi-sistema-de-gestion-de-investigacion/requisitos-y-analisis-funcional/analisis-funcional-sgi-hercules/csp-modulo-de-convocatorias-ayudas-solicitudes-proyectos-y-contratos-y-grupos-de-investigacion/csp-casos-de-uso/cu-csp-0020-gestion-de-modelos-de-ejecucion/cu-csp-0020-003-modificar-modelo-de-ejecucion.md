# Hércules : CU\-CSP\-0020\-003 \- Modificar modelo de ejecución



### Descripción

Modificación de un modelo de ejecución

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador.  Deberá pertenecer a una unidad de gestión que tenga habilitada esta funcionalidad. Normalmente se tratará de las unidades UGI, OTRI, OPE.

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor de las unidades que tengan habilitadas las funcionalidades de EDICION sobre Convocatorias y proyectos. Ver  [CU\-USR\-0020\-003 \- Asignar funcionalidad a unidad de gestión y perfil de usuario](https://confluence.um.es/confluence/pages/viewpage.action?pageId=81841613 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=81841613"). Normalmente se tratará de las unidades UGI, OTRI, OPE.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere que se creen las convocatorias para presentar solicitudes sobre las mismas.

  


### Precondiciones

El administrador de datos (ACT\-CSP\-004\-Administrador) se autentica a través del usuario de dominio corporativo. A través del servicio de integración con el directorio activo y la información del usuario, se obtiene su rol en el SGI y las unidades de gestión a las que pertenece. El usuario está autorizado sobre la funcionalidad asociad a esta operación con permisos de EDICION.

Se han creado los siguientes tipos asociados:

* Tipos de fases ([CU\-CSP\-0005 \- Gestión de tipos de fases](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87827119 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87827119"))
* Tipos de documentos ([CU\-CSP\-0006 \- Gestión de tipos de documentos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85632141 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85632141"))
* Tipos de enlaces ([CU\-CSP\-0007 \- Gestión de tipos de enlace](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87827200 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87827200"))
* Tipos de finalidad ([CU\-CSP\-0008 \- Gestión de tipos de finalidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87827242 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87827242"))
* Unidades de gestión ([CU\-USR\-0020 \- Gestión de "unidad de gestión"](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-USR-0020+-+Gesti%C3%B3n+de+%22unidad+de+gesti%C3%B3n%22&linkCreation=true&fromPageId=597852679 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-USR-0020+-+Gesti%C3%B3n+de+%22unidad+de+gesti%C3%B3n%22&linkCreation=true&fromPageId=597852679"))

### Garantías de éxito (postcondiciones)

El modelo de ejecución se modifica correctamente y está disponible para la configuración de las convocatorias y de los proyectos, con sus nuevos valores.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Modelos de ejecución del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Modelos de ejecución para un registro concreto
3. El usuario modifica el Nombre del Modelo, poniéndole un valor que aún no figure en el tabla de Modelos de ejecución entre los elementos activos
4. El usuario introduce o modifica los campos "descripción", "externo" y/o "contrato/convenio".
5. El usuario añade o modifica datos sobre cualquiera de los apartados: fases, documentos, enlaces, finalidades o unidades de gestión del modelo.
6. El usuario pulsa el botón Guardar
7. El usuario es informado del resultado positivo de la acción
8. Se vuelve al listado de Modelos de ejecución

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un nombre para el Modelo que ya existe en la tabla de Modelos de ejecución para un elemento activo
2. El usuario introduce el resto de datos del Modelo
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo Nombre para el Modelo
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Modelos de ejecución

### Extensiones (flujos alternativos) \- Desactivar modelo de ejecución

1. El usuario accede al apartado de Modelos de ejecución del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar del listado de Modelos de ejecución para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el Modelo dejará de estar disponible para la configuración de convocatorias y proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El Modelo deja de estar disponible en todas las opciones de creación y modificación de convocatorias y proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Modelos de ejecución

### Extensiones (flujos alternativos) \- Activar modelo de ejecución

1. El usuario accede al apartado de Modelos de ejecución del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Reactivar del listado de Modelos para un registro concreto
3. Se muestra un mensaje de confirmación al usuario: el Modelo volverá a estar disponible para la configuración de convocatorias y proyectos.
4. El usuario acepta el mensaje de confirmación
5. El usuario pulsa Guardar
6. El Modelo  vuelve a estar disponible en todas las opciones de creación y modificación de convocatorias y proyectos.
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Modelos de ejecución

  


### Extensiones (flujos alternativos) \- El usuario no confirma la acción

1. El usuario accede al apartado de Modelos de ejecución del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Eliminar o Reactivar del listado de Modelos para un registro concreto
3. Se muestra un mensaje de confirmación al usuario (el correspondiente a la activación o desactivación)
4. El usuario no confirma la acción
5. No se realiza ninguna operación en base de datos
6. Se muestra el listado de Modelos de ejecución

  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





