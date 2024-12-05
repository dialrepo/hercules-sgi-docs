# Hércules : CU\-CSP\-0020\-002 \- Crear modelo de ejecución



### Descripción

Creación de la tipología "modelo de ejecución" que permitirá la clasificación de las convocatorias y proyectos. Es una tipología genérica que no implica la particularización de los campos de la convocatoria ni de su ciclo de gestión.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador.  Deberá pertenecer a una unidad de gestión que tenga habilitada la acción de EDITAR sobre esta funcionalidad. Normalmente se tratará de las unidades UGI, OTRI, OPE.

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor de las unidades que tengan habilitadas las funcionalidades de EDICION sobre Convocatorias y proyectos. Ver  [CU\-USR\-0020\-003 \- Asignar funcionalidad a unidad de gestión y perfil de usuario](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-USR-0020-003+-++Asignar+funcionalidad+a+unidad+de+gesti%C3%B3n&linkCreation=true&fromPageId=597853770 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-USR-0020-003+-++Asignar+funcionalidad+a+unidad+de+gesti%C3%B3n&linkCreation=true&fromPageId=597853770"). Normalmente se tratará de las unidades UGI, OTRI, OPE.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere que se creen las convocatorias para presentar solicitudes sobre las mismas.

### Precondiciones

El administrador de datos (ACT\-CSP\-004\-Administrador) se autentica a través del usuario de dominio corporativo. A través del servicio de integración con el directorio activo y la información del usuario, se obtiene su rol en el SGI y las unidades de gestión a las que pertenece.  El usuario está autorizado sobre la funcionalidad asociad a esta operación con permisos de Creación.

### Garantías de éxito (postcondiciones)

Se crea el elemento modelo de ejecución.

El nuevo modelo estará visible en los formularios de creación y modificación de convocatorias y proyectos para aquellos usuarios que tengan un rol ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor sobre alguna de las unidades de gestión a las que se haya asociado el modelo.

### Escenario principal (flujo básico)

1. El ACT\-CSP\-004\-Administrador accede a la opción  "Añadir  modelo de ejecución".
2. El usuario se sitúa en el apartado Datos generales, rellena los campos "nombre" y "descripción" y marca o no los campos "externo" y/o "contrato/convenio".
3. El usuario se sitúa en el apartado Tipos de fase y añade uno o varios tipos de fase al modelo
4. El usuario se sitúa en el apartado Tipos de documentos y añade uno o varios  tipos de documento al modelo, asociando cada tipo de documento, opcionalmente, a una fase de las seleccionadas en el punto 3
5. El usuario se sitúa en el apartado Tipos de enlace y añade uno o varios tipos de enlace al modelo
6. El usuario se sitúa en el apartado Tipos de hito y añade uno o varios tipos de hitos al modelo
7. El usuario se sitúa en el apartado Unidad de gestión y añade una o varias unidades de gestión al modelo
8. El usuario pulsa el botón Guardar.
9. El usuario es informado del resultado positivo de la acción.

### Extensiones (flujos alternativos) \- Error de unicidad

1. El usuario ha introducido un Nombre para el Modelo que ya existe en la tabla de Modelos de ejecución para un elemento activo
2. El usuario introduce el resto de datos de Modelo
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el Modelo de ejecución
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se muestra el listado de Modelos de ejecución

### Extensiones (flujos alternativos) \- No existen tipos de fase

1. El ACT\-CSP\-004\-Administrador accede a la opción  "Añadir nuevo modelo de ejecución".
2. El usuario se sitúa en el apartado Datos generales, rellena los campos "nombre" y "descripción" y marca o no los campos "externo" y/o "contrato/convenio".
3. El usuario se sitúa en el apartado Tipos de fase
4. No existe ninguna fase disponible en el desplegable de Tipos de fase
5. El usuario pulsa Guardar
6. El usuario es informado del resultado positivo de la acción.
7. El usuario crea el tipo de fase ([CU\-CSP\-0005\-002 \- Crear tipo de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-002-crear-tipo-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-002-crear-tipo-de-fase.md"))
8. El  usuario accede a la opción Buscar y listar modelos de ejecución para modificar el Modelo y proseguir con su configuración

### Extensiones (flujos alternativos) \- No existen tipos de documentos

1. El ACT\-CSP\-004\-Administrador accede a la opción  "Añadir nuevo modelo de ejecución".
2. El usuario se sitúa en el apartado Datos generales, rellena los campos "nombre" y "descripción" y marca o no los campos "externo" y/o "contrato/convenio".
3. El usuario se sitúa en el apartado Tipos de fase y añade uno o varios tipos de fase
4. El usuario se sitúa en el apartado Tipos de documento
5. No existe ningún tipo de documento disponible en el desplegable de Tipos de documento
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. El usuario crea el tipo de documento ([CU\-CSP\-0006\-002 \- Crear tipo de documento](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-002+-+Crear+tipo+de+documento&linkCreation=true&fromPageId=597853770 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-002+-+Crear+tipo+de+documento&linkCreation=true&fromPageId=597853770"))
9. El  usuario accede a la opción Buscar y listar modelos de ejecución para modificar el Modelo y proseguir con su configuración

  


### Extensiones (flujos alternativos) \- No existen tipos de enlace

1. El ACT\-CSP\-004\-Administrador accede a la opción  "Añadir nuevo modelo de ejecución".
2. El usuario se sitúa en el apartado Datos generales, rellena los campos "nombre" y "descripción" y marca o no los campos "externo" y/o "contrato/convenio".
3. El usuario se sitúa en el apartado Tipos de fase y añade uno o varios tipos de fase
4. El usuario se sitúa en el apartado Tipos de documento y añade uno o varios tipos de documentos, asociando cada tipo de documento, opcionalmente, a una fase de las seleccionadas en el punto 3
5. El usuario se sitúa en el apartado Tipos de enlace
6. No existe ningún tipo de enlace disponible en el desplegable de Tipos de enlace
7. El usuario pulsa Guardar
8. El usuario es informado del resultado positivo de la acción.
9. El usuario crea el tipo de enlace ([CU\-CSP\-0007\-002 \- Crear tipo de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-002-crear-tipo-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-002-crear-tipo-de-enlace.md"))
10. El  usuario accede a la opción Buscar y listar modelos de ejecución para modificar el Modelo y proseguir con su configuración

  


### Extensiones (flujos alternativos) \- No existen tipos de finalidad

1. El ACT\-CSP\-004\-Administrador accede a la opción  "Añadir nuevo modelo de ejecución".
2. El usuario se sitúa en el apartado Datos generales, rellena los campos "nombre" y "descripción" y marca o no los campos "externo" y/o "contrato/convenio".
3. El usuario se sitúa en el apartado Tipos de fase y añade uno o varios tipos de fase
4. El usuario se sitúa en el apartado Tipos de documento y añade uno o varios tipos de documentos, asociando cada tipo de documento, opcionalmente, a una fase de las seleccionadas en el punto 3
5. El usuario se sitúa en el apartado Tipos de enlace y añade uno o varios tipos de enlace
6. El usuario se sitúa en el apartado Tipos de finalidad
7. No existe ningún tipo de finalidad disponible en el desplegable de Tipos de finalidad
8. El usuario pulsa Guardar
9. El usuario es informado del resultado positivo de la acción.
10. El usuario crea el tipo de finalidad ([CU\-CSP\-0008\-002 \- Crear tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-002-crear-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-002-crear-tipo-de-finalidad.md"))
11. El  usuario accede a la opción Buscar y listar modelos de ejecución para modificar el Modelo y proseguir con su configuración

  


### Extensiones (flujos alternativos) \- No existen tipos de hitos

1. El ACT\-CSP\-004\-Administrador accede a la opción  "Añadir nuevo modelo de ejecución".
2. El usuario se sitúa en el apartado Datos generales, rellena los campos "nombre" y "descripción" y marca o no los campos "externo" y/o "contrato/convenio".
3. El usuario se sitúa en el apartado Tipos de fase y añade uno o varios tipos de fase
4. El usuario se sitúa en el apartado Tipos de documento y añade uno o varios tipos de documentos, asociando cada tipo de documento, opcionalmente, a una fase de las seleccionadas en el punto 3
5. El usuario se sitúa en el apartado Tipos de enlace y añade uno o varios tipos de enlace
6. El usuario se sitúa en el apartado Tipos de finalidad y añade uno o varios tipos de finalidad
7. El usuario se sitúa en el apartado Tipos de hitos
8. No existe ningún tipo de hito disponible en el desplegable de Tipos de hito
9. El usuario pulsa Guardar
10. El usuario es informado del resultado positivo de la acción.
11. El usuario crea el tipo de hito ([CU\-CSP\-0011\-002 \- Crear tipo de hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-002-crear-tipo-de-hito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-002-crear-tipo-de-hito.md"))
12. El  usuario accede a la opción Buscar y listar modelos de ejecución para modificar el Modelo y proseguir con su configuración

  


  


### Extensiones (flujos alternativos) \- No existen unidades de gestión

1. El ACT\-CSP\-004\-Administrador accede a la opción  "Añadir nuevo modelo de ejecución".
2. El usuario se sitúa en el apartado Datos generales, rellena los campos "nombre" y "descripción" y marca o no los campos "externo" y/o "contrato/convenio".
3. El usuario se sitúa en el apartado Tipos de fase y añade uno o varios tipos de fase
4. El usuario se sitúa en el apartado Tipos de documento y añade uno o varios tipos de documentos, asociando cada tipo de documento, opcionalmente, a una fase de las seleccionadas en el punto 3
5. El usuario se sitúa en el apartado Tipos de enlace y añade uno o varios tipos de enlace
6. El usuario se sitúa en el apartado Tipos de finalidad y añade uno o varios tipos de finalidad
7. El usuario se sitúa en el apartado Tipos de hitos y añade uno o varios tipos de hito
8. El usuario se  sitúa en el apartado Unidades de gestión
9. No existe ninguna unidad de gestión disponible en el desplegable de Unidad de gestión
10. El sistema muestra un aviso al usuario. Las unidades de gestión deben ser configuradas por ACT\-008\-Sysadm [CU\-USR\-0020\-002 \- Crear unidad de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/cu-usr-0020-002-crear-unidad-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/cu-usr-0020-002-crear-unidad-de-gestion.md")
11. El usuario pulsa Guardar
12. El usuario es informado del resultado positivo de la acción.

  


### Requisitos especiales

No aplica

### Lista de tecnología y variaciones de datos

No aplica

  


  





