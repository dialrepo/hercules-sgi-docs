# Hércules : CSP \- Integración Timesheet



## INTRODUCCIÓN

Para poder externalizar la funcionalidad de "Timesheet" del SGI se necesitará que el sistema externo tenga información sobre los proyectos y grupos de investigación del SGI.

En el SGI se van a crear una serie de vistas para proporcionar dicha información.

A continuación  se detallan dichas vistas.

## TS\_PROYECTO\_JUSTIFICABLE

Listado de proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del proyecto. Clave primaria. |
| CONVOCATORIA | Campo "identificación" de la convocatoria asociada al proyecto en caso de tenerla. |
| REFERENCIA | Campo "referencia en entidad convocante" del proyecto. |
| TITULO | Campo "título" del proyecto. |
| ACRONIMO | Campo "acrónimo" del proyecto. |
| FECHA\_INICIO | Campo "fecha inicio" del proyecto. |
| FECHA\_FIN | Si esta informada "fecha fin definitiva" se enviará "fecha fin definitiva", sino la "fecha de fin" del proyecto. |
| ESTADO | Estado actual del proyecto. Se sacará el campo "estado" de la tabla ESTADO\_PROYECTO del estado actual del proyecto.Posibles valores:* CONCEDIDO * RENUNCIADO * RESCINDIDO |
| MODELO\_EJECUCION\_ID | Identificador único del modelo de ejecución asociado al proyecto. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJCUCION\_NOMBRE | Nombre del modelo de ejecución asociado al proyecto. |
| TIPO\_FINALIDAD\_ID | Identificador único del tipo de finalidad asociado al proyecto. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | Nombre del tipo de finalidad asociado al proyecto. |
| AMBITO\_ID | Identificador único del tipo de ámbito geográfico asociado al proyecto. Los tipos  de ámbitos geográficos son configurables en el SGI. |
| AMBITO\_NOMBRE | Nombre del tipo de ámbito geográfico asociado al proyecto. |
| FECHA\_CONCESION | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear proyecto" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el proyecto tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| IMPORTE\_SOLICITADO | Si el campo "importe presupuesto" o "importe presupuesto costes indirectos" del proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe presupuesto" de todos los gastos del proyecto (tabla ANUALIDAD\_GASTO). |
| IMPORTE\_CONCEDIDO | Si el campo "importe concedido" o "importe concedido costes indirectos" del proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe concedido" de todos los gastos del proyecto (tabla ANUALIDAD\_GASTO). |
| COSTES\_INDIRECTOS | Si el campo "importe concedido" o "importe concedido costes indirectos" del proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe concedido" de todos los gastos del proyecto (tabla ANUALIDAD\_GASTO).Será el campo "importe concedido" esta informado, en caso contrario será la suma del campo "importe concedido" de todos los gastos del proyecto que se correspondan con conceptos de gastos configurados como costes indirectos (tabla ANUALIDAD\_GASTO del proyecto cuyos CONCEPTO\_GASTO tenga el flag de COSTES\_INDIRECTOS a true). |
| OBSERVACIONES | Campo "observaciones" del proyecto. |
| UNIDAD\_GESTION\_REF | Identificador único de la unidad de gestión asociada al proyecto. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | Nombre de la unidad de gestión asociada al proyecto. |

  


