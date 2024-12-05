# Hércules : CU\-CSP\-0090 \- Gestión de conceptos de gasto



### Descripción

Agrupación de casos de uso que permitirá realizar la gestión de los conceptos de gastos que se utilizarán para la definición de los presupuestos en la gestión de convocatorias y proyectos. Los conceptos de gasto tendrán una nomenclatura propia del área de investigación y se definirán de forma común por los ACT\-CSP\-004\-Administrador. Los conceptos de gastos deberán estar asociados, en cada convocatoria/proyecto, a los códigos económicos/contables definidos en el SGE [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md")

  


Actores

#### Actor principal

 ACT\-CSP\-004\-Administrador

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor que requiere que los conceptos económicos se encuentren correctamente configurados para poder registrar la Elegibilidad y Presupuesto de convocatorias y proyectos.

ACT\- CSP\-001\-Investigador que requiere los conceptos económicos para ver la Elegibilidad de convocatorias y proyectos e incorporar el desglose del Presupuesto en las solicitudes.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador  se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

Los conceptos económicos se encuentran correctamente configurados y pueden ser seleccionados desde las pantallas de gestión de convocatorias y proyectos.

  


### Listado de casos de uso

  


* [CU\-CSP\-0090\-001 \- Buscar y listar conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-001-buscar-y-listar-conceptos-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-001-buscar-y-listar-conceptos-de-gasto.md")
* [CU\-CSP\-0090\-002 \- Crear concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-002-crear-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-002-crear-concepto-de-gasto.md")
* [CU\-CSP\-0090\-003 \- Modificar concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-003-modificar-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-003-modificar-concepto-de-gasto.md")
* [CU\-CSP\-0090\-004 \- Eliminar concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-004-eliminar-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-004-eliminar-concepto-de-gasto.md")

  


  


  
  
  





