# Hércules : CSP \- Módulo de convocatorias, ayudas, solicitudes, proyectos y contratos y grupos de investigación



### Introducción

Módulo principal del SGI que implementará el ciclo de gestión de convocatorias (ayudas a la investigación y becas), solicitudes, proyectos (incluyendo contratos y convenios) y grupos de investigación.

La filosofía de base del SGI será la homogeneización  y unificación de entidades y flujos. Esto permitirá el diseño de un sistema que permita dar cobertura de manera horizontal  a las necesidades de las diferentes unidades de gestión y a los diferentes criterios organizativos que marquen la existencia de éstas dentro de cada Universidad particular.

En base a esta premisa, el  flujo principal del módulo CSP responde al siguiente esquema:

![](/attachments/597853832/597871826.jpg)

  


Las convocatorias serán registradas en el SGI por el personal de administración y servicios de las diferentes unidades de gestión que estarán estructurados atendiendo a la definición de perfiles especificada en [CSP \- Actores](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-actores.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-actores.md") que toma como base la estructura general del SGI [GEN \- Actores](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/gen-actores.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/gen-actores.md").  Sobre las convocatorias se registrarán las solicitudes. Este registro será realizado por el personal investigador o en su defecto, si no se habilita esta opción, por el personal de las unidades de gestión. El proceso de registro de las solicitudes en el SGI, a excepción de las de plan propio, será independiente del proceso de tramitación de las solicitudes en los organismos convocantes.

Las solicitudes concedidas darán lugar a los proyectos. Los proyectos podrán crearse en el SGI sin necesidad de que exista el flujo previo de creación de la convocatoria y registro de solicitudes.

La gestión económica de los proyectos será realizada en el Sistema de Gestión Económica propio de cada Universidad. El SGI deberá recibir del SGE el listado de operaciones contables, a modo informativo, vinculados a cada proyecto, así como todo el detalle de las facturas y gastos. Cualquier operación contable y/o factura/gasto deberá ser registrada desde el propio SGE. 

La premisa de homogeneización ha de mantenerse a lo largo del diseño de todo el SGI, en el caso del módulo CSP se materializa en evitar la particularización de las entidades convocatorias, solicitudes y proyectos de acuerdo a la naturaleza de las mismas. Se debe de tener en cuenta que las particularizaciones minimizarán la posibilidad de adaptación a modelos futuros. Por ello, la propuesta es disponer de una entidad común "proyecto" que englobe cualquier modalidad bajo la que se pueda desarrollar la actividad (proyecto de investigación financiado, ayuda de contratación de RRHH, contrato artículo 83, convenio, contrato de licenciamiento, acuerdo de colaboración, etc.).

  


El modelo de dominio, a alto nivel, al que responderá este módulo es:

![](/attachments/597853832/597856967.bmp)  


  


Se unificarán bajo la entidad Convocatoria todas las tipologías de las mismas, independientemente de su naturaleza, con la correspondiente clasificación atendiendo a diferentes criterios pero compartiendo todas ellas la misma estructura de información. Como ejemplo:

* Clasificación según modelo de ejecución (ayuda, contrato, convenio)  [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md")
* Clasificación  según la finalidad del proyecto o actividad resultante a desarrollar (ejemplo: proyecto I\+D, asesoría, servicio ténico,  royalties, infraestructuras, congresos, contratación de RRHH, etc.). Esta clasificación queda implícita en   [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md")
* Clasificación según la unidad de gestión que coordinará la gestión del proyecto (ejemplo: UGI, OTRI, OPE, etc). Esta clasificación, queda también implícita en  [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md")

  


Cada convocatoria registrada quedará vinculada a una unidad de gestión (UGI, OTRI, OPE, etc.) de forma que se limite la visibilidad de la misma al personal de gestión perteneciente a dicha unidad (o cuyo usuario de acceso al SGI esté asociado a la unidad de gestión).

En el proceso de registro de la convocatoria se configurará la posibilidad o no de habilitar el registro de solicitudes en el SGI para el personal investigador.

Las solicitudes quedarán asociadas a la convocatoria y aquellas que resulten concedidas quedarán trazadas con el proyecto resultante. 

Los proyectos tendrán asociado un equipo de proyecto, donde cada miembro tendrá un rol dentro del equipo de investigación y unas fechas de pertenencia al equipo. 

La producción científica derivada de la ejecución del proyecto quedará vinculada al mismo y a sus autores, desde el módulo de PRC (Producción científica).

La configuración de los proyectos permitirá activar o no el registro de las horas de trabajo por parte de cada miembro del equipo de investigación.

  


El módulo CSP contará con las siguientes opciones de menú:

* Convocatorias
* Solicitudes
* Proyectos
* Participación en proyectos externos
* Grupos de investigación
* Ejecución económica
* Notificación de presupuestos a SGE
* Configuración

  


### Descripción

* [CSP \- Actores](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-actores.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-actores.md")
* [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md")
* [CSP \- Convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-convocatorias.md")
* [CSP \- Solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md")
* [CSP Proyectos, contratos, becas y ayudas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-proyectos-contratos-becas-y-ayudas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-proyectos-contratos-becas-y-ayudas.md")
* [CSP \- Participación proyectos externos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-participacion-proyectos-externos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-participacion-proyectos-externos/index.md")
* [CSP \- Grupos de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-grupos-de-investigacion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-grupos-de-investigacion/index.md")
* [CSP \- Notificación presupuesto SGE](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-notificacion-presupuesto-sge.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-notificacion-presupuesto-sge.md")
* [CSP \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-ejecucion-economica/index.md")
* [CSP \- Timesheet](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-timesheet/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-timesheet/index.md")
* [CSP \- Casos de uso](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/index.md")
* [CSP \- Interfaz de usuario](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/index.md")
* [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md")
* [CSP \- Glosario de términos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-glosario-de-terminos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-glosario-de-terminos.md")

  