Ver diseño en [SGI \- Vistas Timesheet\#TS\_PROYECTO\_JUSTIFICABLE](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_JUSTIFICABLE "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_JUSTIFICABLE")

NOTAS:

* ENTIDAD:
	+ Se enviará en la vista TS\_PROYECTO\_ENT\_FIN porque un proyecto puede tener varias entidades financiadoras. Por cada entidad financiadora se enviará también la fuente de financiación.
	+ Se enviará en la vista TS\_PROYECTO\_ENT\_CONV porque un proyecto puede tener varias entidades convocantes. Por cada entidad convocante se enviará también el programa (plan de investigación  o programa o subprograma o modadidad) que tenga asignada a nivel de convocatoria y a nivel de proyecto (id y nombre).
* ID\_GESTION\_ECONOMICA
	+ Se enviará en la vista TS\_PROYECTO\_SGE porque un proyecto puede estar relacionado con más de un proyecto SGE, aunque no es el caso de Murcia.
* ID\_INVESTIGADOR\_PRINCIPAL
	+ Se enviará en la vista TS\_PROYECTO\_EQUIPO porque un proyecto puede tener mas de un investigador principal en el SGI. La vista sacará todos los miembros del equipo con sus rangos de participación y sus roles.

## TS\_PROYECTO\_ENT\_FIN

Listado de entidades financiadores de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrarán los siguientes campos de una entidad financiadora:

* identificador de la entidad (el SGI no almacena información de la entidad, únicamente su identificador)
* fuente de financiación
* tipo de financiación
* ajena



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| ENTIDAD\_REF | Identificador de la entidad en el sistema de gestión de empresas de la Universidad. |
| FUENTE\_FINANCIACION\_ID | Identificador único de la fuente de financiación asociada a la entidad financiadora. Las fuentes de financiación son configurables en el SGI. |
| FUENTE\_FINANCIACION\_NOMBRE | Nombre de la fuente de financiación asociada a la entidad financiadora. |
| TIPO\_FINANCIACION\_ID | Identificador único del tipo de financiación asociada a la entidad financiadora. Los tipos de financiación son configurables en el SGI. |
| TIPO\_FINANCIACION\_NOMBRE | Nombre del tipo de financiación asociado a la entidad financiadora. |
| AJENA | Indica si la entidad financiadora es ajena o no a la convocatoria |

  


Ver diseño en [SGI \- Vistas Timesheet\#TS\_PROYECTO\_ENT\_FIN](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_ENT_FIN "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_ENT_FIN")

## TS\_PROYECTO\_ENT\_CONV

Listado de entidades convocantes de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrarán los siguientes campos de una entidad convocante:

* identificador de la entidad (el SGI no almacena información de la entidad, únicamente su identificador)
* programa de la convocatoria: puede ser el plan de investigación o el programa o el subprograma de la convocatoria asociada al proyecto
* programa del proyecto: puede ser plan de investigación o el programa o el subprograma o la modalidad seleccionada en el proyecto



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| ENTIDAD\_REF | Identificador de la entidad en el sistema de gestión de empresas de la Universidad. |
| PROGRAMA\_CONVOCATORIA\_ID | Identificador único del plan o del programa o del subprograma definido en la convocatoria asociada al proyecto. Los planes de investigación junto con sus programa, subprograma y modalidades son configurables en el SGI en una estructura de árbol. |
| PROGRAMA\_CONVOCATORIA\_NOMBRE | Nombre del plan o del programa o del subprograma definido en la convocatoria asociada al proyecto. |
| PROGRAMA\_ID | Identificador único del plan o del programa o del subprograma o de la modalidad seleccionada en el proyecto. Los planes de investigación junto con sus programa, subprograma y modalidades son configurables en el SGI en una estructura de árbol. |
| PROGRAMA\_NOMBRE | Nombre del plan o del programa o del subprograma o de la modalidad seleccionada en el proyecto. |

Ver diseño en [SGI \- Vistas Timesheet\#TS\_PROYECTO\_ENT\_CONV](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_ENT_CONV "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_ENT_CONV")

## TS\_PROYECTO\_SGE

Listado de identificadores SGE (Sistema gestión económico) de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrará el identificador SGE (un proyecto SGI puede tener más de uno identificador SGE asociado, aunque la normal general es que sea único)



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| PROYECTO\_SGE\_REF | Identificador del proyecto económico en el sistema de gestión económico de la Universidad |

Ver diseño en [SGI \- Vistas Timesheet\#TS\_PROYECTO\_SGE](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_SGE "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_SGE")

## TS\_PROYECTO\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* fecha de inicio de la participación en el equipo
* fecha de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| PERSONA\_REF | Identificador de la persona en el sistema de personas de la Universidad |
| FECHA\_INICIO | Fecha de inicio de la participación en el equipo. |
| FECHA\_FIN | Fecha de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | Si el rol es un rol principal o no. |
| ORDEN | En caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO |

Ver diseño en [SGI \- Vistas Timesheet\#TS\_PROYECTO\_EQUIPO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_EQUIPO "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_EQUIPO")

## TS\_PROYECTO\_PAQUETE\_TRABAJO

Listado de paquetes de trabajo de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrarán los siguientes campos de un paquete de trabajo:

* nombre
* fecha inicio
* fecha fin
* persona mes
* descripción



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| NOMBRE | Nombre del paquete de trabajo. |
| FECHA\_INICIO | Fecha de inicio del paquete de trabajo. |
| FECHA\_FIN | Fecha de fin del paquete de trabajo. |
| PERSONA\_MES | Persona mes del paquete de trabajo. |
| DESCRIPCION | Descripción del paquete de trabajo. |

  


Ver diseño en [SGI \- Vistas Timesheet\#TS\_PROYECTO\_PAQUETE\_TRABAJO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_PAQUETE_TRABAJO "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_PROYECTO_PAQUETE_TRABAJO")

## TS\_GRUPO\_JUSTIFICABLE

Listado de grupos de investigación del SGI que cumplen las siguientes condiciones:

* activos
* fecha fin no tiene o mayor al año 2013
* con identificador SGE



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del grupo de investigación. Clave primaria. |
| CONVOCATORIA | Campo "identificación" de la convocatoria asociada a la solicitud de constitución del grupos en caso de que se creara a partir de una solicitud el grupo. |
| REFERENCIA | Campo "código" del grupo. |
| TITULO | Campo "nombre" del grupo. |
| ID\_GESTION\_ECONOMICA | Identificación SGE (sistema de gestión económico) |
| FECHA\_INICIO | Campo "fecha inicio" del grupo. |
| FECHA\_FIN | Campo "fecha fin" del grupo. |
| MODELO\_EJECUCION\_ID | Identificador único del modelo de ejecución asociado a la convocatoria de constitución del grupo. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJCUCION\_NOMBRE | Nombre del modelo de ejecución asociado a la solicitud de constitución del grupo. |
| TIPO\_FINALIDAD\_ID | Identificador único del tipo de finalidad asociado a la convocatoria de constitución del grupo. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | Nombre del tipo de finalidad asociado a la solicitud de constitución del grupo. |
| FECHA\_CONCESION | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear grupo" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el grupo tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| UNIDAD\_GESTION\_REF | Identificador único de la unidad de gestión asociada a la convocatoria de constitución del grupo. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | Nombre de la unidad de gestión asociada a la solicitud de constitución del grupo. |

Ver diseño en [SGI \- Vistas Timesheet\#TS\_GRUPO\_JUSTIFICABLE](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_GRUPO_JUSTIFICABLE "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_GRUPO_JUSTIFICABLE")

## TS\_GRUPO\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de los grupos del SGI que cumplen las siguientes condiciones:

* activos
* fecha fin no tiene o mayor al año 2013
* con identificador SGE

Por cada grupo se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* fecha de inicio de la participación en el equipo
* fecha de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| GRUPO\_ID | Identificador del grupo. |
| PERSONA\_REF | Identificador de la persona en el sistema de personas de la Universidad |
| FECHA\_INICIO | Fecha de inicio de la participación en el equipo. |
| FECHA\_FIN | Fecha de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | Si el rol es un rol principal o no. |
| ORDEN | En caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO |

Ver diseño en [SGI \- Vistas Timesheet\#TS\_GRUPO\_EQUIPO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_GRUPO_EQUIPO "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-timesheet.md#SGIVistasTimesheet-TS_GRUPO_EQUIPO")

  





