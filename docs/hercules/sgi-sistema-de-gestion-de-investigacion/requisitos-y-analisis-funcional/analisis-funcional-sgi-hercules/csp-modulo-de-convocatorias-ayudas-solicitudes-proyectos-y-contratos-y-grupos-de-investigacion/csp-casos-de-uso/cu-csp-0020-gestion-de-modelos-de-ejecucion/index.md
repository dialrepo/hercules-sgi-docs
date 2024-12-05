# Hércules : CU\-CSP\-0020 \- Gestión de modelos de ejecución



### Descripción

Agrupación de casos de uso que permitirá realizar la gestión de los modelos de ejecución [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md"). Los modelos de ejecución definirán una categoría que permitirá la clasificación de las convocatorias y proyectos/contratos en función del mecanismo administrativo que ampara su realización. Es una tipología genérica que no implica la particularización de los campos de la convocatoria ni de su ciclo de gestión. 

Ejemplo de listado de categorías: Ayudas y subvenciones, contrato, convenio.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

Gestores (ACT\-CSP\-003\-Gestor) de las unidades UGI, OTRI, OPE que requieren que al registrar una convocatoria o proyecto, los modelos de ejecución ya estén disponibles en el listado de categorización.

Personal investigador (ACT\- CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno) que requiere que se creen las convocatorias para presentar solicitudes sobre las mismas.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidad asociada a esta operación.

  


Si bien no es imprescindible para todas las operaciones de gestión, sí debieran estar realizada la gestión de las siguientes entidades relacionadas:

* Tipos de fases [CU\-CSP\-0005 \- Gestión de tipos de fase](https://confluence.um.es/confluence/pages/viewpage.action?pageId=221381977 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=221381977")
* Tipos de documentos ([CU\-CSP\-0006 \- Gestión de tipos de documentos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85632141 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85632141"))
* Tipos de enlaces  [CU\-CSP\-0007 \- Gestión de tipos de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/index.md")
* Tipos de finalidad [CU\-CSP\-0008 \- Gestión de tipos de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/index.md")
* Unidades de gestión ([CU\-USR\-0020 \- Gestión de "unidad de gestión"](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-USR-0020+-+Gesti%C3%B3n+de+%22unidad+de+gesti%C3%B3n%22&linkCreation=true&fromPageId=597853536 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-USR-0020+-+Gesti%C3%B3n+de+%22unidad+de+gesti%C3%B3n%22&linkCreation=true&fromPageId=597853536"))

  


### Garantías de éxito (postcondiciones)

Los modelos de ejecución se encuentran correctamente configurados y el personal ACT\-CSP\-003\-Gestor puede disponer de los mismos para realizar la gestión de las convocatorias y proyectos.

  


### Listado de casos de uso

* [CU\-CSP\-0020\-001 \- Buscar y listar modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-001-buscar-y-listar-modelos-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-001-buscar-y-listar-modelos-de-ejecucion.md")
* [CU\-CSP\-0020\-002 \- Crear modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/index.md")
* [CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md")
* [CU\-CSP\-0020\-004 \- Eliminar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-004-eliminar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-004-eliminar-modelo-de-ejecucion.md")

  


  


### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A




