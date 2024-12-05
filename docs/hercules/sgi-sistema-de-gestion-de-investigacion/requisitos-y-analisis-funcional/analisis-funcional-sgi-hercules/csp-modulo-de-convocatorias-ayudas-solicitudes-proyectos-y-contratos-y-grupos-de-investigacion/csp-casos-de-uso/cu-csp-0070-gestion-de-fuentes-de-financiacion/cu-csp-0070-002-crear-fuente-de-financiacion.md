# Hércules : CU\-CSP\-0070\-002 \- Crear fuente de financiación



### Descripción

Se añade una fuente de financiación. Las fuentes de financiación se utilizarán para la configurar y categorizar correctamente las convocatorias y proyectos. Las entidades de financiación quedarán asociadas a las convocatorias/proyectos por medio de una fuente de financiación y de un tipo de financiación.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en convocatorias y proyectos se identifiquen las fuentes de financiación.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

Se encuentran correctamente configurados los listados:

* Tipo ámbito geográfico. Con los valores procedentes de la tabla Tipo de ámbito geográfico y configurados en el proceso de implantación. Ejemplo de valores del listado "propio", "local", "autonómico", "nacional", "europeo", "internacional"
* Origen. Con los valores procedentes de la tabla Origen de fuente de financiación y configurados en el proceso de implantación. Ejemplo de valores del listado "público", "privado"

### Garantías de éxito (postcondiciones)

La fuente de financiación se ha añadido correctamente y está disponible para incorporarla a las entidades de financiación de una convocatoria o proyecto.

### Escenario principal (flujo básico)

1. ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor accede a la opción  "Añadir nueva fuente de financiación".
2. El usuario introduce el campo Nombre, con un valor que no existiese aún en la tabla Fuentes de financiación para un registro activo (campo "activo" \= "true"). Podrá darse la repetición del nombre solo sobre registros con campo "activo" \= "false".
3. El usuario introduce el campo  Descripción, con carácter no obligatorio
4. El usuario selecciona un Ámbito geográfico, del listado de valores disponible (los tipos de ámbito geográfico con campo "activo" a "true")
5. El usuario selecciona un Origen, del listado de valores disponible (los tipos de origen con campo "activo" a "true")
6. El usuario indica si la Fuente de financiación es un Fondo estructural (valores sí o no)
7. El usuario pulsa el botón Guardar.
8. El usuario es informado del resultado positivo de la acción.
9. Se muestra el listado de Fuentes de financiación

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un Nombre para la Fuente de financiación que ya existía en la tabla de Fuentes de financiación para un elemento con campo "activo" a "true" (podrá darse la repetición del nombre solo sobre registros con campo "activo" \= "false")
2. El usuario introduce el resto de datos de la Fuente
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para la Fuente
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Fuentes de financiación

### Extensiones (flujos alternativos) \- No existen valores en el listado de Ámbito geográfico

1. ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor accede a la opción  "Añadir nueva Fuente de financiación".
2. El usuario introduce el campo Nombre, con un valor que no existiese aún en la tabla Fuentes de financiación sobre un registro con campo "activo" \= "true"
3. El usuario introduce el campo  Descripción, con carácter no obligatorio
4. El usuario no dispone de ningún valor en el listado de "Ámbito geográfico"
5. Se muestra un mensaje de advertencia al usuario: faltan datos de configuración. El listado "Ámbito geográfico" debe ser configurado por ACT\-008\-Sysadm
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Fuentes de financiación

  


### Extensiones (flujos alternativos) \- No existen valores en el listado Origen

1. ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor accede a la opción  "Añadir nueva Fuente de financiación".
2. El usuario introduce el campo Nombre, con un valor que no existiese aún en la tabla Fuentes de financiación sobre un registro con campo "activo" \= "true"
3. El usuario introduce el campo  Descripción, con carácter no obligatorio
4. El usuario no dispone de ningún valor en el listado de "Origen"
5. Se muestra un mensaje de advertencia al usuario: faltan datos de configuración. El listado "Origen" debe ser configurado por ACT\-008\-Sysadm
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Fuentes de financiación

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





