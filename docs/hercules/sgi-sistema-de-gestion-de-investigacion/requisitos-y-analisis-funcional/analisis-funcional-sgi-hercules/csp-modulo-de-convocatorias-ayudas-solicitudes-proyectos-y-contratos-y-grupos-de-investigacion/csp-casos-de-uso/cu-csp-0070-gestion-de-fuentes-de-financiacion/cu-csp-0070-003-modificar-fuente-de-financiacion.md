# Hércules : CU\-CSP\-0070\-003 \- Modificar fuente de financiación



### Descripción

Modificación de una fuente de financiación. Las fuentes de financiación que se utilizarán para la configurar y categorizar correctamente las convocatorias y proyectos. Las entidades de financiación quedarán asociadas a las convocatorias/proyectos por medio de una fuente de financiación y de un tipo de financiación.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que en convocatorias y proyectos se identifiquen las fuentes de financiación.

  


### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y  la unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión, con permisos de EDICION o VER.

Se encuentran correctamente configurados los listados:

* Tipo ámbito geográfico. Con los valores procedentes de la tabla Tipo de ámbito geográfico y configurados en el proceso de implantación. Ejemplo de valores del listado "propio", "local", "autonómico", "nacional", "europeo", "internacional"
* Origen. Con los valores procedentes de la tabla Origen de fuente de financiación y configurados en el proceso de implantación. Ejemplo de valores del listado "público", "privado"

### Garantías de éxito (postcondiciones)

La fuente de financiación se ha modificado correctamente y está disponible para incorporarla a las entidades de financiación de una convocatoria o proyecto

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Fuentes de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Fuentes de financiación para un registro concreto
3. El usuario modifica el Nombre de la Fuente de financiación, poniéndole un valor que aún no figure en el tabla de Fuentes de financiación para algún elemento activo (campo "activo"  a "true")
4. El usuario introduce o modifica la Descripción
5. El usuario modifica el valor del campo "Ámbito geográfico" (seleccionando un valor del listado disponible: tipos de ámbitos geográfico con campo "activo" a true)
6. El usuario modifica el valor del  campo "Origen"  (seleccionando un valor del listado disponible: tipos de origen con campo "activo" a true)
7. El usuario modifica el valor del  campo "Fondo estructural"
8. El usuario pulsa el botón Guardar
9. El usuario es informado del resultado positivo de la acción
10. Se vuelve al listado de Fuentes de financiación

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario accede al apartado de Fuentes de financiación del menú de configuración del módulo de CSP
2. El usuario selecciona la opción Modificar del listado de Fuentes de financiación para un registro concreto
3. El usuario ha introducido un Nombre para la Fuente de financiación que ya existían en la tabla de Fuentes de financiación para algún elemento activo (campo "activo" \= "true")
4. El usuario introduce el resto de datos de la Fuente de financiación
5. El usuario pulsa Guardar
6. Se muestra un error al usuario
7. El usuario introduce un nuevo Nombre para la Fuente de financiación
8. El usuario pulsa Guardar
9. El usuario es informado del resultado positivo de la acción.
10. Se muestra el listado de Fuentes de financiación

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





