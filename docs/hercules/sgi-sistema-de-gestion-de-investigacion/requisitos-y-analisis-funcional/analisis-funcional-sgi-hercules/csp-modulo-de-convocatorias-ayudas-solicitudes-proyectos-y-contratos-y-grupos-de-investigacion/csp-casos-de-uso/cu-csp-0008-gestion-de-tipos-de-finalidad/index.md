# Hércules : CU\-CSP\-0008 \- Gestión de tipos de finalidad



### Descripción

Agrupación de casos de uso que permitirá realizar la gestión de los tipos de finalidad. Los tipos de finalidad serán necesarios para realizar la configuración de los modelos de ejecución en base a los que se crearán las convocatorias y proyectos. De acuerdo al modelo de ejecución por el que se rija una convocatoria o proyecto, tendrá disponible unos tipos de finalidad u otros. Los tipos de finalidad permitirán clasificar la naturaleza de las acciones (proyectos) de investigación. Sirvan como ejemplo de posibles valores: proyectos de I\+D\+i, contratos de licencia, movilidades, asistencias técnicas, etc.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador perteneciente a una unidad de gestión que tenga asociado el módulo de CSP (ejemplo UGI, OTRI, OPE).

#### Personal involucrado e intereses

Personal gestor (ACT\-CSP\-003\-Gestor) de las unidades de gestión con acceso al módulo CSP, que requieren disponer de los tipos de finalidad para poder clasificar de acuerdo al tipo de acción a  desarrollar las convocatorias y proyectos.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere que ver toda la información de las convocatorias  y proyectos.

### Precondiciones

ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y la información del usuario disponible en el propio SGI, se obtiene su rol en el SGI y las unidades gestoras a las que está vinculado. El usuario está autorizado sobre la funcionalidad asociad a esta operación con permisos de EDICION

### Garantías de éxito (postcondiciones)

La clasificación de tipos de finalidad se encuentra correctamente configurada y el personal ACT\-CSP\-003\-Gestor puede disponer de ella para realizar la gestión de las convocatorias y proyectos.

### Listado de casos de uso

* [CU\-CSP\-0008\-001 \- Buscar y listar de tipos de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-001-buscar-y-listar-de-tipos-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-001-buscar-y-listar-de-tipos-de-finalidad.md")
* [CU\-CSP\-0008\-002 \- Crear tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-002-crear-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-002-crear-tipo-de-finalidad.md")
* [CU\-CSP\-0008\-003 \- Modificar tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-003-modificar-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-003-modificar-tipo-de-finalidad.md")
* [CU\-CSP\-0008\-004 \- Eliminar tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-004-eliminar-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-004-eliminar-tipo-de-finalidad.md")

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A




